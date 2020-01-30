library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity SQRT_5_states is
	generic (
		n                : natural   := 32;
		HANDSHAKE_ENABLE : boolean   := false ;
		RST_ON           : STD_LOGIC := '0' --active low
	);

	port (
		X               : in  std_logic_vector (2*n-1 downto 0);
		start, rst, clk : in  std_logic;
		done            : out std_logic;
		result          : out std_logic_vector(n-1 downto 0)
	);
end entity SQRT_5_states;

architecture rtl of SQRT_5_states is
	type state is (wait_state, init_state, iter_state, end_state);
	signal current_state : state := wait_state;
	signal RX,RZ,RV      : UNSIGNED (2*n-1 downto 0);
	signal i             : natural range n downto 0;
	constant ZERO        : UNSIGNED (2*n-1 downto 0) := (others => '0');
	constant V_INIT      : UNSIGNED(2*N-1 downto 0)  := (2*N-2  => '1',others => '0');

begin
	p1 : process (clk, rst)
		variable RZ_h : UNSIGNED (2*n-1 downto 0);
	begin
		if (rst = '0') then
			current_state <= wait_state;
			RX            <= UNSIGNED(X);
			result        <= (others => 'Z');
			RZ            <= ZERO;
			i             <= 0;
			done          <= '0';

		elsif (rising_edge(clk)) then
			case (current_state) is
				when wait_state =>
					if (start = '1') then
						current_state <= init_state;
					end if;

				when init_state =>
					i             <= n;
					RX            <= UNSIGNED(X);
					current_state <= iter_state;
					RV            <= V_INIT;
					RZ            <= ZERO;
					RZ_h          := ZERO;
					done          <= '0';
					result        <= (others => 'Z');

				when iter_state =>
					RZ_h := RZ + RV;
					if (RX >= RZ_h) then
						RX   <= RX - RZ_h;
						RZ_h := RZ_h + RV;
					else
						RZ_h := RZ_h - RV;
					end if;
					RZ <= RZ_h/2;
					RV <= RV/4;
					i  <= i - 1;
					if (i > 1) then
						current_state <= iter_state;
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