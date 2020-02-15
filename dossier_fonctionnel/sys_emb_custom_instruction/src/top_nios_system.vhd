
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity top_nios_system is

-------------------------------------------------------------------------------
--							 Port Declarations							 --
-------------------------------------------------------------------------------
port (
	-- Inputs
	CLOCK_50			: in std_logic;
	KEY				  	: in std_logic_vector (3 downto 0);
	SW				   	: in std_logic_vector (9 downto 0);

	--  Communication
	UART_RXD			: in std_logic;

	-- Bidirectionals
	GPIO_0				: inout std_logic_vector (31 downto 0);
	GPIO_1				: inout std_logic_vector (31 downto 0);

	--  Memory (SRAM)
	SRAM_DQ				: inout std_logic_vector (15 downto 0);
		
	-- Memory (SDRAM)
	DRAM_DQ				: inout std_logic_vector (15 downto 0);

	-- Outputs
	--  Simple
	LEDG				: out std_logic_vector (7 downto 0);
	LEDR				: out std_logic_vector (9 downto 0);

	HEX0				: out std_logic_vector (7 downto 0);
	HEX1				: out std_logic_vector (7 downto 0);
	HEX2				: out std_logic_vector (7 downto 0);
	HEX3				: out std_logic_vector (7 downto 0);
	
	--  Memory (SRAM)
	SRAM_ADDR			: out std_logic_vector (17 downto 0);
	SRAM_CE_N			: out std_logic;
	SRAM_LB_N			: out std_logic;
	SRAM_UB_N			: out std_logic;
	SRAM_OE_N			: out std_logic;
	SRAM_WE_N			: out std_logic;

	--  Communication
	UART_TXD			: out std_logic;
	
	-- Memory (SDRAM)
	DRAM_ADDR			: out std_logic_vector (11 downto 0);
	DRAM_BA_1			: buffer std_logic;
	DRAM_BA_0			: buffer std_logic;
	DRAM_CAS_N			: out std_logic;
	DRAM_RAS_N			: out std_logic;
	DRAM_CLK			: out std_logic;
	DRAM_CKE			: out std_logic;
	DRAM_CS_N			: out std_logic;
	DRAM_WE_N			: out std_logic;
	DRAM_UDQM			: buffer std_logic;
	DRAM_LDQM			: buffer std_logic

	);
end top_nios_system;


architecture top_nios_system_rtl of top_nios_system is

-------------------------------------------------------------------------------
--						   Subentity Declarations						  --
-------------------------------------------------------------------------------
    component nios_system is
        port (
            sram_DQ              : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
            sram_ADDR            : out   std_logic_vector(17 downto 0);                    -- ADDR
            sram_LB_N            : out   std_logic;                                        -- LB_N
            sram_UB_N            : out   std_logic;                                        -- UB_N
            sram_CE_N            : out   std_logic;                                        -- CE_N
            sram_OE_N            : out   std_logic;                                        -- OE_N
            sram_WE_N            : out   std_logic;                                        -- WE_N
            dram_addr            : out   std_logic_vector(11 downto 0);                    -- addr
            dram_ba              : out   std_logic_vector(1 downto 0);                     -- ba
            dram_cas_n           : out   std_logic;                                        -- cas_n
            dram_cke             : out   std_logic;                                        -- cke
            dram_cs_n            : out   std_logic;                                        -- cs_n
            dram_dq              : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
            dram_dqm             : out   std_logic_vector(1 downto 0);                     -- dqm
            dram_ras_n           : out   std_logic;                                        -- ras_n
            dram_we_n            : out   std_logic;                                        -- we_n
            sw_export            : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
            led_out_export       : out   std_logic_vector(9 downto 0);                     -- export
            reset_reset_n        : in    std_logic                     := 'X';             -- reset_n
            clk_clk              : in    std_logic                     := 'X'             -- clk
        );
    end component nios_system;
	
component sdram_pll
		port (
				 signal inclk0 : IN STD_LOGIC;
				 signal c0 : OUT STD_LOGIC;
				 signal c1 : OUT STD_LOGIC
			 );
end component;
	
