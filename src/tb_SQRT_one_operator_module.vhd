library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.NUMERIC_STD.all;

library std;
use std.textio.all;

entity tb_SQRT_one_operator_module is
end entity;

architecture rtl_sim of tb_SQRT_one_operator_module is
    constant N                : natural   := 32;
    constant HANDSHAKE_ENABLE : boolean   := false;
    constant RST_ON           : STD_LOGIC := '0';

    constant CLK_PERIOD        : time := 10 ns;
    constant RST_HOLD_DURATION : time := 100 ns;
    signal X                   : STD_LOGIC_VECTOR(2*N-1 downto 0);
    signal start               : STD_LOGIC;
    signal clk                 : STD_LOGIC;
    signal rst                 : STD_LOGIC;
    signal result              : STD_LOGIC_VECTOR(N-1 downto 0);
    signal done                : STD_LOGIC;
    constant DEUX              : STD_LOGIC_vector(N-1 downto 0) := (1 => '1',others => '0');
    constant QUATRE            : STD_LOGIC_vector(N-1 downto 0) := (2 => '1',others => '0');
begin

    stimuli_p : process is
    begin
        wait until rst='1';
        wait until rising_edge(CLK);
        wait until rising_edge(CLK);
        wait until rising_edge(CLK);
        X     <= (2 => '1',others => '0');
        start <= '1';
        wait until rising_edge(CLK);
        start <= '0';
        wait until done='1';
        assert (result=DEUX) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        X     <= (4 => '1',others => '0');
        start <= '1';
        wait until rising_edge(CLK);
        start <= '0';
        wait until done='1';
        assert result=QUATRE report "erreur" severity FAILURE;
        report "fini" severity FAILURE;

    end process;

    SQRT_module_inst : entity work.SQRT_one_operator
        generic map (
            N                => N,
            HANDSHAKE_ENABLE => HANDSHAKE_ENABLE,
            RST_ON           => RST_ON
        )
        port map (
            X      => X,
            start  => start,
            clk    => clk,
            rst    => rst,
            result => result,
            done   => done
        );

    clock_p : process is
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    reset_p : process is
    begin
        rst <= '0';
        wait for RST_HOLD_DURATION;
        wait until rising_edge(clk);
        rst <= '1';
        wait;
    end process;
end architecture;