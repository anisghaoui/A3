library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decounter is
	generic(nb_bits : natural ;   -- width of the decounter
		nb_iter : natural );      -- number of iterations to be performed
	port( Init : in STD_LOGIC;    -- Initialization command for the decounter; active on '1'
		encount : in  STD_LOGIC;  -- enable input for the decounter; active on '1'
		clk     : in  STD_LOGIC;  -- clock
		ceqz    : out STD_LOGIC); -- output indicating if decounter=0 when it is at '1'
end decounter;

architecture proced of decounter is
	signal Sint    : unsigned(nb_bits-1 downto 0);
	signal ceqzint : std_logic;
begin

	Ps : process(clk, Init) -- process to compute the decounter's value
	begin
		if (Init = '1') then
			Sint <= TO_UNSIGNED(nb_iter-1,nb_bits); -- use of a conversion function from numeric_std library
		elsif (clk'event and (clk = '1') and (encount = '1')) then
			Sint <= Sint - 1;
		end if;
	end process;

	Pc : process(Sint) -- combinatorial process to compute the ceqz output value
	begin
		if Sint > 0 then
			ceqzint <= '0';
		else
			ceqzint <= '1';
		end if;
	end process;

	ceqz <= ceqzint;

end proced;