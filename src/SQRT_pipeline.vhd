library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SQRT_pipeline is
	generic(
		N                : natural   := 32;
		HANDSHAKE_ENABLE : boolean   := false ;
		RST_ON           : STD_LOGIC := '0'; --active low
		energy_saver     : boolean   := TRUE
	);
	port (
		X     : in  STD_LOGIC_VECTOR(2*N-1 downto 0);
		start : in  STD_LOGIC;
		r_out : out STD_LOGIC_VECTOR(N-1 downto 0);
		done  : out STD_LOGIC;
		clk   : in  STD_LOGIC;
		rst   : in  STD_LOGIC
	);
end entity;

architecture rtl of SQRT_pipeline is
	constant ZERO  : UNSIGNED(2*N-1 downto 0) := (others => '0');
	constant V_INI : UNSIGNED(2*N-1 downto 0) := (2*N-2  => '1',others => '0');
	subtype reg_type is UNSIGNED(2*N-1 downto 0 );
	type reg_pipeline is array(N-1 downto 0) of reg_type;
	signal R_X,R_V,R_Z : reg_pipeline := (others => (others => '0'));
	signal validity    : STD_LOGIC_VECTOR(N-1 downto 0);
begin
	process(clk,rst)
		variable temp_Z : UNSIGNED(2*N-1 downto 0);
		variable temp_X : UNSIGNED(2*N-1 downto 0);
		variable temp_V : UNSIGNED(2*N-1 downto 0);
	begin
		if rst= RST_ON then
			R_V(0) <= ZERO;
			R_Z(0) <= ZERO;
			R_X(0) <= ZERO;
		else
			if rising_edge(CLK) then
				temp_Z := Zero;
				temp_X := UNSIGNED(X);
				temp_V := V_INI;
				--start of algorithm
				temp_Z := temp_Z + temp_v;
				if(SIGNED(temp_X-temp_Z)>=0) then
					temp_X := temp_X-temp_Z;
					temp_Z := temp_Z+temp_V;
				else
					temp_Z := temp_Z-temp_V;
				end if;
				temp_Z := SHIFT_RIGHT(temp_Z,1);
				temp_V := SHIFT_RIGHT(temp_V,2);
				--end of algorithm
				if(not energy_saver or start='1') then
					R_Z(0) <= temp_Z;
					R_X(0) <= temp_X;
					R_V(0) <= temp_V;
				end if;
				validity(0) <= start;
			end if;
		end if;
	end process;

	pipe : for I in N-1 downto 1 generate
		process(clk,rst)
			variable temp_Z : UNSIGNED(2*N-1 downto 0);
			variable temp_X : UNSIGNED(2*N-1 downto 0);
			variable temp_V : UNSIGNED(2*N-1 downto 0);
		begin
			if rst= RST_ON then
				R_V(I) <= ZERO;
				R_Z(I) <= ZERO;
				R_X(I) <= ZERO;
			else
				if rising_edge(CLK) then
					temp_Z := R_Z(I-1);
					temp_X := R_X(I-1);
					temp_V := R_V(I-1);
					--start of algorithm
					temp_Z := temp_Z + temp_v;
					if(SIGNED(temp_X-temp_Z)>=0) then
						temp_X := temp_X-temp_Z;
						temp_Z := temp_Z+temp_V;
					else
						temp_Z := temp_Z-temp_V;
					end if;
					temp_Z := SHIFT_RIGHT(temp_Z,1);
					temp_V := SHIFT_RIGHT(temp_V,2);
					--end of algorithm
					if(not energy_saver or validity(I-1)='1') then
						R_Z(I) <= temp_Z;
						R_X(I) <= temp_X;
						R_V(I) <= temp_V;
					end if;
					validity(I) <= validity(I-1);
				end if;
			end if;
		end process;
		r_out <= std_logic_vector(R_Z(N-1)(N-1 downto 0));
		done  <= validity(N-1);
	end generate;

end architecture;