component SQRT is
	generic(
		N                : natural   := 32;
		HANDSHAKE_ENABLE : boolean   := false ;
		RST_ON           : STD_LOGIC := '0' --active low
	);
	port (
		X     : in  STD_LOGIC_VECTOR(2*N-1 downto 0);
		start : in  STD_LOGIC;
		r_out : out STD_LOGIC_VECTOR(N-1 downto 0);
		done  : out STD_LOGIC;
		clk   : in  STD_LOGIC;
		rst   : in  STD_LOGIC
	);
end component;

-------------------------------------------------------------------------------
--						   Parameter Declarations						  --
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--				 Internal Wires and Registers Declarations				 --
-------------------------------------------------------------------------------
-- Internal Wires
-- Used to connect the Nios 2 system clock to the non-shifted output of the PLL
signal			 system_clock : STD_LOGIC;

signal sig_X : unsigned(31 downto 0);
signal sig_Res : unsigned(31 downto 0);
signal sig_fini, sig_debut, sig_reset : std_logic;
signal sig_X_conv : std_logic_vector(31 downto 0);
signal sig_Res_conv : std_logic_vector(31 downto 0);

-- Used to concatenate some SDRAM control signals

signal			 DRAM_BA	: STD_LOGIC_VECTOR(1 DOWNTO 0);
signal			 DRAM_DQM	: STD_LOGIC_VECTOR(1 DOWNTO 0);
signal sqrt_x_extern_export :  std_logic_vector(31 downto 0);                    -- export
signal sqrt_status_in_port  :     std_logic                     := 'X';             -- in_port
signal sqrt_status_out_port :    std_logic;                                        -- out_port
signal sqrt_result_export   :     std_logic_vector(31 downto 0) := (others => 'X');  -- export

-- Internal Registers

-- State Machine Registers

begin

-------------------------------------------------------------------------------
--						 Finite State Machine(s)						   --
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--							 Sequential Logic							  --
-------------------------------------------------------------------------------
	
-------------------------------------------------------------------------------
--							Combinational Logic							--
-------------------------------------------------------------------------------


DRAM_BA_1	<= DRAM_BA(1);
DRAM_BA_0	<= DRAM_BA(0);
DRAM_UDQM	<= DRAM_DQM(1);
DRAM_LDQM	<= DRAM_DQM(0);

-------------------------------------------------------------------------------
--							  Internal Modules							 --
-------------------------------------------------------------------------------
nios_system_inst : nios_system
    port map(
            clk_clk        => system_clock,        --    		clk.clk
            reset_reset_n  => KEY(0),			 -- 			reset.reset_n
            sram_DQ        => SRAM_DQ,        --   		sram.DQ
            sram_ADDR      => SRAM_ADDR,      --        .ADDR
            sram_LB_N      => SRAM_LB_N,      --        .LB_N
            sram_UB_N      => SRAM_UB_N,      --        .UB_N
            sram_CE_N      => SRAM_CE_N,      --        .CE_N
            sram_OE_N      => SRAM_OE_N,      --        .OE_N
            sram_WE_N      => SRAM_WE_N,      --        .WE_N
            dram_addr      => dram_addr,      --		  dram.addr
            dram_ba        => dram_ba,        --        .ba
            dram_cas_n     => dram_cas_n,     --        .cas_n
            dram_cke       => dram_cke,       --        .cke
            dram_cs_n      => dram_cs_n,      --        .cs_n
            dram_dq        => dram_dq,        --        .dq
            dram_dqm       => dram_dqm,       --        .dqm
            dram_ras_n     => dram_ras_n,     --        .ras_n
            dram_we_n      => dram_we_n,      --        .we_n
            sw_export      => SW(9 downto 0),      --      sw.export
            led_out_export => LEDR(9 downto 0)				 -- led_out.export
		  );

--	
neg_3ns : sdram_pll
	port map (
		inclk0									=> CLOCK_50,
		c0										=> DRAM_CLK,
		c1										=> system_clock
	);
	
	
--SQRt_result_export(31 downto 16)<=(others=>'0');
--
-- SQRT_MODULE : SQRT
--	  generic map (
--			N                => 16,
--			HANDSHAKE_ENABLE => false,
--			RST_ON           => '0'
--	  )
--	  port map (
--			X     => SQRt_x_extern_export,
--			start => SQRt_status_out_port,
--			r_out => SQRt_result_export(15 downto 0),
--			done  => SQRt_status_in_port,
--			clk   => system_clock,
--			rst   => KEY(0)
--	  );

end top_nios_system_rtl;

