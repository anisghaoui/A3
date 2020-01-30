library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;

library std;
use std.textio.all;

entity tb_SQRT_pipeline is
end entity;

architecture rtl_sim of tb_SQRT_pipeline is
    constant N                : natural   := 32;
    constant HANDSHAKE_ENABLE : boolean   := false;
    constant RST_ON           : STD_LOGIC := '0';

    constant CLK_PERIOD        : time := 10 ns;
    constant RST_HOLD_DURATION : time := 100 ns;
    signal X                   : STD_LOGIC_VECTOR(2 * N - 1 downto 0);
    signal start               : STD_LOGIC;
    signal r_out               : STD_LOGIC_VECTOR(N - 1 downto 0);
    signal done                : STD_LOGIC;
    signal clk                 : STD_LOGIC;
    signal rst                 : STD_LOGIC;
    constant DEUX              : STD_LOGIC_VECTOR(N-1 downto 0) := (1 => '1',others => '0');
    constant QUATRE            : STD_LOGIC_VECTOR(N-1 downto 0) := (2 => '1',others => '0');
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
        assert (r_out=DEUX) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        X     <= (4 => '1',others => '0');
        start <= '1';
        wait until rising_edge(CLK);
        start <= '0';
        wait until done='1';
        assert r_out=QUATRE report "erreur" severity FAILURE;
        start <= '1';
        X     <= STD_LOGIC_VECTOR(TO_UNSIGNED(64,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(49,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(36,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(100,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(81,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(23*23,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(24*24,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(25*25,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(15*15,2*N));
        wait until rising_edge(CLK);
        X <= STD_LOGIC_VECTOR(TO_UNSIGNED(200*200,2*N));
        wait until rising_edge(CLK);
        start <= '0';
        wait until rising_edge(CLK);
        wait until done='1';
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(8,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(7,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(6,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(10,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(9,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(23,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(24,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(25,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(15,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        assert (r_out=STD_LOGIC_VECTOR(TO_UNSIGNED(200,N))) report "erreur" severity FAILURE;
        wait until rising_edge(CLK);
        wait for 1 ps;
        report "fini" severity FAILURE;
        wait;
    end process;

    SQRT_pipeline_inst : entity work.SQRT_pipeline
        generic map (
            N                => N,
            HANDSHAKE_ENABLE => HANDSHAKE_ENABLE,
            RST_ON           => RST_ON,
            energy_saver     => TRUE
        )
        port map (
            X     => X,
            start => start,
            r_out => r_out,
            done  => done,
            clk   => clk,
            rst   => rst
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