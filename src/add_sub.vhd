library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add_sub is
	generic(nb_bits : natural := 16);
	port( A,B : in STD_LOGIC_VECTOR(nb_bits-1 downto 0);
		Op   : in  STD_LOGIC;                            -- operation choice: '0' --> addition, '1' subtraction
		S    : out STD_LOGIC_VECTOR(nb_bits-1 downto 0); -- result
		Cout : out STD_LOGIC);                           -- carry out
end add_sub;

architecture proced of add_sub is
	signal Aint, Bint : unsigned(nb_bits downto 0); -- we add one bit to make error free computations
	signal Sint       : unsigned(nb_bits downto 0);
begin

	Aint(nb_bits-1 downto 0) <= unsigned(A);
	Aint(nb_bits)            <= '0';
	Bint(nb_bits-1 downto 0) <= unsigned(B);
	Bint(nb_bits)            <= '0';

	process(Op, Aint, Bint)
	begin
		if (Op = '0') then
			Sint <= Aint + Bint;
		else
			Sint <= Aint - Bint;
		end if;
	end process;

	S    <= std_logic_vector(Sint(nb_bits-1 downto 0));
	Cout <= Sint(nb_bits);

end proced;