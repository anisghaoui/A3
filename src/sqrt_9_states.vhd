library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity sqrt_9_states is
	generic (
		n                : natural   := 32;
		HANDSHAKE_ENABLE : boolean   := false ;
		RST_ON           : STD_LOGIC := '0' --active low
	);

	port (
		X               : in  std_logic_vector (2*n-1 downto 0);
		start, rst, clk : in  std_logic;
		done            : out std_logic;
		result          : out std_logic_vector (n-1 downto 0)
	);
end entity sqrt_9_states;

architecture rtl of sqrt_9_states is
	type state is (wait_state, init_state, iter_1, iter_2, iter_3, iter_3_bis, iter_4, iter_5, end_state);
	signal current_state : state := wait_state;
	signal RX,RZ,RV      : UNSIGNED (2*n-1 downto 0);
	signal i             : natural range n downto 0;
	constant ZERO        : UNSIGNED(2*N-1 downto 0) := (others => '0');
	constant V_INIT      : UNSIGNED(2*N-1 downto 0) := (2*N-2  => '1',others => '0');

begin
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
					i      <= n;
					RX     <= UNSIGNED(X);
					RV     <= V_INIT;
					RZ     <= ZERO;
					done   <= '0';
					result <= (others => 'Z');
					current_state <= iter_1;

				when iter_1 =>
					RZ            <= RZ+RV;
					current_state <= iter_2;

				when iter_2 =>
					comparison_result := RX-RZ;
					if SIGNED(comparison_result)>=0 then -- X>=Z
						current_state <= iter_3;
					else
						current_state <= iter_3_bis;
					end if;

				when iter_3_bis =>
					RZ            <= RZ - RV;
					current_state <= iter_5;

				when iter_3 =>
					RX            <= RX - RZ;
					current_state <= iter_4;

				when iter_4 =>
					RZ            <= RZ + RV;
					current_state <= iter_5;

				when iter_5 =>
					RZ <= RZ/2;
					RV <= RV/4;
					i  <= i - 1;
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