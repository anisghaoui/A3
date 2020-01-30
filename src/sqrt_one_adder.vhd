library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity sqrt_one_adder is
	generic (
		n                : natural   := 32;
		HANDSHAKE_ENABLE : boolean   := false ;
		RST_ON           : std_logic := '0' --active low
	);

	port (
		X               : in  std_logic_vector (2*n-1 downto 0);
		start, rst, clk : in  std_logic;
		done            : out std_logic;
		result          : out std_logic_vector(n-1 downto 0)
	);
end entity sqrt_one_adder;

architecture rtl of sqrt_one_adder is
	type state is (wait_state, init_state, iter_1, iter_2, iter_3, iter_3_bis, iter_4, iter_5, end_state);
	signal current_state : state := wait_state;
	signal RX,RZ,RV      : UNSIGNED (2*n-1 downto 0);

	signal i        : natural range n downto 0;
	constant ZERO   : UNSIGNED(2*N-1 downto 0) := (others => '0');
	constant V_INIT : UNSIGNED(2*N-1 downto 0) := (2*N-2  => '1',others => '0');

	component add_sub is
		generic(nb_bits : natural := 2*n);

		port (
			A,B  : in  std_logic_vector(nb_bits-1 downto 0);
			Op   : in  STD_LOGIC;                            -- operation choice: '0' --> addition, '1' subtraction
			S    : out std_logic_vector(nb_bits-1 downto 0); -- result
			Cout : out STD_LOGIC                             -- carry out
		);
	end component add_sub;

	-- adder signals
	signal adder_operation, adder_carry_out : std_logic;
	signal adder_A, adder_B                 : UNSIGNED(2*n-1 downto 0);
	signal adder_result                     : std_logic_vector(2*n-1 downto 0);
begin
		ADDER : add_sub port map (
			A    => std_logic_vector(adder_A) ,
			B    => std_logic_vector(adder_B),
			Op   => adder_operation,
			S    => adder_result,
			Cout => adder_carry_out
		);

	p1 : process (clk,rst)
		variable comparison_result : UNSIGNED (2*n-1 downto 0);
	begin
		if (rst = '0') then
			current_state <= wait_state;
			RX            <= (others => 'Z');
			result        <= (others => 'Z');
			RZ            <= ZERO;
			i             <= n;

		elsif (rising_edge(clk)) then
			case (current_state) is
				when wait_state =>
					if (start = '1') then
						current_state <= init_state;
					else
						current_state <= wait_state;
					end if;

				when init_state =>
					i  <= n;
					RX <= unsigned(X);

					-- position the adder inputs
					adder_operation <= '0'; -- RZ + RV
					adder_A         <= ZERO;
					adder_B         <= V_INIT;
					RZ              <= ZERO;
					RV              <= V_INIT;
					---
					done          <= '0';
					result        <= (others => 'Z');
					current_state <= iter_1;

				when iter_1 =>
					adder_operation <= '1'; -- RX - RZ
					adder_A         <= RX;
					adder_B         <= UNSIGNED(adder_result); -- RZ
					RZ              <= UNSIGNED(adder_result); -- will be needed later
					current_state   <= iter_2;

				when iter_2 =>
					if adder_carry_out = '0' then -- X- Z >=0
						current_state <= iter_3;

						adder_operation <= '1'; --  RX - RZ
						adder_A         <= RX;
						adder_B         <= RZ;
					else
						current_state <= iter_5;

						adder_operation <= '1'; --  RZ - RV
						adder_A         <= RZ;
						adder_B         <= RV;
					end if;

				when iter_3 =>
					adder_operation <= '0'; --  RZ + RV
					adder_A         <= RZ;
					adder_B         <= RV;
					RX              <= UNSIGNED(adder_result);
					current_state   <= iter_5;

				when iter_5 =>
					RZ <= shift_right(UNSIGNED(adder_result),1);
					RV <= shift_right(RV,2);

					--prepare the next Z=Z+V
					adder_operation <= '0';
					adder_A         <= shift_right(UNSIGNED(adder_result),1);
					adder_B         <= shift_right(RV,2);
					i               <= i - 1;
					if (i > 1) then
						current_state <= iter_1;
					else
						current_state <= end_state;
					end if;

				when end_state =>
					result        <= std_logic_vector(RZ(n-1 downto 0));
					done          <= '1';
					current_state <= wait_state;

				when others =>
					current_state <= wait_state;
			end case;
		end if;
	end process;
end architecture rtl;