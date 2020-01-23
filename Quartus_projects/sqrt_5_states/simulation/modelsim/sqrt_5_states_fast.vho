-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/17/2020 11:36:57"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SQRT_5_states IS
    PORT (
	X : IN std_logic_vector(63 DOWNTO 0);
	start : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	done : OUT std_logic;
	result : OUT std_logic_vector(31 DOWNTO 0)
	);
END SQRT_5_states;

-- Design Ports Information
-- result[0]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[5]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[6]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[9]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[10]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[11]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[12]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[13]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[14]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[15]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[16]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[17]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[18]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[19]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[20]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[21]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[22]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[23]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[24]	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[25]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[26]	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[27]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[28]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[29]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[30]	=>  Location: PIN_L11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[31]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- done	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[63]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[62]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[61]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[60]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[59]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[58]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[57]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[56]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[55]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[54]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[53]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[52]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[51]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[50]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[49]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[48]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[47]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[46]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[45]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[44]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[43]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[42]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[41]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[40]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[39]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[38]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[37]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[36]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[35]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[34]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[33]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[32]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[31]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[30]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[29]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[28]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[27]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[26]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[25]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[24]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[23]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[22]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[21]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[20]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[19]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[18]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[17]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[16]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[15]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[14]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[13]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[12]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[11]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[10]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[9]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[8]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[7]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[6]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[5]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[4]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SQRT_5_states IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add2~64_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \Add1~94_combout\ : std_logic;
SIGNAL \Add1~96_combout\ : std_logic;
SIGNAL \Add1~106_combout\ : std_logic;
SIGNAL \Add1~114_combout\ : std_logic;
SIGNAL \Add1~116_combout\ : std_logic;
SIGNAL \Add1~120_combout\ : std_logic;
SIGNAL \Add1~123\ : std_logic;
SIGNAL \Add1~124_combout\ : std_logic;
SIGNAL \Add1~125\ : std_logic;
SIGNAL \Add1~126_combout\ : std_logic;
SIGNAL \Add3~66_combout\ : std_logic;
SIGNAL \Add3~68_combout\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \Add3~76_combout\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Add3~82_combout\ : std_logic;
SIGNAL \Add3~84_combout\ : std_logic;
SIGNAL \Add3~86_combout\ : std_logic;
SIGNAL \Add3~90_combout\ : std_logic;
SIGNAL \Add3~96_combout\ : std_logic;
SIGNAL \Add3~98_combout\ : std_logic;
SIGNAL \Add3~102_combout\ : std_logic;
SIGNAL \Add3~104_combout\ : std_logic;
SIGNAL \Add3~106_combout\ : std_logic;
SIGNAL \Add3~108_combout\ : std_logic;
SIGNAL \Add3~110_combout\ : std_logic;
SIGNAL \Add3~116_combout\ : std_logic;
SIGNAL \Add3~122_combout\ : std_logic;
SIGNAL \Add3~125\ : std_logic;
SIGNAL \Add3~126_combout\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~82_combout\ : std_logic;
SIGNAL \Add2~84_combout\ : std_logic;
SIGNAL \Add2~86_combout\ : std_logic;
SIGNAL \Add2~88_combout\ : std_logic;
SIGNAL \Add2~96_combout\ : std_logic;
SIGNAL \Add2~98_combout\ : std_logic;
SIGNAL \Add2~102_combout\ : std_logic;
SIGNAL \Add2~104_combout\ : std_logic;
SIGNAL \Add2~110_combout\ : std_logic;
SIGNAL \Add2~116_combout\ : std_logic;
SIGNAL \Add2~122_combout\ : std_logic;
SIGNAL \Add2~125\ : std_logic;
SIGNAL \Add2~126_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \RX[63]~_emulated_regout\ : std_logic;
SIGNAL \RX[63]~2_combout\ : std_logic;
SIGNAL \RX[62]~_emulated_regout\ : std_logic;
SIGNAL \RX[62]~6_combout\ : std_logic;
SIGNAL \RX[60]~_emulated_regout\ : std_logic;
SIGNAL \RX[58]~_emulated_regout\ : std_logic;
SIGNAL \RX[58]~22_combout\ : std_logic;
SIGNAL \RX[57]~_emulated_regout\ : std_logic;
SIGNAL \RX[57]~26_combout\ : std_logic;
SIGNAL \RX[53]~_emulated_regout\ : std_logic;
SIGNAL \RX[53]~42_combout\ : std_logic;
SIGNAL \RX[48]~_emulated_regout\ : std_logic;
SIGNAL \RX[47]~_emulated_regout\ : std_logic;
SIGNAL \RX[46]~_emulated_regout\ : std_logic;
SIGNAL \RX[46]~70_combout\ : std_logic;
SIGNAL \RX[45]~_emulated_regout\ : std_logic;
SIGNAL \RX[43]~_emulated_regout\ : std_logic;
SIGNAL \RX[43]~82_combout\ : std_logic;
SIGNAL \RX[42]~_emulated_regout\ : std_logic;
SIGNAL \RX[42]~86_combout\ : std_logic;
SIGNAL \RX[41]~_emulated_regout\ : std_logic;
SIGNAL \RX[41]~90_combout\ : std_logic;
SIGNAL \RX[39]~_emulated_regout\ : std_logic;
SIGNAL \RX[39]~98_combout\ : std_logic;
SIGNAL \RX[38]~_emulated_regout\ : std_logic;
SIGNAL \RX[38]~102_combout\ : std_logic;
SIGNAL \RX[36]~_emulated_regout\ : std_logic;
SIGNAL \RX[36]~110_combout\ : std_logic;
SIGNAL \RX[34]~_emulated_regout\ : std_logic;
SIGNAL \RX[31]~_emulated_regout\ : std_logic;
SIGNAL \RX[31]~130_combout\ : std_logic;
SIGNAL \RX[30]~_emulated_regout\ : std_logic;
SIGNAL \RX[30]~134_combout\ : std_logic;
SIGNAL \RX[28]~_emulated_regout\ : std_logic;
SIGNAL \RX[25]~_emulated_regout\ : std_logic;
SIGNAL \RX[25]~154_combout\ : std_logic;
SIGNAL \RX[24]~_emulated_regout\ : std_logic;
SIGNAL \RX[22]~_emulated_regout\ : std_logic;
SIGNAL \RX[22]~166_combout\ : std_logic;
SIGNAL \RX[21]~_emulated_regout\ : std_logic;
SIGNAL \RX[21]~170_combout\ : std_logic;
SIGNAL \RX[16]~_emulated_regout\ : std_logic;
SIGNAL \RX[15]~_emulated_regout\ : std_logic;
SIGNAL \RX[15]~194_combout\ : std_logic;
SIGNAL \RX[14]~_emulated_regout\ : std_logic;
SIGNAL \RX[14]~198_combout\ : std_logic;
SIGNAL \RX[12]~_emulated_regout\ : std_logic;
SIGNAL \RX[12]~206_combout\ : std_logic;
SIGNAL \RX[11]~_emulated_regout\ : std_logic;
SIGNAL \RX[11]~210_combout\ : std_logic;
SIGNAL \RX[10]~_emulated_regout\ : std_logic;
SIGNAL \RX[7]~_emulated_regout\ : std_logic;
SIGNAL \RX[7]~226_combout\ : std_logic;
SIGNAL \RX[6]~_emulated_regout\ : std_logic;
SIGNAL \RX[6]~230_combout\ : std_logic;
SIGNAL \RX[5]~_emulated_regout\ : std_logic;
SIGNAL \RX[4]~_emulated_regout\ : std_logic;
SIGNAL \RX[4]~238_combout\ : std_logic;
SIGNAL \RX[2]~_emulated_regout\ : std_logic;
SIGNAL \RX[0]~_emulated_regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \RX[63]~3_combout\ : std_logic;
SIGNAL \Selector136~2_combout\ : std_logic;
SIGNAL \Selector138~2_combout\ : std_logic;
SIGNAL \Selector141~2_combout\ : std_logic;
SIGNAL \Selector144~2_combout\ : std_logic;
SIGNAL \Selector147~2_combout\ : std_logic;
SIGNAL \Selector148~2_combout\ : std_logic;
SIGNAL \Selector150~2_combout\ : std_logic;
SIGNAL \Selector151~2_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector156~2_combout\ : std_logic;
SIGNAL \Selector157~2_combout\ : std_logic;
SIGNAL \Selector158~2_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Selector164~2_combout\ : std_logic;
SIGNAL \RX[62]~7_combout\ : std_logic;
SIGNAL \RX[60]~15_combout\ : std_logic;
SIGNAL \RX[58]~23_combout\ : std_logic;
SIGNAL \RX[57]~27_combout\ : std_logic;
SIGNAL \RX[53]~43_combout\ : std_logic;
SIGNAL \RX[48]~63_combout\ : std_logic;
SIGNAL \RX[47]~67_combout\ : std_logic;
SIGNAL \RX[46]~71_combout\ : std_logic;
SIGNAL \RX[45]~75_combout\ : std_logic;
SIGNAL \RX[43]~83_combout\ : std_logic;
SIGNAL \RX[42]~87_combout\ : std_logic;
SIGNAL \RX[41]~91_combout\ : std_logic;
SIGNAL \RX[39]~99_combout\ : std_logic;
SIGNAL \RX[38]~103_combout\ : std_logic;
SIGNAL \RX[36]~111_combout\ : std_logic;
SIGNAL \RX[34]~119_combout\ : std_logic;
SIGNAL \RX[31]~131_combout\ : std_logic;
SIGNAL \RX[30]~135_combout\ : std_logic;
SIGNAL \RX[28]~143_combout\ : std_logic;
SIGNAL \RX[25]~155_combout\ : std_logic;
SIGNAL \RX[24]~159_combout\ : std_logic;
SIGNAL \RX[22]~167_combout\ : std_logic;
SIGNAL \RX[21]~171_combout\ : std_logic;
SIGNAL \RX[16]~191_combout\ : std_logic;
SIGNAL \RX[15]~195_combout\ : std_logic;
SIGNAL \RX[14]~199_combout\ : std_logic;
SIGNAL \RX[12]~207_combout\ : std_logic;
SIGNAL \RX[11]~211_combout\ : std_logic;
SIGNAL \RX[10]~215_combout\ : std_logic;
SIGNAL \RX[7]~227_combout\ : std_logic;
SIGNAL \RX[6]~231_combout\ : std_logic;
SIGNAL \RX[5]~235_combout\ : std_logic;
SIGNAL \RX[4]~239_combout\ : std_logic;
SIGNAL \RX[2]~247_combout\ : std_logic;
SIGNAL \RX[0]~255_combout\ : std_logic;
SIGNAL \Selector136~3_combout\ : std_logic;
SIGNAL \Selector138~3_combout\ : std_logic;
SIGNAL \Selector141~3_combout\ : std_logic;
SIGNAL \Selector144~3_combout\ : std_logic;
SIGNAL \Selector147~3_combout\ : std_logic;
SIGNAL \Selector148~3_combout\ : std_logic;
SIGNAL \Selector150~3_combout\ : std_logic;
SIGNAL \Selector151~3_combout\ : std_logic;
SIGNAL \Selector156~3_combout\ : std_logic;
SIGNAL \Selector157~3_combout\ : std_logic;
SIGNAL \Selector158~3_combout\ : std_logic;
SIGNAL \Selector164~3_combout\ : std_logic;
SIGNAL \RX[63]~1_combout\ : std_logic;
SIGNAL \RX[62]~5_combout\ : std_logic;
SIGNAL \RX[59]~17_combout\ : std_logic;
SIGNAL \RX[58]~21_combout\ : std_logic;
SIGNAL \RX[57]~25_combout\ : std_logic;
SIGNAL \RX[55]~33_combout\ : std_logic;
SIGNAL \RX[53]~41_combout\ : std_logic;
SIGNAL \RX[46]~69_combout\ : std_logic;
SIGNAL \RX[43]~81_combout\ : std_logic;
SIGNAL \RX[42]~85_combout\ : std_logic;
SIGNAL \RX[41]~89_combout\ : std_logic;
SIGNAL \RX[39]~97_combout\ : std_logic;
SIGNAL \RX[38]~101_combout\ : std_logic;
SIGNAL \RX[37]~105_combout\ : std_logic;
SIGNAL \RX[36]~109_combout\ : std_logic;
SIGNAL \RX[31]~129_combout\ : std_logic;
SIGNAL \RX[30]~133_combout\ : std_logic;
SIGNAL \RX[25]~153_combout\ : std_logic;
SIGNAL \RX[22]~165_combout\ : std_logic;
SIGNAL \RX[21]~169_combout\ : std_logic;
SIGNAL \RX[15]~193_combout\ : std_logic;
SIGNAL \RX[14]~197_combout\ : std_logic;
SIGNAL \RX[13]~201_combout\ : std_logic;
SIGNAL \RX[12]~205_combout\ : std_logic;
SIGNAL \RX[11]~209_combout\ : std_logic;
SIGNAL \RX[7]~225_combout\ : std_logic;
SIGNAL \RX[6]~229_combout\ : std_logic;
SIGNAL \RX[4]~237_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \current_state.wait_state~regout\ : std_logic;
SIGNAL \current_state~12_combout\ : std_logic;
SIGNAL \current_state.init_state~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.end_state~regout\ : std_logic;
SIGNAL \RX~258_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.iter_state~regout\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Add0~124_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Add2~106_combout\ : std_logic;
SIGNAL \Selector146~2_combout\ : std_logic;
SIGNAL \Selector146~3_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Add3~88_combout\ : std_logic;
SIGNAL \Selector155~2_combout\ : std_logic;
SIGNAL \Selector155~3_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector193~0_combout\ : std_logic;
SIGNAL \Selector193~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector190~0_combout\ : std_logic;
SIGNAL \Selector190~1_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Selector191~0_combout\ : std_logic;
SIGNAL \Selector191~1_combout\ : std_logic;
SIGNAL \Selector192~0_combout\ : std_logic;
SIGNAL \Selector192~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~3_cout\ : std_logic;
SIGNAL \Add3~5_cout\ : std_logic;
SIGNAL \Add3~7_cout\ : std_logic;
SIGNAL \Add3~9_cout\ : std_logic;
SIGNAL \Add3~11_cout\ : std_logic;
SIGNAL \Add3~13_cout\ : std_logic;
SIGNAL \Add3~15_cout\ : std_logic;
SIGNAL \Add3~17_cout\ : std_logic;
SIGNAL \Add3~19_cout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Selector189~0_combout\ : std_logic;
SIGNAL \Selector189~1_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector187~0_combout\ : std_logic;
SIGNAL \Selector187~1_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Selector183~0_combout\ : std_logic;
SIGNAL \Selector183~1_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Selector181~0_combout\ : std_logic;
SIGNAL \Selector181~1_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Selector179~0_combout\ : std_logic;
SIGNAL \Selector179~1_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Selector178~0_combout\ : std_logic;
SIGNAL \Selector178~1_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Selector176~0_combout\ : std_logic;
SIGNAL \Selector176~1_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Selector175~0_combout\ : std_logic;
SIGNAL \Selector175~1_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Selector173~0_combout\ : std_logic;
SIGNAL \Selector173~1_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Selector171~0_combout\ : std_logic;
SIGNAL \Selector171~1_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Selector170~0_combout\ : std_logic;
SIGNAL \Selector170~1_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Selector169~0_combout\ : std_logic;
SIGNAL \Selector169~1_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Selector168~2_combout\ : std_logic;
SIGNAL \Selector168~3_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~63\ : std_logic;
SIGNAL \Add2~65\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~68_combout\ : std_logic;
SIGNAL \Selector165~2_combout\ : std_logic;
SIGNAL \Selector165~3_combout\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL \Selector166~2_combout\ : std_logic;
SIGNAL \Selector166~3_combout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add3~63\ : std_logic;
SIGNAL \Add3~65\ : std_logic;
SIGNAL \Add3~67\ : std_logic;
SIGNAL \Add3~69\ : std_logic;
SIGNAL \Add3~71\ : std_logic;
SIGNAL \Add3~72_combout\ : std_logic;
SIGNAL \Add2~69\ : std_logic;
SIGNAL \Add2~71\ : std_logic;
SIGNAL \Add2~72_combout\ : std_logic;
SIGNAL \Selector163~2_combout\ : std_logic;
SIGNAL \Selector163~3_combout\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add3~73\ : std_logic;
SIGNAL \Add3~74_combout\ : std_logic;
SIGNAL \Add2~73\ : std_logic;
SIGNAL \Add2~74_combout\ : std_logic;
SIGNAL \Selector162~2_combout\ : std_logic;
SIGNAL \Selector162~3_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add2~75\ : std_logic;
SIGNAL \Add2~76_combout\ : std_logic;
SIGNAL \Selector161~2_combout\ : std_logic;
SIGNAL \Selector161~3_combout\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add2~77\ : std_logic;
SIGNAL \Add2~78_combout\ : std_logic;
SIGNAL \Add3~75\ : std_logic;
SIGNAL \Add3~77\ : std_logic;
SIGNAL \Add3~78_combout\ : std_logic;
SIGNAL \Selector160~2_combout\ : std_logic;
SIGNAL \Selector160~3_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add2~79\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Selector159~2_combout\ : std_logic;
SIGNAL \Selector159~3_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add3~79\ : std_logic;
SIGNAL \Add3~81\ : std_logic;
SIGNAL \Add3~83\ : std_logic;
SIGNAL \Add3~85\ : std_logic;
SIGNAL \Add3~87\ : std_logic;
SIGNAL \Add3~89\ : std_logic;
SIGNAL \Add3~91\ : std_logic;
SIGNAL \Add3~92_combout\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Selector154~2_combout\ : std_logic;
SIGNAL \Selector154~3_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add2~81\ : std_logic;
SIGNAL \Add2~83\ : std_logic;
SIGNAL \Add2~85\ : std_logic;
SIGNAL \Add2~87\ : std_logic;
SIGNAL \Add2~89\ : std_logic;
SIGNAL \Add2~91\ : std_logic;
SIGNAL \Add2~92_combout\ : std_logic;
SIGNAL \Selector153~2_combout\ : std_logic;
SIGNAL \Selector153~3_combout\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add3~93\ : std_logic;
SIGNAL \Add3~94_combout\ : std_logic;
SIGNAL \Add2~93\ : std_logic;
SIGNAL \Add2~94_combout\ : std_logic;
SIGNAL \Selector152~2_combout\ : std_logic;
SIGNAL \Selector152~3_combout\ : std_logic;
SIGNAL \Add0~93\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add2~95\ : std_logic;
SIGNAL \Add2~97\ : std_logic;
SIGNAL \Add2~99\ : std_logic;
SIGNAL \Add2~100_combout\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add3~95\ : std_logic;
SIGNAL \Add3~97\ : std_logic;
SIGNAL \Add3~99\ : std_logic;
SIGNAL \Add3~100_combout\ : std_logic;
SIGNAL \Selector149~2_combout\ : std_logic;
SIGNAL \Selector149~3_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~101\ : std_logic;
SIGNAL \Add0~103\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \Add2~101\ : std_logic;
SIGNAL \Add2~103\ : std_logic;
SIGNAL \Add2~105\ : std_logic;
SIGNAL \Add2~107\ : std_logic;
SIGNAL \Add2~108_combout\ : std_logic;
SIGNAL \Selector145~2_combout\ : std_logic;
SIGNAL \Selector145~3_combout\ : std_logic;
SIGNAL \Add0~105\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~109\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add3~101\ : std_logic;
SIGNAL \Add3~103\ : std_logic;
SIGNAL \Add3~105\ : std_logic;
SIGNAL \Add3~107\ : std_logic;
SIGNAL \Add3~109\ : std_logic;
SIGNAL \Add3~111\ : std_logic;
SIGNAL \Add3~112_combout\ : std_logic;
SIGNAL \Add2~109\ : std_logic;
SIGNAL \Add2~111\ : std_logic;
SIGNAL \Add2~112_combout\ : std_logic;
SIGNAL \Selector143~2_combout\ : std_logic;
SIGNAL \Selector143~3_combout\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~112_combout\ : std_logic;
SIGNAL \Add3~113\ : std_logic;
SIGNAL \Add3~114_combout\ : std_logic;
SIGNAL \Add2~113\ : std_logic;
SIGNAL \Add2~114_combout\ : std_logic;
SIGNAL \Selector142~2_combout\ : std_logic;
SIGNAL \Selector142~3_combout\ : std_logic;
SIGNAL \Add0~113\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~116_combout\ : std_logic;
SIGNAL \Add3~115\ : std_logic;
SIGNAL \Add3~117\ : std_logic;
SIGNAL \Add3~118_combout\ : std_logic;
SIGNAL \Add2~115\ : std_logic;
SIGNAL \Add2~117\ : std_logic;
SIGNAL \Add2~118_combout\ : std_logic;
SIGNAL \Selector140~2_combout\ : std_logic;
SIGNAL \Selector140~3_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~118_combout\ : std_logic;
SIGNAL \Add3~119\ : std_logic;
SIGNAL \Add3~120_combout\ : std_logic;
SIGNAL \Add2~119\ : std_logic;
SIGNAL \Add2~120_combout\ : std_logic;
SIGNAL \Selector139~2_combout\ : std_logic;
SIGNAL \Selector139~3_combout\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add2~121\ : std_logic;
SIGNAL \Add2~123\ : std_logic;
SIGNAL \Add2~124_combout\ : std_logic;
SIGNAL \Add3~121\ : std_logic;
SIGNAL \Add3~123\ : std_logic;
SIGNAL \Add3~124_combout\ : std_logic;
SIGNAL \Selector137~2_combout\ : std_logic;
SIGNAL \Selector137~3_combout\ : std_logic;
SIGNAL \Add0~121\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~125\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \RX[61]~9_combout\ : std_logic;
SIGNAL \Add0~122_combout\ : std_logic;
SIGNAL \RX[60]~13_combout\ : std_logic;
SIGNAL \RX[60]~14_combout\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \RX[50]~53_combout\ : std_logic;
SIGNAL \RX[49]~57_combout\ : std_logic;
SIGNAL \RX[48]~61_combout\ : std_logic;
SIGNAL \RX[48]~62_combout\ : std_logic;
SIGNAL \RX[47]~65_combout\ : std_logic;
SIGNAL \RX[47]~66_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \RX[34]~117_combout\ : std_logic;
SIGNAL \RX[34]~118_combout\ : std_logic;
SIGNAL \RX[29]~137_combout\ : std_logic;
SIGNAL \RX[28]~141_combout\ : std_logic;
SIGNAL \RX[28]~142_combout\ : std_logic;
SIGNAL \RX[27]~145_combout\ : std_logic;
SIGNAL \RX[27]~147_combout\ : std_logic;
SIGNAL \RX[60]~259_combout\ : std_logic;
SIGNAL \RX[27]~_emulated_regout\ : std_logic;
SIGNAL \RX[27]~146_combout\ : std_logic;
SIGNAL \RX[26]~149_combout\ : std_logic;
SIGNAL \RX[24]~157_combout\ : std_logic;
SIGNAL \RX[24]~158_combout\ : std_logic;
SIGNAL \RX[20]~173_combout\ : std_logic;
SIGNAL \RX[20]~175_combout\ : std_logic;
SIGNAL \RX[20]~_emulated_regout\ : std_logic;
SIGNAL \RX[20]~174_combout\ : std_logic;
SIGNAL \RX[19]~177_combout\ : std_logic;
SIGNAL \RX[18]~181_combout\ : std_logic;
SIGNAL \RX[18]~183_combout\ : std_logic;
SIGNAL \RX[18]~_emulated_regout\ : std_logic;
SIGNAL \RX[18]~182_combout\ : std_logic;
SIGNAL \RX[16]~189_combout\ : std_logic;
SIGNAL \RX[16]~190_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \RX[5]~233_combout\ : std_logic;
SIGNAL \RX[5]~234_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \RX[1]~249_combout\ : std_logic;
SIGNAL \RX[0]~253_combout\ : std_logic;
SIGNAL \RX[0]~254_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \RX[1]~251_combout\ : std_logic;
SIGNAL \RX[1]~_emulated_regout\ : std_logic;
SIGNAL \RX[1]~250_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \RX[9]~219_combout\ : std_logic;
SIGNAL \RX[9]~_emulated_regout\ : std_logic;
SIGNAL \RX[9]~217_combout\ : std_logic;
SIGNAL \RX[9]~218_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \RX[19]~179_combout\ : std_logic;
SIGNAL \RX[19]~_emulated_regout\ : std_logic;
SIGNAL \RX[19]~178_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \RX[23]~161_combout\ : std_logic;
SIGNAL \RX[23]~163_combout\ : std_logic;
SIGNAL \RX[23]~_emulated_regout\ : std_logic;
SIGNAL \RX[23]~162_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \RX[26]~151_combout\ : std_logic;
SIGNAL \RX[26]~_emulated_regout\ : std_logic;
SIGNAL \RX[26]~150_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \RX[29]~139_combout\ : std_logic;
SIGNAL \RX[29]~_emulated_regout\ : std_logic;
SIGNAL \RX[29]~138_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \RX[32]~125_combout\ : std_logic;
SIGNAL \RX[32]~127_combout\ : std_logic;
SIGNAL \RX[32]~_emulated_regout\ : std_logic;
SIGNAL \RX[32]~126_combout\ : std_logic;
SIGNAL \Add1~65\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~69\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \RX[35]~115_combout\ : std_logic;
SIGNAL \RX[35]~_emulated_regout\ : std_logic;
SIGNAL \RX[35]~113_combout\ : std_logic;
SIGNAL \RX[35]~114_combout\ : std_logic;
SIGNAL \Add1~71\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \RX[37]~107_combout\ : std_logic;
SIGNAL \RX[37]~_emulated_regout\ : std_logic;
SIGNAL \RX[37]~106_combout\ : std_logic;
SIGNAL \Add1~75\ : std_logic;
SIGNAL \Add1~77\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~81\ : std_logic;
SIGNAL \Add1~83\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~88_combout\ : std_logic;
SIGNAL \RX[44]~77_combout\ : std_logic;
SIGNAL \RX[44]~79_combout\ : std_logic;
SIGNAL \RX[44]~_emulated_regout\ : std_logic;
SIGNAL \RX[44]~78_combout\ : std_logic;
SIGNAL \Add1~89\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~93\ : std_logic;
SIGNAL \Add1~95\ : std_logic;
SIGNAL \Add1~97\ : std_logic;
SIGNAL \Add1~98_combout\ : std_logic;
SIGNAL \RX[49]~59_combout\ : std_logic;
SIGNAL \RX[49]~_emulated_regout\ : std_logic;
SIGNAL \RX[49]~58_combout\ : std_logic;
SIGNAL \Add1~99\ : std_logic;
SIGNAL \Add1~100_combout\ : std_logic;
SIGNAL \RX[50]~55_combout\ : std_logic;
SIGNAL \RX[50]~_emulated_regout\ : std_logic;
SIGNAL \RX[50]~54_combout\ : std_logic;
SIGNAL \Add1~101\ : std_logic;
SIGNAL \Add1~103\ : std_logic;
SIGNAL \Add1~104_combout\ : std_logic;
SIGNAL \RX[52]~47_combout\ : std_logic;
SIGNAL \RX[52]~_emulated_regout\ : std_logic;
SIGNAL \RX[52]~45_combout\ : std_logic;
SIGNAL \RX[52]~46_combout\ : std_logic;
SIGNAL \Add1~105\ : std_logic;
SIGNAL \Add1~107\ : std_logic;
SIGNAL \Add1~108_combout\ : std_logic;
SIGNAL \RX[54]~37_combout\ : std_logic;
SIGNAL \RX[54]~39_combout\ : std_logic;
SIGNAL \RX[54]~_emulated_regout\ : std_logic;
SIGNAL \RX[54]~38_combout\ : std_logic;
SIGNAL \Add1~109\ : std_logic;
SIGNAL \Add1~110_combout\ : std_logic;
SIGNAL \RX[55]~35_combout\ : std_logic;
SIGNAL \RX[55]~_emulated_regout\ : std_logic;
SIGNAL \RX[55]~34_combout\ : std_logic;
SIGNAL \Add1~111\ : std_logic;
SIGNAL \Add1~112_combout\ : std_logic;
SIGNAL \RX[56]~29_combout\ : std_logic;
SIGNAL \RX[56]~31_combout\ : std_logic;
SIGNAL \RX[56]~_emulated_regout\ : std_logic;
SIGNAL \RX[56]~30_combout\ : std_logic;
SIGNAL \Add1~113\ : std_logic;
SIGNAL \Add1~115\ : std_logic;
SIGNAL \Add1~117\ : std_logic;
SIGNAL \Add1~118_combout\ : std_logic;
SIGNAL \RX[59]~19_combout\ : std_logic;
SIGNAL \RX[59]~_emulated_regout\ : std_logic;
SIGNAL \RX[59]~18_combout\ : std_logic;
SIGNAL \Add1~119\ : std_logic;
SIGNAL \Add1~121\ : std_logic;
SIGNAL \Add1~122_combout\ : std_logic;
SIGNAL \RX[61]~11_combout\ : std_logic;
SIGNAL \RX[61]~_emulated_regout\ : std_logic;
SIGNAL \RX[61]~10_combout\ : std_logic;
SIGNAL \RX[51]~49_combout\ : std_logic;
SIGNAL \Add1~102_combout\ : std_logic;
SIGNAL \RX[51]~51_combout\ : std_logic;
SIGNAL \RX[51]~_emulated_regout\ : std_logic;
SIGNAL \RX[51]~50_combout\ : std_logic;
SIGNAL \RX[45]~73_combout\ : std_logic;
SIGNAL \RX[45]~74_combout\ : std_logic;
SIGNAL \RX[40]~93_combout\ : std_logic;
SIGNAL \RX[40]~95_combout\ : std_logic;
SIGNAL \RX[40]~_emulated_regout\ : std_logic;
SIGNAL \RX[40]~94_combout\ : std_logic;
SIGNAL \RX[33]~121_combout\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \RX[33]~123_combout\ : std_logic;
SIGNAL \RX[33]~_emulated_regout\ : std_logic;
SIGNAL \RX[33]~122_combout\ : std_logic;
SIGNAL \RX[17]~185_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \RX[17]~187_combout\ : std_logic;
SIGNAL \RX[17]~_emulated_regout\ : std_logic;
SIGNAL \RX[17]~186_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \RX[13]~203_combout\ : std_logic;
SIGNAL \RX[13]~_emulated_regout\ : std_logic;
SIGNAL \RX[13]~202_combout\ : std_logic;
SIGNAL \RX[10]~213_combout\ : std_logic;
SIGNAL \RX[10]~214_combout\ : std_logic;
SIGNAL \RX[8]~221_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \RX[8]~223_combout\ : std_logic;
SIGNAL \RX[8]~_emulated_regout\ : std_logic;
SIGNAL \RX[8]~222_combout\ : std_logic;
SIGNAL \RX[3]~241_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \RX[3]~243_combout\ : std_logic;
SIGNAL \RX[3]~_emulated_regout\ : std_logic;
SIGNAL \RX[3]~242_combout\ : std_logic;
SIGNAL \RX[2]~245_combout\ : std_logic;
SIGNAL \RX[2]~246_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~63_cout\ : std_logic;
SIGNAL \LessThan0~65_cout\ : std_logic;
SIGNAL \LessThan0~67_cout\ : std_logic;
SIGNAL \LessThan0~69_cout\ : std_logic;
SIGNAL \LessThan0~71_cout\ : std_logic;
SIGNAL \LessThan0~73_cout\ : std_logic;
SIGNAL \LessThan0~75_cout\ : std_logic;
SIGNAL \LessThan0~77_cout\ : std_logic;
SIGNAL \LessThan0~79_cout\ : std_logic;
SIGNAL \LessThan0~81_cout\ : std_logic;
SIGNAL \LessThan0~83_cout\ : std_logic;
SIGNAL \LessThan0~85_cout\ : std_logic;
SIGNAL \LessThan0~87_cout\ : std_logic;
SIGNAL \LessThan0~89_cout\ : std_logic;
SIGNAL \LessThan0~91_cout\ : std_logic;
SIGNAL \LessThan0~93_cout\ : std_logic;
SIGNAL \LessThan0~95_cout\ : std_logic;
SIGNAL \LessThan0~97_cout\ : std_logic;
SIGNAL \LessThan0~99_cout\ : std_logic;
SIGNAL \LessThan0~101_cout\ : std_logic;
SIGNAL \LessThan0~103_cout\ : std_logic;
SIGNAL \LessThan0~105_cout\ : std_logic;
SIGNAL \LessThan0~107_cout\ : std_logic;
SIGNAL \LessThan0~109_cout\ : std_logic;
SIGNAL \LessThan0~111_cout\ : std_logic;
SIGNAL \LessThan0~113_cout\ : std_logic;
SIGNAL \LessThan0~115_cout\ : std_logic;
SIGNAL \LessThan0~117_cout\ : std_logic;
SIGNAL \LessThan0~119_cout\ : std_logic;
SIGNAL \LessThan0~121_cout\ : std_logic;
SIGNAL \LessThan0~123_cout\ : std_logic;
SIGNAL \LessThan0~125_cout\ : std_logic;
SIGNAL \LessThan0~126_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector194~0_combout\ : std_logic;
SIGNAL \Selector194~1_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector195~0_combout\ : std_logic;
SIGNAL \Selector195~1_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector196~0_combout\ : std_logic;
SIGNAL \Selector196~1_combout\ : std_logic;
SIGNAL \Selector197~0_combout\ : std_logic;
SIGNAL \Selector197~1_combout\ : std_logic;
SIGNAL \Selector198~0_combout\ : std_logic;
SIGNAL \Selector198~1_combout\ : std_logic;
SIGNAL \result[0]~reg0feeder_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \result[0]~reg0_regout\ : std_logic;
SIGNAL \result[0]~32_combout\ : std_logic;
SIGNAL \result[0]~en_regout\ : std_logic;
SIGNAL \result[1]~reg0_regout\ : std_logic;
SIGNAL \result[1]~33_combout\ : std_logic;
SIGNAL \result[1]~en_regout\ : std_logic;
SIGNAL \result[2]~reg0_regout\ : std_logic;
SIGNAL \result[2]~34_combout\ : std_logic;
SIGNAL \result[2]~en_regout\ : std_logic;
SIGNAL \result[3]~reg0feeder_combout\ : std_logic;
SIGNAL \result[3]~reg0_regout\ : std_logic;
SIGNAL \result[3]~35_combout\ : std_logic;
SIGNAL \result[3]~en_regout\ : std_logic;
SIGNAL \result[4]~reg0feeder_combout\ : std_logic;
SIGNAL \result[4]~reg0_regout\ : std_logic;
SIGNAL \result[4]~36_combout\ : std_logic;
SIGNAL \result[4]~en_regout\ : std_logic;
SIGNAL \result[5]~reg0feeder_combout\ : std_logic;
SIGNAL \result[5]~reg0_regout\ : std_logic;
SIGNAL \result[5]~37_combout\ : std_logic;
SIGNAL \result[5]~en_regout\ : std_logic;
SIGNAL \result[6]~reg0_regout\ : std_logic;
SIGNAL \result[6]~38_combout\ : std_logic;
SIGNAL \result[6]~en_regout\ : std_logic;
SIGNAL \result[7]~reg0_regout\ : std_logic;
SIGNAL \result[7]~39_combout\ : std_logic;
SIGNAL \result[7]~en_regout\ : std_logic;
SIGNAL \result[8]~reg0feeder_combout\ : std_logic;
SIGNAL \result[8]~reg0_regout\ : std_logic;
SIGNAL \result[8]~40_combout\ : std_logic;
SIGNAL \result[8]~en_regout\ : std_logic;
SIGNAL \result[9]~reg0_regout\ : std_logic;
SIGNAL \result[9]~41_combout\ : std_logic;
SIGNAL \result[9]~en_regout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Selector188~0_combout\ : std_logic;
SIGNAL \Selector188~1_combout\ : std_logic;
SIGNAL \result[10]~reg0_regout\ : std_logic;
SIGNAL \result[10]~42_combout\ : std_logic;
SIGNAL \result[10]~en_regout\ : std_logic;
SIGNAL \result[11]~reg0_regout\ : std_logic;
SIGNAL \result[11]~43_combout\ : std_logic;
SIGNAL \result[11]~en_regout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Selector186~0_combout\ : std_logic;
SIGNAL \Selector186~1_combout\ : std_logic;
SIGNAL \result[12]~reg0feeder_combout\ : std_logic;
SIGNAL \result[12]~reg0_regout\ : std_logic;
SIGNAL \result[12]~44_combout\ : std_logic;
SIGNAL \result[12]~en_regout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Selector185~0_combout\ : std_logic;
SIGNAL \Selector185~1_combout\ : std_logic;
SIGNAL \result[13]~reg0_regout\ : std_logic;
SIGNAL \result[13]~45_combout\ : std_logic;
SIGNAL \result[13]~en_regout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector184~0_combout\ : std_logic;
SIGNAL \Selector184~1_combout\ : std_logic;
SIGNAL \result[14]~reg0_regout\ : std_logic;
SIGNAL \result[14]~46_combout\ : std_logic;
SIGNAL \result[14]~en_regout\ : std_logic;
SIGNAL \result[15]~reg0_regout\ : std_logic;
SIGNAL \result[15]~47_combout\ : std_logic;
SIGNAL \result[15]~en_regout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Selector182~0_combout\ : std_logic;
SIGNAL \Selector182~1_combout\ : std_logic;
SIGNAL \result[16]~reg0feeder_combout\ : std_logic;
SIGNAL \result[16]~reg0_regout\ : std_logic;
SIGNAL \result[16]~48_combout\ : std_logic;
SIGNAL \result[16]~en_regout\ : std_logic;
SIGNAL \result[17]~reg0_regout\ : std_logic;
SIGNAL \result[17]~49_combout\ : std_logic;
SIGNAL \result[17]~en_regout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Selector180~0_combout\ : std_logic;
SIGNAL \Selector180~1_combout\ : std_logic;
SIGNAL \result[18]~reg0_regout\ : std_logic;
SIGNAL \result[18]~50_combout\ : std_logic;
SIGNAL \result[18]~en_regout\ : std_logic;
SIGNAL \result[19]~reg0feeder_combout\ : std_logic;
SIGNAL \result[19]~reg0_regout\ : std_logic;
SIGNAL \result[19]~51_combout\ : std_logic;
SIGNAL \result[19]~en_regout\ : std_logic;
SIGNAL \result[20]~reg0_regout\ : std_logic;
SIGNAL \result[20]~52_combout\ : std_logic;
SIGNAL \result[20]~en_regout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Selector177~0_combout\ : std_logic;
SIGNAL \Selector177~1_combout\ : std_logic;
SIGNAL \result[21]~reg0_regout\ : std_logic;
SIGNAL \result[21]~53_combout\ : std_logic;
SIGNAL \result[21]~en_regout\ : std_logic;
SIGNAL \result[22]~reg0feeder_combout\ : std_logic;
SIGNAL \result[22]~reg0_regout\ : std_logic;
SIGNAL \result[22]~54_combout\ : std_logic;
SIGNAL \result[22]~en_regout\ : std_logic;
SIGNAL \result[23]~reg0feeder_combout\ : std_logic;
SIGNAL \result[23]~reg0_regout\ : std_logic;
SIGNAL \result[23]~55_combout\ : std_logic;
SIGNAL \result[23]~en_regout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Selector174~0_combout\ : std_logic;
SIGNAL \Selector174~1_combout\ : std_logic;
SIGNAL \result[24]~reg0feeder_combout\ : std_logic;
SIGNAL \result[24]~reg0_regout\ : std_logic;
SIGNAL \result[24]~56_combout\ : std_logic;
SIGNAL \result[24]~en_regout\ : std_logic;
SIGNAL \result[25]~reg0feeder_combout\ : std_logic;
SIGNAL \result[25]~reg0_regout\ : std_logic;
SIGNAL \result[25]~57_combout\ : std_logic;
SIGNAL \result[25]~en_regout\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Selector172~0_combout\ : std_logic;
SIGNAL \Selector172~1_combout\ : std_logic;
SIGNAL \result[26]~reg0_regout\ : std_logic;
SIGNAL \result[26]~58_combout\ : std_logic;
SIGNAL \result[26]~en_regout\ : std_logic;
SIGNAL \result[27]~reg0feeder_combout\ : std_logic;
SIGNAL \result[27]~reg0_regout\ : std_logic;
SIGNAL \result[27]~59_combout\ : std_logic;
SIGNAL \result[27]~en_regout\ : std_logic;
SIGNAL \result[28]~reg0feeder_combout\ : std_logic;
SIGNAL \result[28]~reg0_regout\ : std_logic;
SIGNAL \result[28]~60_combout\ : std_logic;
SIGNAL \result[28]~en_regout\ : std_logic;
SIGNAL \result[29]~reg0_regout\ : std_logic;
SIGNAL \result[29]~61_combout\ : std_logic;
SIGNAL \result[29]~en_regout\ : std_logic;
SIGNAL \result[30]~reg0_regout\ : std_logic;
SIGNAL \result[30]~62_combout\ : std_logic;
SIGNAL \result[30]~en_regout\ : std_logic;
SIGNAL \Add3~64_combout\ : std_logic;
SIGNAL \Selector167~2_combout\ : std_logic;
SIGNAL \Selector167~3_combout\ : std_logic;
SIGNAL \result[31]~reg0_regout\ : std_logic;
SIGNAL \result[31]~63_combout\ : std_logic;
SIGNAL \result[31]~en_regout\ : std_logic;
SIGNAL \Selector199~0_combout\ : std_logic;
SIGNAL \done~reg0_regout\ : std_logic;
SIGNAL i : std_logic_vector(5 DOWNTO 0);
SIGNAL RZ : std_logic_vector(63 DOWNTO 0);
SIGNAL RV : std_logic_vector(63 DOWNTO 0);
SIGNAL \X~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_rst~clkctrl_outclk\ : std_logic;

BEGIN

ww_X <= X;
ww_start <= start;
ww_rst <= rst;
ww_clk <= clk;
done <= ww_done;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_rst~clkctrl_outclk\ <= NOT \rst~clkctrl_outclk\;

-- Location: LCCOMB_X19_Y4_N6
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = i(0) $ (VCC)
-- \Add4~1\ = CARRY(i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X19_Y4_N8
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (i(1) & (\Add4~1\ & VCC)) # (!i(1) & (!\Add4~1\))
-- \Add4~3\ = CARRY((!i(1) & !\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X19_Y4_N10
\Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (i(2) & ((GND) # (!\Add4~3\))) # (!i(2) & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((i(2)) # (!\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X19_Y4_N12
\Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (i(3) & (\Add4~5\ & VCC)) # (!i(3) & (!\Add4~5\))
-- \Add4~7\ = CARRY((!i(3) & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X19_Y4_N14
\Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (i(4) & ((GND) # (!\Add4~7\))) # (!i(4) & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((i(4)) # (!\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X19_Y4_N16
\Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = \Add4~9\ $ (!i(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => i(5),
	cin => \Add4~9\,
	combout => \Add4~10_combout\);

-- Location: LCCOMB_X17_Y8_N2
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add0~2_combout\ & (!\Add2~1_cout\)) # (!\Add0~2_combout\ & ((\Add2~1_cout\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1_cout\) # (!\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add2~1_cout\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X14_Y6_N4
\Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = ((RZ(34) $ (RV(34) $ (!\Add0~67\)))) # (GND)
-- \Add0~69\ = CARRY((RZ(34) & ((RV(34)) # (!\Add0~67\))) # (!RZ(34) & (RV(34) & !\Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(34),
	datab => RV(34),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~68_combout\,
	cout => \Add0~69\);

-- Location: LCCOMB_X14_Y5_N2
\Add0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (RZ(49) & (!\Add0~97\)) # (!RZ(49) & ((\Add0~97\) # (GND)))
-- \Add0~99\ = CARRY((!\Add0~97\) # (!RZ(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(49),
	datad => VCC,
	cin => \Add0~97\,
	combout => \Add0~98_combout\,
	cout => \Add0~99\);

-- Location: LCCOMB_X18_Y8_N24
\Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = ((RV(12) $ (\Add0~24_combout\ $ (\Add3~23\)))) # (GND)
-- \Add3~25\ = CARRY((RV(12) & (\Add0~24_combout\ & !\Add3~23\)) # (!RV(12) & ((\Add0~24_combout\) # (!\Add3~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(12),
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X17_Y7_N0
\Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = ((\Add0~32_combout\ $ (RV(16) $ (!\Add2~31\)))) # (GND)
-- \Add2~33\ = CARRY((\Add0~32_combout\ & ((RV(16)) # (!\Add2~31\))) # (!\Add0~32_combout\ & (RV(16) & !\Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => RV(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X17_Y7_N10
\Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Add0~42_combout\ & (!\Add2~41\)) # (!\Add0~42_combout\ & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X18_Y7_N16
\Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = ((RV(24) $ (\Add0~48_combout\ $ (\Add3~47\)))) # (GND)
-- \Add3~49\ = CARRY((RV(24) & (\Add0~48_combout\ & !\Add3~47\)) # (!RV(24) & ((\Add0~48_combout\) # (!\Add3~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(24),
	datab => \Add0~48_combout\,
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X17_Y7_N18
\Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\Add0~50_combout\ & (!\Add2~49\)) # (!\Add0~50_combout\ & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!\Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X17_Y7_N20
\Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = ((\Add0~52_combout\ $ (RV(26) $ (!\Add2~51\)))) # (GND)
-- \Add2~53\ = CARRY((\Add0~52_combout\ & ((RV(26)) # (!\Add2~51\))) # (!\Add0~52_combout\ & (RV(26) & !\Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => RV(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X17_Y7_N30
\Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = (\Add0~62_combout\ & (!\Add2~61\)) # (!\Add0~62_combout\ & ((\Add2~61\) # (GND)))
-- \Add2~63\ = CARRY((!\Add2~61\) # (!\Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datad => VCC,
	cin => \Add2~61\,
	combout => \Add2~62_combout\,
	cout => \Add2~63\);

-- Location: LCCOMB_X17_Y6_N0
\Add2~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~64_combout\ = ((\Add0~64_combout\ $ (RV(32) $ (!\Add2~63\)))) # (GND)
-- \Add2~65\ = CARRY((\Add0~64_combout\ & ((RV(32)) # (!\Add2~63\))) # (!\Add0~64_combout\ & (RV(32) & !\Add2~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~64_combout\,
	datab => RV(32),
	datad => VCC,
	cin => \Add2~63\,
	combout => \Add2~64_combout\,
	cout => \Add2~65\);

-- Location: LCCOMB_X10_Y8_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~0_combout\ & (\RX[0]~254_combout\ $ (VCC))) # (!\Add0~0_combout\ & ((\RX[0]~254_combout\) # (GND)))
-- \Add1~1\ = CARRY((\RX[0]~254_combout\) # (!\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \RX[0]~254_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X10_Y8_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\RX[2]~246_combout\ $ (\Add0~4_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\RX[2]~246_combout\ & ((!\Add1~3\) # (!\Add0~4_combout\))) # (!\RX[2]~246_combout\ & (!\Add0~4_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[2]~246_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X10_Y8_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\RX[4]~238_combout\ $ (\Add0~8_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\RX[4]~238_combout\ & ((!\Add1~7\) # (!\Add0~8_combout\))) # (!\RX[4]~238_combout\ & (!\Add0~8_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[4]~238_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X10_Y8_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~10_combout\ & ((\RX[5]~234_combout\ & (!\Add1~9\)) # (!\RX[5]~234_combout\ & ((\Add1~9\) # (GND))))) # (!\Add0~10_combout\ & ((\RX[5]~234_combout\ & (\Add1~9\ & VCC)) # (!\RX[5]~234_combout\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\Add0~10_combout\ & ((!\Add1~9\) # (!\RX[5]~234_combout\))) # (!\Add0~10_combout\ & (!\RX[5]~234_combout\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \RX[5]~234_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X10_Y8_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\RX[6]~230_combout\ $ (\Add0~12_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\RX[6]~230_combout\ & ((!\Add1~11\) # (!\Add0~12_combout\))) # (!\RX[6]~230_combout\ & (!\Add0~12_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[6]~230_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X10_Y8_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\RX[7]~226_combout\ & ((\Add0~14_combout\ & (!\Add1~13\)) # (!\Add0~14_combout\ & (\Add1~13\ & VCC)))) # (!\RX[7]~226_combout\ & ((\Add0~14_combout\ & ((\Add1~13\) # (GND))) # (!\Add0~14_combout\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\RX[7]~226_combout\ & (\Add0~14_combout\ & !\Add1~13\)) # (!\RX[7]~226_combout\ & ((\Add0~14_combout\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[7]~226_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X10_Y8_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\RX[10]~214_combout\ $ (\Add0~20_combout\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\RX[10]~214_combout\ & ((!\Add1~19\) # (!\Add0~20_combout\))) # (!\RX[10]~214_combout\ & (!\Add0~20_combout\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[10]~214_combout\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X10_Y8_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\RX[11]~210_combout\ & ((\Add0~22_combout\ & (!\Add1~21\)) # (!\Add0~22_combout\ & (\Add1~21\ & VCC)))) # (!\RX[11]~210_combout\ & ((\Add0~22_combout\ & ((\Add1~21\) # (GND))) # (!\Add0~22_combout\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\RX[11]~210_combout\ & (\Add0~22_combout\ & !\Add1~21\)) # (!\RX[11]~210_combout\ & ((\Add0~22_combout\) # (!\Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[11]~210_combout\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X10_Y8_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\RX[12]~206_combout\ $ (\Add0~24_combout\ $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\RX[12]~206_combout\ & ((!\Add1~23\) # (!\Add0~24_combout\))) # (!\RX[12]~206_combout\ & (!\Add0~24_combout\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[12]~206_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X10_Y8_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\RX[14]~198_combout\ $ (\Add0~28_combout\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\RX[14]~198_combout\ & ((!\Add1~27\) # (!\Add0~28_combout\))) # (!\RX[14]~198_combout\ & (!\Add0~28_combout\ & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[14]~198_combout\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X10_Y8_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\RX[15]~194_combout\ & ((\Add0~30_combout\ & (!\Add1~29\)) # (!\Add0~30_combout\ & (\Add1~29\ & VCC)))) # (!\RX[15]~194_combout\ & ((\Add0~30_combout\ & ((\Add1~29\) # (GND))) # (!\Add0~30_combout\ & (!\Add1~29\))))
-- \Add1~31\ = CARRY((\RX[15]~194_combout\ & (\Add0~30_combout\ & !\Add1~29\)) # (!\RX[15]~194_combout\ & ((\Add0~30_combout\) # (!\Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[15]~194_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X10_Y7_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\Add0~32_combout\ $ (\RX[16]~190_combout\ $ (\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\Add0~32_combout\ & (\RX[16]~190_combout\ & !\Add1~31\)) # (!\Add0~32_combout\ & ((\RX[16]~190_combout\) # (!\Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \RX[16]~190_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X10_Y7_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\Add0~36_combout\ $ (\RX[18]~182_combout\ $ (\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\Add0~36_combout\ & (\RX[18]~182_combout\ & !\Add1~35\)) # (!\Add0~36_combout\ & ((\RX[18]~182_combout\) # (!\Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \RX[18]~182_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X10_Y7_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\Add0~40_combout\ $ (\RX[20]~174_combout\ $ (\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\Add0~40_combout\ & (\RX[20]~174_combout\ & !\Add1~39\)) # (!\Add0~40_combout\ & ((\RX[20]~174_combout\) # (!\Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \RX[20]~174_combout\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X10_Y7_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\RX[21]~170_combout\ & ((\Add0~42_combout\ & (!\Add1~41\)) # (!\Add0~42_combout\ & (\Add1~41\ & VCC)))) # (!\RX[21]~170_combout\ & ((\Add0~42_combout\ & ((\Add1~41\) # (GND))) # (!\Add0~42_combout\ & (!\Add1~41\))))
-- \Add1~43\ = CARRY((\RX[21]~170_combout\ & (\Add0~42_combout\ & !\Add1~41\)) # (!\RX[21]~170_combout\ & ((\Add0~42_combout\) # (!\Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[21]~170_combout\,
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X10_Y7_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\RX[22]~166_combout\ $ (\Add0~44_combout\ $ (\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\RX[22]~166_combout\ & ((!\Add1~43\) # (!\Add0~44_combout\))) # (!\RX[22]~166_combout\ & (!\Add0~44_combout\ & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[22]~166_combout\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X10_Y7_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\Add0~48_combout\ $ (\RX[24]~158_combout\ $ (\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\Add0~48_combout\ & (\RX[24]~158_combout\ & !\Add1~47\)) # (!\Add0~48_combout\ & ((\RX[24]~158_combout\) # (!\Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \RX[24]~158_combout\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X10_Y7_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\RX[25]~154_combout\ & ((\Add0~50_combout\ & (!\Add1~49\)) # (!\Add0~50_combout\ & (\Add1~49\ & VCC)))) # (!\RX[25]~154_combout\ & ((\Add0~50_combout\ & ((\Add1~49\) # (GND))) # (!\Add0~50_combout\ & (!\Add1~49\))))
-- \Add1~51\ = CARRY((\RX[25]~154_combout\ & (\Add0~50_combout\ & !\Add1~49\)) # (!\RX[25]~154_combout\ & ((\Add0~50_combout\) # (!\Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[25]~154_combout\,
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X10_Y7_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\Add0~54_combout\ & ((\RX[27]~146_combout\ & (!\Add1~53\)) # (!\RX[27]~146_combout\ & ((\Add1~53\) # (GND))))) # (!\Add0~54_combout\ & ((\RX[27]~146_combout\ & (\Add1~53\ & VCC)) # (!\RX[27]~146_combout\ & (!\Add1~53\))))
-- \Add1~55\ = CARRY((\Add0~54_combout\ & ((!\Add1~53\) # (!\RX[27]~146_combout\))) # (!\Add0~54_combout\ & (!\RX[27]~146_combout\ & !\Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \RX[27]~146_combout\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X10_Y7_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\Add0~56_combout\ $ (\RX[28]~142_combout\ $ (\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\Add0~56_combout\ & (\RX[28]~142_combout\ & !\Add1~55\)) # (!\Add0~56_combout\ & ((\RX[28]~142_combout\) # (!\Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \RX[28]~142_combout\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X10_Y7_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\RX[30]~134_combout\ $ (\Add0~60_combout\ $ (\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\RX[30]~134_combout\ & ((!\Add1~59\) # (!\Add0~60_combout\))) # (!\RX[30]~134_combout\ & (!\Add0~60_combout\ & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[30]~134_combout\,
	datab => \Add0~60_combout\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X10_Y7_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\RX[31]~130_combout\ & ((\Add0~62_combout\ & (!\Add1~61\)) # (!\Add0~62_combout\ & (\Add1~61\ & VCC)))) # (!\RX[31]~130_combout\ & ((\Add0~62_combout\ & ((\Add1~61\) # (GND))) # (!\Add0~62_combout\ & (!\Add1~61\))))
-- \Add1~63\ = CARRY((\RX[31]~130_combout\ & (\Add0~62_combout\ & !\Add1~61\)) # (!\RX[31]~130_combout\ & ((\Add0~62_combout\) # (!\Add1~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[31]~130_combout\,
	datab => \Add0~62_combout\,
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~62_combout\,
	cout => \Add1~63\);

-- Location: LCCOMB_X10_Y6_N4
\Add1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = ((\Add0~68_combout\ $ (\RX[34]~118_combout\ $ (\Add1~67\)))) # (GND)
-- \Add1~69\ = CARRY((\Add0~68_combout\ & (\RX[34]~118_combout\ & !\Add1~67\)) # (!\Add0~68_combout\ & ((\RX[34]~118_combout\) # (!\Add1~67\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datab => \RX[34]~118_combout\,
	datad => VCC,
	cin => \Add1~67\,
	combout => \Add1~68_combout\,
	cout => \Add1~69\);

-- Location: LCCOMB_X10_Y6_N8
\Add1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = ((\RX[36]~110_combout\ $ (\Add0~72_combout\ $ (\Add1~71\)))) # (GND)
-- \Add1~73\ = CARRY((\RX[36]~110_combout\ & ((!\Add1~71\) # (!\Add0~72_combout\))) # (!\RX[36]~110_combout\ & (!\Add0~72_combout\ & !\Add1~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[36]~110_combout\,
	datab => \Add0~72_combout\,
	datad => VCC,
	cin => \Add1~71\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

-- Location: LCCOMB_X10_Y6_N12
\Add1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = ((\RX[38]~102_combout\ $ (\Add0~76_combout\ $ (\Add1~75\)))) # (GND)
-- \Add1~77\ = CARRY((\RX[38]~102_combout\ & ((!\Add1~75\) # (!\Add0~76_combout\))) # (!\RX[38]~102_combout\ & (!\Add0~76_combout\ & !\Add1~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[38]~102_combout\,
	datab => \Add0~76_combout\,
	datad => VCC,
	cin => \Add1~75\,
	combout => \Add1~76_combout\,
	cout => \Add1~77\);

-- Location: LCCOMB_X10_Y6_N14
\Add1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (\RX[39]~98_combout\ & ((\Add0~78_combout\ & (!\Add1~77\)) # (!\Add0~78_combout\ & (\Add1~77\ & VCC)))) # (!\RX[39]~98_combout\ & ((\Add0~78_combout\ & ((\Add1~77\) # (GND))) # (!\Add0~78_combout\ & (!\Add1~77\))))
-- \Add1~79\ = CARRY((\RX[39]~98_combout\ & (\Add0~78_combout\ & !\Add1~77\)) # (!\RX[39]~98_combout\ & ((\Add0~78_combout\) # (!\Add1~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[39]~98_combout\,
	datab => \Add0~78_combout\,
	datad => VCC,
	cin => \Add1~77\,
	combout => \Add1~78_combout\,
	cout => \Add1~79\);

-- Location: LCCOMB_X10_Y6_N16
\Add1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = ((\RX[40]~94_combout\ $ (\Add0~80_combout\ $ (\Add1~79\)))) # (GND)
-- \Add1~81\ = CARRY((\RX[40]~94_combout\ & ((!\Add1~79\) # (!\Add0~80_combout\))) # (!\RX[40]~94_combout\ & (!\Add0~80_combout\ & !\Add1~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[40]~94_combout\,
	datab => \Add0~80_combout\,
	datad => VCC,
	cin => \Add1~79\,
	combout => \Add1~80_combout\,
	cout => \Add1~81\);

-- Location: LCCOMB_X10_Y6_N18
\Add1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (\RX[41]~90_combout\ & ((\Add0~82_combout\ & (!\Add1~81\)) # (!\Add0~82_combout\ & (\Add1~81\ & VCC)))) # (!\RX[41]~90_combout\ & ((\Add0~82_combout\ & ((\Add1~81\) # (GND))) # (!\Add0~82_combout\ & (!\Add1~81\))))
-- \Add1~83\ = CARRY((\RX[41]~90_combout\ & (\Add0~82_combout\ & !\Add1~81\)) # (!\RX[41]~90_combout\ & ((\Add0~82_combout\) # (!\Add1~81\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[41]~90_combout\,
	datab => \Add0~82_combout\,
	datad => VCC,
	cin => \Add1~81\,
	combout => \Add1~82_combout\,
	cout => \Add1~83\);

-- Location: LCCOMB_X10_Y6_N20
\Add1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = ((\RX[42]~86_combout\ $ (\Add0~84_combout\ $ (\Add1~83\)))) # (GND)
-- \Add1~85\ = CARRY((\RX[42]~86_combout\ & ((!\Add1~83\) # (!\Add0~84_combout\))) # (!\RX[42]~86_combout\ & (!\Add0~84_combout\ & !\Add1~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[42]~86_combout\,
	datab => \Add0~84_combout\,
	datad => VCC,
	cin => \Add1~83\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

-- Location: LCCOMB_X10_Y6_N22
\Add1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (\RX[43]~82_combout\ & ((\Add0~86_combout\ & (!\Add1~85\)) # (!\Add0~86_combout\ & (\Add1~85\ & VCC)))) # (!\RX[43]~82_combout\ & ((\Add0~86_combout\ & ((\Add1~85\) # (GND))) # (!\Add0~86_combout\ & (!\Add1~85\))))
-- \Add1~87\ = CARRY((\RX[43]~82_combout\ & (\Add0~86_combout\ & !\Add1~85\)) # (!\RX[43]~82_combout\ & ((\Add0~86_combout\) # (!\Add1~85\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[43]~82_combout\,
	datab => \Add0~86_combout\,
	datad => VCC,
	cin => \Add1~85\,
	combout => \Add1~86_combout\,
	cout => \Add1~87\);

-- Location: LCCOMB_X10_Y6_N26
\Add1~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (\RX[45]~74_combout\ & ((\Add0~90_combout\ & (!\Add1~89\)) # (!\Add0~90_combout\ & (\Add1~89\ & VCC)))) # (!\RX[45]~74_combout\ & ((\Add0~90_combout\ & ((\Add1~89\) # (GND))) # (!\Add0~90_combout\ & (!\Add1~89\))))
-- \Add1~91\ = CARRY((\RX[45]~74_combout\ & (\Add0~90_combout\ & !\Add1~89\)) # (!\RX[45]~74_combout\ & ((\Add0~90_combout\) # (!\Add1~89\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[45]~74_combout\,
	datab => \Add0~90_combout\,
	datad => VCC,
	cin => \Add1~89\,
	combout => \Add1~90_combout\,
	cout => \Add1~91\);

-- Location: LCCOMB_X10_Y6_N28
\Add1~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = ((\RX[46]~70_combout\ $ (\Add0~92_combout\ $ (\Add1~91\)))) # (GND)
-- \Add1~93\ = CARRY((\RX[46]~70_combout\ & ((!\Add1~91\) # (!\Add0~92_combout\))) # (!\RX[46]~70_combout\ & (!\Add0~92_combout\ & !\Add1~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[46]~70_combout\,
	datab => \Add0~92_combout\,
	datad => VCC,
	cin => \Add1~91\,
	combout => \Add1~92_combout\,
	cout => \Add1~93\);

-- Location: LCCOMB_X10_Y6_N30
\Add1~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~94_combout\ = (\Add0~94_combout\ & ((\RX[47]~66_combout\ & (!\Add1~93\)) # (!\RX[47]~66_combout\ & ((\Add1~93\) # (GND))))) # (!\Add0~94_combout\ & ((\RX[47]~66_combout\ & (\Add1~93\ & VCC)) # (!\RX[47]~66_combout\ & (!\Add1~93\))))
-- \Add1~95\ = CARRY((\Add0~94_combout\ & ((!\Add1~93\) # (!\RX[47]~66_combout\))) # (!\Add0~94_combout\ & (!\RX[47]~66_combout\ & !\Add1~93\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~94_combout\,
	datab => \RX[47]~66_combout\,
	datad => VCC,
	cin => \Add1~93\,
	combout => \Add1~94_combout\,
	cout => \Add1~95\);

-- Location: LCCOMB_X10_Y5_N0
\Add1~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~96_combout\ = ((\Add0~96_combout\ $ (\RX[48]~62_combout\ $ (\Add1~95\)))) # (GND)
-- \Add1~97\ = CARRY((\Add0~96_combout\ & (\RX[48]~62_combout\ & !\Add1~95\)) # (!\Add0~96_combout\ & ((\RX[48]~62_combout\) # (!\Add1~95\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~96_combout\,
	datab => \RX[48]~62_combout\,
	datad => VCC,
	cin => \Add1~95\,
	combout => \Add1~96_combout\,
	cout => \Add1~97\);

-- Location: LCCOMB_X10_Y5_N10
\Add1~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~106_combout\ = (\RX[53]~42_combout\ & ((\Add0~106_combout\ & (!\Add1~105\)) # (!\Add0~106_combout\ & (\Add1~105\ & VCC)))) # (!\RX[53]~42_combout\ & ((\Add0~106_combout\ & ((\Add1~105\) # (GND))) # (!\Add0~106_combout\ & (!\Add1~105\))))
-- \Add1~107\ = CARRY((\RX[53]~42_combout\ & (\Add0~106_combout\ & !\Add1~105\)) # (!\RX[53]~42_combout\ & ((\Add0~106_combout\) # (!\Add1~105\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[53]~42_combout\,
	datab => \Add0~106_combout\,
	datad => VCC,
	cin => \Add1~105\,
	combout => \Add1~106_combout\,
	cout => \Add1~107\);

-- Location: LCCOMB_X10_Y5_N18
\Add1~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~114_combout\ = (\RX[57]~26_combout\ & ((\Add0~114_combout\ & (!\Add1~113\)) # (!\Add0~114_combout\ & (\Add1~113\ & VCC)))) # (!\RX[57]~26_combout\ & ((\Add0~114_combout\ & ((\Add1~113\) # (GND))) # (!\Add0~114_combout\ & (!\Add1~113\))))
-- \Add1~115\ = CARRY((\RX[57]~26_combout\ & (\Add0~114_combout\ & !\Add1~113\)) # (!\RX[57]~26_combout\ & ((\Add0~114_combout\) # (!\Add1~113\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[57]~26_combout\,
	datab => \Add0~114_combout\,
	datad => VCC,
	cin => \Add1~113\,
	combout => \Add1~114_combout\,
	cout => \Add1~115\);

-- Location: LCCOMB_X10_Y5_N20
\Add1~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~116_combout\ = ((\RX[58]~22_combout\ $ (\Add0~116_combout\ $ (\Add1~115\)))) # (GND)
-- \Add1~117\ = CARRY((\RX[58]~22_combout\ & ((!\Add1~115\) # (!\Add0~116_combout\))) # (!\RX[58]~22_combout\ & (!\Add0~116_combout\ & !\Add1~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[58]~22_combout\,
	datab => \Add0~116_combout\,
	datad => VCC,
	cin => \Add1~115\,
	combout => \Add1~116_combout\,
	cout => \Add1~117\);

-- Location: LCCOMB_X10_Y5_N24
\Add1~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~120_combout\ = ((\Add0~120_combout\ $ (\RX[60]~14_combout\ $ (\Add1~119\)))) # (GND)
-- \Add1~121\ = CARRY((\Add0~120_combout\ & (\RX[60]~14_combout\ & !\Add1~119\)) # (!\Add0~120_combout\ & ((\RX[60]~14_combout\) # (!\Add1~119\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \RX[60]~14_combout\,
	datad => VCC,
	cin => \Add1~119\,
	combout => \Add1~120_combout\,
	cout => \Add1~121\);

-- Location: LCCOMB_X10_Y5_N26
\Add1~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~122_combout\ = (\RX[61]~10_combout\ & ((\Add0~122_combout\ & (!\Add1~121\)) # (!\Add0~122_combout\ & (\Add1~121\ & VCC)))) # (!\RX[61]~10_combout\ & ((\Add0~122_combout\ & ((\Add1~121\) # (GND))) # (!\Add0~122_combout\ & (!\Add1~121\))))
-- \Add1~123\ = CARRY((\RX[61]~10_combout\ & (\Add0~122_combout\ & !\Add1~121\)) # (!\RX[61]~10_combout\ & ((\Add0~122_combout\) # (!\Add1~121\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[61]~10_combout\,
	datab => \Add0~122_combout\,
	datad => VCC,
	cin => \Add1~121\,
	combout => \Add1~122_combout\,
	cout => \Add1~123\);

-- Location: LCCOMB_X10_Y5_N28
\Add1~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~124_combout\ = ((\RX[62]~6_combout\ $ (\Add0~124_combout\ $ (\Add1~123\)))) # (GND)
-- \Add1~125\ = CARRY((\RX[62]~6_combout\ & ((!\Add1~123\) # (!\Add0~124_combout\))) # (!\RX[62]~6_combout\ & (!\Add0~124_combout\ & !\Add1~123\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[62]~6_combout\,
	datab => \Add0~124_combout\,
	datad => VCC,
	cin => \Add1~123\,
	combout => \Add1~124_combout\,
	cout => \Add1~125\);

-- Location: LCCOMB_X10_Y5_N30
\Add1~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~126_combout\ = \RX[63]~2_combout\ $ (\Add1~125\ $ (!\Add0~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX[63]~2_combout\,
	datad => \Add0~126_combout\,
	cin => \Add1~125\,
	combout => \Add1~126_combout\);

-- Location: LCCOMB_X18_Y6_N2
\Add3~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~66_combout\ = (\Add0~66_combout\ & (\Add3~65\ & VCC)) # (!\Add0~66_combout\ & (!\Add3~65\))
-- \Add3~67\ = CARRY((!\Add0~66_combout\ & !\Add3~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~66_combout\,
	datad => VCC,
	cin => \Add3~65\,
	combout => \Add3~66_combout\,
	cout => \Add3~67\);

-- Location: LCCOMB_X18_Y6_N4
\Add3~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~68_combout\ = ((\Add0~68_combout\ $ (RV(34) $ (\Add3~67\)))) # (GND)
-- \Add3~69\ = CARRY((\Add0~68_combout\ & ((!\Add3~67\) # (!RV(34)))) # (!\Add0~68_combout\ & (!RV(34) & !\Add3~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datab => RV(34),
	datad => VCC,
	cin => \Add3~67\,
	combout => \Add3~68_combout\,
	cout => \Add3~69\);

-- Location: LCCOMB_X18_Y6_N6
\Add3~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~70_combout\ = (\Add0~70_combout\ & (\Add3~69\ & VCC)) # (!\Add0~70_combout\ & (!\Add3~69\))
-- \Add3~71\ = CARRY((!\Add0~70_combout\ & !\Add3~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~70_combout\,
	datad => VCC,
	cin => \Add3~69\,
	combout => \Add3~70_combout\,
	cout => \Add3~71\);

-- Location: LCCOMB_X18_Y6_N12
\Add3~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~76_combout\ = ((RV(38) $ (\Add0~76_combout\ $ (\Add3~75\)))) # (GND)
-- \Add3~77\ = CARRY((RV(38) & (\Add0~76_combout\ & !\Add3~75\)) # (!RV(38) & ((\Add0~76_combout\) # (!\Add3~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(38),
	datab => \Add0~76_combout\,
	datad => VCC,
	cin => \Add3~75\,
	combout => \Add3~76_combout\,
	cout => \Add3~77\);

-- Location: LCCOMB_X18_Y6_N16
\Add3~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~80_combout\ = ((RV(40) $ (\Add0~80_combout\ $ (\Add3~79\)))) # (GND)
-- \Add3~81\ = CARRY((RV(40) & (\Add0~80_combout\ & !\Add3~79\)) # (!RV(40) & ((\Add0~80_combout\) # (!\Add3~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(40),
	datab => \Add0~80_combout\,
	datad => VCC,
	cin => \Add3~79\,
	combout => \Add3~80_combout\,
	cout => \Add3~81\);

-- Location: LCCOMB_X18_Y6_N18
\Add3~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~82_combout\ = (\Add0~82_combout\ & (\Add3~81\ & VCC)) # (!\Add0~82_combout\ & (!\Add3~81\))
-- \Add3~83\ = CARRY((!\Add0~82_combout\ & !\Add3~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~82_combout\,
	datad => VCC,
	cin => \Add3~81\,
	combout => \Add3~82_combout\,
	cout => \Add3~83\);

-- Location: LCCOMB_X18_Y6_N20
\Add3~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~84_combout\ = ((\Add0~84_combout\ $ (RV(42) $ (\Add3~83\)))) # (GND)
-- \Add3~85\ = CARRY((\Add0~84_combout\ & ((!\Add3~83\) # (!RV(42)))) # (!\Add0~84_combout\ & (!RV(42) & !\Add3~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datab => RV(42),
	datad => VCC,
	cin => \Add3~83\,
	combout => \Add3~84_combout\,
	cout => \Add3~85\);

-- Location: LCCOMB_X18_Y6_N22
\Add3~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~86_combout\ = (\Add0~86_combout\ & (\Add3~85\ & VCC)) # (!\Add0~86_combout\ & (!\Add3~85\))
-- \Add3~87\ = CARRY((!\Add0~86_combout\ & !\Add3~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~86_combout\,
	datad => VCC,
	cin => \Add3~85\,
	combout => \Add3~86_combout\,
	cout => \Add3~87\);

-- Location: LCCOMB_X18_Y6_N26
\Add3~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~90_combout\ = (\Add0~90_combout\ & (\Add3~89\ & VCC)) # (!\Add0~90_combout\ & (!\Add3~89\))
-- \Add3~91\ = CARRY((!\Add0~90_combout\ & !\Add3~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datad => VCC,
	cin => \Add3~89\,
	combout => \Add3~90_combout\,
	cout => \Add3~91\);

-- Location: LCCOMB_X18_Y5_N0
\Add3~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~96_combout\ = ((RV(48) $ (\Add0~96_combout\ $ (\Add3~95\)))) # (GND)
-- \Add3~97\ = CARRY((RV(48) & (\Add0~96_combout\ & !\Add3~95\)) # (!RV(48) & ((\Add0~96_combout\) # (!\Add3~95\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(48),
	datab => \Add0~96_combout\,
	datad => VCC,
	cin => \Add3~95\,
	combout => \Add3~96_combout\,
	cout => \Add3~97\);

-- Location: LCCOMB_X18_Y5_N2
\Add3~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~98_combout\ = (\Add0~98_combout\ & (\Add3~97\ & VCC)) # (!\Add0~98_combout\ & (!\Add3~97\))
-- \Add3~99\ = CARRY((!\Add0~98_combout\ & !\Add3~97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~98_combout\,
	datad => VCC,
	cin => \Add3~97\,
	combout => \Add3~98_combout\,
	cout => \Add3~99\);

-- Location: LCCOMB_X18_Y5_N6
\Add3~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~102_combout\ = (\Add0~102_combout\ & (\Add3~101\ & VCC)) # (!\Add0~102_combout\ & (!\Add3~101\))
-- \Add3~103\ = CARRY((!\Add0~102_combout\ & !\Add3~101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~102_combout\,
	datad => VCC,
	cin => \Add3~101\,
	combout => \Add3~102_combout\,
	cout => \Add3~103\);

-- Location: LCCOMB_X18_Y5_N8
\Add3~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~104_combout\ = ((RV(52) $ (\Add0~104_combout\ $ (\Add3~103\)))) # (GND)
-- \Add3~105\ = CARRY((RV(52) & (\Add0~104_combout\ & !\Add3~103\)) # (!RV(52) & ((\Add0~104_combout\) # (!\Add3~103\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(52),
	datab => \Add0~104_combout\,
	datad => VCC,
	cin => \Add3~103\,
	combout => \Add3~104_combout\,
	cout => \Add3~105\);

-- Location: LCCOMB_X18_Y5_N10
\Add3~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~106_combout\ = (\Add0~106_combout\ & (\Add3~105\ & VCC)) # (!\Add0~106_combout\ & (!\Add3~105\))
-- \Add3~107\ = CARRY((!\Add0~106_combout\ & !\Add3~105\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~106_combout\,
	datad => VCC,
	cin => \Add3~105\,
	combout => \Add3~106_combout\,
	cout => \Add3~107\);

-- Location: LCCOMB_X18_Y5_N12
\Add3~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~108_combout\ = ((RV(54) $ (\Add0~108_combout\ $ (\Add3~107\)))) # (GND)
-- \Add3~109\ = CARRY((RV(54) & (\Add0~108_combout\ & !\Add3~107\)) # (!RV(54) & ((\Add0~108_combout\) # (!\Add3~107\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(54),
	datab => \Add0~108_combout\,
	datad => VCC,
	cin => \Add3~107\,
	combout => \Add3~108_combout\,
	cout => \Add3~109\);

-- Location: LCCOMB_X18_Y5_N14
\Add3~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~110_combout\ = (\Add0~110_combout\ & (\Add3~109\ & VCC)) # (!\Add0~110_combout\ & (!\Add3~109\))
-- \Add3~111\ = CARRY((!\Add0~110_combout\ & !\Add3~109\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~110_combout\,
	datad => VCC,
	cin => \Add3~109\,
	combout => \Add3~110_combout\,
	cout => \Add3~111\);

-- Location: LCCOMB_X18_Y5_N20
\Add3~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~116_combout\ = ((RV(58) $ (\Add0~116_combout\ $ (\Add3~115\)))) # (GND)
-- \Add3~117\ = CARRY((RV(58) & (\Add0~116_combout\ & !\Add3~115\)) # (!RV(58) & ((\Add0~116_combout\) # (!\Add3~115\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(58),
	datab => \Add0~116_combout\,
	datad => VCC,
	cin => \Add3~115\,
	combout => \Add3~116_combout\,
	cout => \Add3~117\);

-- Location: LCCOMB_X18_Y5_N26
\Add3~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~122_combout\ = (\Add0~122_combout\ & (\Add3~121\ & VCC)) # (!\Add0~122_combout\ & (!\Add3~121\))
-- \Add3~123\ = CARRY((!\Add0~122_combout\ & !\Add3~121\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~122_combout\,
	datad => VCC,
	cin => \Add3~121\,
	combout => \Add3~122_combout\,
	cout => \Add3~123\);

-- Location: LCCOMB_X18_Y5_N28
\Add3~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~124_combout\ = ((RV(62) $ (\Add0~124_combout\ $ (\Add3~123\)))) # (GND)
-- \Add3~125\ = CARRY((RV(62) & (\Add0~124_combout\ & !\Add3~123\)) # (!RV(62) & ((\Add0~124_combout\) # (!\Add3~123\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(62),
	datab => \Add0~124_combout\,
	datad => VCC,
	cin => \Add3~123\,
	combout => \Add3~124_combout\,
	cout => \Add3~125\);

-- Location: LCCOMB_X18_Y5_N30
\Add3~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~126_combout\ = \Add3~125\ $ (!\Add0~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~126_combout\,
	cin => \Add3~125\,
	combout => \Add3~126_combout\);

-- Location: LCCOMB_X17_Y6_N6
\Add2~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~70_combout\ = (\Add0~70_combout\ & (!\Add2~69\)) # (!\Add0~70_combout\ & ((\Add2~69\) # (GND)))
-- \Add2~71\ = CARRY((!\Add2~69\) # (!\Add0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~70_combout\,
	datad => VCC,
	cin => \Add2~69\,
	combout => \Add2~70_combout\,
	cout => \Add2~71\);

-- Location: LCCOMB_X17_Y6_N18
\Add2~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~82_combout\ = (\Add0~82_combout\ & (!\Add2~81\)) # (!\Add0~82_combout\ & ((\Add2~81\) # (GND)))
-- \Add2~83\ = CARRY((!\Add2~81\) # (!\Add0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~82_combout\,
	datad => VCC,
	cin => \Add2~81\,
	combout => \Add2~82_combout\,
	cout => \Add2~83\);

-- Location: LCCOMB_X17_Y6_N20
\Add2~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~84_combout\ = ((RV(42) $ (\Add0~84_combout\ $ (!\Add2~83\)))) # (GND)
-- \Add2~85\ = CARRY((RV(42) & ((\Add0~84_combout\) # (!\Add2~83\))) # (!RV(42) & (\Add0~84_combout\ & !\Add2~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(42),
	datab => \Add0~84_combout\,
	datad => VCC,
	cin => \Add2~83\,
	combout => \Add2~84_combout\,
	cout => \Add2~85\);

-- Location: LCCOMB_X17_Y6_N22
\Add2~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~86_combout\ = (\Add0~86_combout\ & (!\Add2~85\)) # (!\Add0~86_combout\ & ((\Add2~85\) # (GND)))
-- \Add2~87\ = CARRY((!\Add2~85\) # (!\Add0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~86_combout\,
	datad => VCC,
	cin => \Add2~85\,
	combout => \Add2~86_combout\,
	cout => \Add2~87\);

-- Location: LCCOMB_X17_Y6_N24
\Add2~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~88_combout\ = ((RV(44) $ (\Add0~88_combout\ $ (!\Add2~87\)))) # (GND)
-- \Add2~89\ = CARRY((RV(44) & ((\Add0~88_combout\) # (!\Add2~87\))) # (!RV(44) & (\Add0~88_combout\ & !\Add2~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(44),
	datab => \Add0~88_combout\,
	datad => VCC,
	cin => \Add2~87\,
	combout => \Add2~88_combout\,
	cout => \Add2~89\);

-- Location: LCCOMB_X17_Y5_N0
\Add2~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~96_combout\ = ((RV(48) $ (\Add0~96_combout\ $ (!\Add2~95\)))) # (GND)
-- \Add2~97\ = CARRY((RV(48) & ((\Add0~96_combout\) # (!\Add2~95\))) # (!RV(48) & (\Add0~96_combout\ & !\Add2~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(48),
	datab => \Add0~96_combout\,
	datad => VCC,
	cin => \Add2~95\,
	combout => \Add2~96_combout\,
	cout => \Add2~97\);

-- Location: LCCOMB_X17_Y5_N2
\Add2~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~98_combout\ = (\Add0~98_combout\ & (!\Add2~97\)) # (!\Add0~98_combout\ & ((\Add2~97\) # (GND)))
-- \Add2~99\ = CARRY((!\Add2~97\) # (!\Add0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~98_combout\,
	datad => VCC,
	cin => \Add2~97\,
	combout => \Add2~98_combout\,
	cout => \Add2~99\);

-- Location: LCCOMB_X17_Y5_N6
\Add2~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~102_combout\ = (\Add0~102_combout\ & (!\Add2~101\)) # (!\Add0~102_combout\ & ((\Add2~101\) # (GND)))
-- \Add2~103\ = CARRY((!\Add2~101\) # (!\Add0~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~102_combout\,
	datad => VCC,
	cin => \Add2~101\,
	combout => \Add2~102_combout\,
	cout => \Add2~103\);

-- Location: LCCOMB_X17_Y5_N8
\Add2~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~104_combout\ = ((RV(52) $ (\Add0~104_combout\ $ (!\Add2~103\)))) # (GND)
-- \Add2~105\ = CARRY((RV(52) & ((\Add0~104_combout\) # (!\Add2~103\))) # (!RV(52) & (\Add0~104_combout\ & !\Add2~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(52),
	datab => \Add0~104_combout\,
	datad => VCC,
	cin => \Add2~103\,
	combout => \Add2~104_combout\,
	cout => \Add2~105\);

-- Location: LCCOMB_X17_Y5_N14
\Add2~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~110_combout\ = (\Add0~110_combout\ & (!\Add2~109\)) # (!\Add0~110_combout\ & ((\Add2~109\) # (GND)))
-- \Add2~111\ = CARRY((!\Add2~109\) # (!\Add0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~110_combout\,
	datad => VCC,
	cin => \Add2~109\,
	combout => \Add2~110_combout\,
	cout => \Add2~111\);

-- Location: LCCOMB_X17_Y5_N20
\Add2~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~116_combout\ = ((RV(58) $ (\Add0~116_combout\ $ (!\Add2~115\)))) # (GND)
-- \Add2~117\ = CARRY((RV(58) & ((\Add0~116_combout\) # (!\Add2~115\))) # (!RV(58) & (\Add0~116_combout\ & !\Add2~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(58),
	datab => \Add0~116_combout\,
	datad => VCC,
	cin => \Add2~115\,
	combout => \Add2~116_combout\,
	cout => \Add2~117\);

-- Location: LCCOMB_X17_Y5_N26
\Add2~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~122_combout\ = (\Add0~122_combout\ & (!\Add2~121\)) # (!\Add0~122_combout\ & ((\Add2~121\) # (GND)))
-- \Add2~123\ = CARRY((!\Add2~121\) # (!\Add0~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~122_combout\,
	datad => VCC,
	cin => \Add2~121\,
	combout => \Add2~122_combout\,
	cout => \Add2~123\);

-- Location: LCCOMB_X17_Y5_N28
\Add2~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~124_combout\ = ((RV(62) $ (\Add0~124_combout\ $ (!\Add2~123\)))) # (GND)
-- \Add2~125\ = CARRY((RV(62) & ((\Add0~124_combout\) # (!\Add2~123\))) # (!RV(62) & (\Add0~124_combout\ & !\Add2~123\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(62),
	datab => \Add0~124_combout\,
	datad => VCC,
	cin => \Add2~123\,
	combout => \Add2~124_combout\,
	cout => \Add2~125\);

-- Location: LCCOMB_X17_Y5_N30
\Add2~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~126_combout\ = \Add0~126_combout\ $ (\Add2~125\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~126_combout\,
	cin => \Add2~125\,
	combout => \Add2~126_combout\);

-- Location: LCFF_X19_Y4_N29
\i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(5));

-- Location: LCFF_X19_Y4_N27
\i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(4));

-- Location: LCFF_X19_Y4_N25
\i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(3));

-- Location: LCFF_X19_Y4_N23
\i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(2));

-- Location: LCCOMB_X19_Y4_N20
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (i(5)) # ((i(4)) # ((i(3)) # (i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(5),
	datab => i(4),
	datac => i(3),
	datad => i(2),
	combout => \LessThan1~0_combout\);

-- Location: LCFF_X19_Y4_N19
\i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(0));

-- Location: LCCOMB_X19_Y4_N28
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Add4~10_combout\ & (((i(5)) # (!\RX~258_combout\)))) # (!\Add4~10_combout\ & (!\current_state.iter_state~regout\ & ((i(5)) # (!\RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \current_state.iter_state~regout\,
	datac => i(5),
	datad => \RX~258_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add4~8_combout\ & ((\current_state.iter_state~regout\) # ((i(4) & \RX~258_combout\)))) # (!\Add4~8_combout\ & (((i(4) & \RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datab => \current_state.iter_state~regout\,
	datac => i(4),
	datad => \RX~258_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X19_Y4_N24
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add4~6_combout\ & ((\current_state.iter_state~regout\) # ((i(3) & \RX~258_combout\)))) # (!\Add4~6_combout\ & (((i(3) & \RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \current_state.iter_state~regout\,
	datac => i(3),
	datad => \RX~258_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X19_Y4_N22
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add4~4_combout\ & ((\current_state.iter_state~regout\) # ((i(2) & \RX~258_combout\)))) # (!\Add4~4_combout\ & (((i(2) & \RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \current_state.iter_state~regout\,
	datac => i(2),
	datad => \RX~258_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X12_Y5_N29
\RX[63]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[63]~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[63]~_emulated_regout\);

-- Location: LCCOMB_X12_Y5_N30
\RX[63]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[63]~2_combout\ = (\rst~combout\ & ((\RX[63]~_emulated_regout\ $ (\RX[63]~1_combout\)))) # (!\rst~combout\ & (\X~combout\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(63),
	datab => \RX[63]~_emulated_regout\,
	datac => \rst~combout\,
	datad => \RX[63]~1_combout\,
	combout => \RX[63]~2_combout\);

-- Location: LCFF_X15_Y5_N17
\RZ[62]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector136~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(62));

-- Location: LCFF_X15_Y5_N5
\RZ[60]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector138~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(60));

-- Location: LCFF_X15_Y5_N7
\RZ[57]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector141~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(57));

-- Location: LCFF_X19_Y5_N5
\RZ[54]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector144~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(54));

-- Location: LCFF_X19_Y5_N15
\RZ[51]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector147~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(51));

-- Location: LCFF_X17_Y4_N25
\RZ[50]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector148~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(50));

-- Location: LCFF_X17_Y4_N21
\RZ[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector150~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(48));

-- Location: LCFF_X17_Y4_N31
\RZ[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector151~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(47));

-- Location: LCFF_X14_Y6_N25
\RV[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector89~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(46));

-- Location: LCFF_X15_Y6_N3
\RZ[42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector156~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(42));

-- Location: LCFF_X15_Y6_N5
\RZ[41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector157~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(41));

-- Location: LCFF_X15_Y6_N27
\RZ[40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector158~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(40));

-- Location: LCFF_X14_Y6_N21
\RV[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector97~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(38));

-- Location: LCFF_X17_Y4_N15
\RZ[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector164~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(34));

-- Location: LCFF_X12_Y5_N21
\RX[62]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[62]~7_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[62]~_emulated_regout\);

-- Location: LCCOMB_X12_Y5_N10
\RX[62]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[62]~6_combout\ = (\rst~combout\ & (\RX[62]~_emulated_regout\ $ (((\RX[62]~5_combout\))))) # (!\rst~combout\ & (((\X~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[62]~_emulated_regout\,
	datab => \X~combout\(62),
	datac => \rst~combout\,
	datad => \RX[62]~5_combout\,
	combout => \RX[62]~6_combout\);

-- Location: LCFF_X9_Y8_N25
\RX[60]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[60]~15_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[60]~_emulated_regout\);

-- Location: LCFF_X12_Y8_N21
\RX[58]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[58]~23_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[58]~_emulated_regout\);

-- Location: LCCOMB_X12_Y8_N2
\RX[58]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[58]~22_combout\ = (\rst~combout\ & (\RX[58]~21_combout\ $ ((\RX[58]~_emulated_regout\)))) # (!\rst~combout\ & (((\X~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[58]~21_combout\,
	datab => \rst~combout\,
	datac => \RX[58]~_emulated_regout\,
	datad => \X~combout\(58),
	combout => \RX[58]~22_combout\);

-- Location: LCFF_X9_Y5_N5
\RX[57]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[57]~27_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[57]~_emulated_regout\);

-- Location: LCCOMB_X8_Y5_N20
\RX[57]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[57]~26_combout\ = (\rst~combout\ & ((\RX[57]~25_combout\ $ (\RX[57]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(57),
	datab => \RX[57]~25_combout\,
	datac => \rst~combout\,
	datad => \RX[57]~_emulated_regout\,
	combout => \RX[57]~26_combout\);

-- Location: LCFF_X9_Y5_N29
\RX[53]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[53]~43_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[53]~_emulated_regout\);

-- Location: LCCOMB_X9_Y5_N30
\RX[53]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[53]~42_combout\ = (\rst~combout\ & ((\RX[53]~_emulated_regout\ $ (\RX[53]~41_combout\)))) # (!\rst~combout\ & (\X~combout\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(53),
	datab => \RX[53]~_emulated_regout\,
	datac => \rst~combout\,
	datad => \RX[53]~41_combout\,
	combout => \RX[53]~42_combout\);

-- Location: LCFF_X9_Y5_N7
\RX[48]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[48]~63_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[48]~_emulated_regout\);

-- Location: LCFF_X9_Y6_N17
\RX[47]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[47]~67_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[47]~_emulated_regout\);

-- Location: LCFF_X9_Y6_N9
\RX[46]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[46]~71_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[46]~_emulated_regout\);

-- Location: LCCOMB_X8_Y6_N24
\RX[46]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[46]~70_combout\ = (\rst~combout\ & ((\RX[46]~_emulated_regout\ $ (\RX[46]~69_combout\)))) # (!\rst~combout\ & (\X~combout\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \X~combout\(46),
	datac => \RX[46]~_emulated_regout\,
	datad => \RX[46]~69_combout\,
	combout => \RX[46]~70_combout\);

-- Location: LCFF_X9_Y6_N11
\RX[45]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[45]~75_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[45]~_emulated_regout\);

-- Location: LCFF_X9_Y6_N23
\RX[43]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[43]~83_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[43]~_emulated_regout\);

-- Location: LCCOMB_X8_Y6_N10
\RX[43]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[43]~82_combout\ = (\rst~combout\ & ((\RX[43]~_emulated_regout\ $ (\RX[43]~81_combout\)))) # (!\rst~combout\ & (\X~combout\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(43),
	datab => \RX[43]~_emulated_regout\,
	datac => \rst~combout\,
	datad => \RX[43]~81_combout\,
	combout => \RX[43]~82_combout\);

-- Location: LCFF_X12_Y6_N9
\RX[42]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[42]~87_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[42]~_emulated_regout\);

-- Location: LCCOMB_X8_Y6_N16
\RX[42]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[42]~86_combout\ = (\rst~combout\ & (\RX[42]~85_combout\ $ (((\RX[42]~_emulated_regout\))))) # (!\rst~combout\ & (((\X~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \RX[42]~85_combout\,
	datac => \X~combout\(42),
	datad => \RX[42]~_emulated_regout\,
	combout => \RX[42]~86_combout\);

-- Location: LCFF_X12_Y6_N11
\RX[41]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[41]~91_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[41]~_emulated_regout\);

-- Location: LCCOMB_X8_Y6_N6
\RX[41]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[41]~90_combout\ = (\rst~combout\ & (\RX[41]~_emulated_regout\ $ (((\RX[41]~89_combout\))))) # (!\rst~combout\ & (((\X~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[41]~_emulated_regout\,
	datab => \X~combout\(41),
	datac => \rst~combout\,
	datad => \RX[41]~89_combout\,
	combout => \RX[41]~90_combout\);

-- Location: LCFF_X7_Y5_N23
\RX[39]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[39]~99_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[39]~_emulated_regout\);

-- Location: LCCOMB_X8_Y6_N20
\RX[39]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[39]~98_combout\ = (\rst~combout\ & ((\RX[39]~_emulated_regout\ $ (\RX[39]~97_combout\)))) # (!\rst~combout\ & (\X~combout\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \X~combout\(39),
	datac => \RX[39]~_emulated_regout\,
	datad => \RX[39]~97_combout\,
	combout => \RX[39]~98_combout\);

-- Location: LCFF_X9_Y6_N25
\RX[38]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[38]~103_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[38]~_emulated_regout\);

-- Location: LCCOMB_X8_Y6_N2
\RX[38]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[38]~102_combout\ = (\rst~combout\ & (\RX[38]~101_combout\ $ (((\RX[38]~_emulated_regout\))))) # (!\rst~combout\ & (((\X~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[38]~101_combout\,
	datab => \X~combout\(38),
	datac => \rst~combout\,
	datad => \RX[38]~_emulated_regout\,
	combout => \RX[38]~102_combout\);

-- Location: LCFF_X12_Y6_N1
\RX[36]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[36]~111_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[36]~_emulated_regout\);

-- Location: LCCOMB_X12_Y6_N2
\RX[36]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[36]~110_combout\ = (\rst~combout\ & (\RX[36]~_emulated_regout\ $ (((\RX[36]~109_combout\))))) # (!\rst~combout\ & (((\X~combout\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \RX[36]~_emulated_regout\,
	datac => \X~combout\(36),
	datad => \RX[36]~109_combout\,
	combout => \RX[36]~110_combout\);

-- Location: LCFF_X12_Y6_N17
\RX[34]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[34]~119_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[34]~_emulated_regout\);

-- Location: LCFF_X9_Y7_N25
\RX[31]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[31]~131_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[31]~_emulated_regout\);

-- Location: LCCOMB_X9_Y7_N14
\RX[31]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[31]~130_combout\ = (\rst~combout\ & ((\RX[31]~_emulated_regout\ $ (\RX[31]~129_combout\)))) # (!\rst~combout\ & (\X~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(31),
	datab => \rst~combout\,
	datac => \RX[31]~_emulated_regout\,
	datad => \RX[31]~129_combout\,
	combout => \RX[31]~130_combout\);

-- Location: LCFF_X12_Y5_N3
\RX[30]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[30]~135_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[30]~_emulated_regout\);

-- Location: LCCOMB_X12_Y7_N16
\RX[30]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[30]~134_combout\ = (\rst~combout\ & (\RX[30]~_emulated_regout\ $ (((\RX[30]~133_combout\))))) # (!\rst~combout\ & (((\X~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[30]~_emulated_regout\,
	datab => \rst~combout\,
	datac => \X~combout\(30),
	datad => \RX[30]~133_combout\,
	combout => \RX[30]~134_combout\);

-- Location: LCFF_X9_Y7_N13
\RX[28]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[28]~143_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[28]~_emulated_regout\);

-- Location: LCFF_X12_Y5_N17
\RX[25]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[25]~155_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[25]~_emulated_regout\);

-- Location: LCCOMB_X12_Y4_N28
\RX[25]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[25]~154_combout\ = (\rst~combout\ & (\RX[25]~_emulated_regout\ $ (((\RX[25]~153_combout\))))) # (!\rst~combout\ & (((\X~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[25]~_emulated_regout\,
	datab => \X~combout\(25),
	datac => \RX[25]~153_combout\,
	datad => \rst~combout\,
	combout => \RX[25]~154_combout\);

-- Location: LCFF_X13_Y9_N21
\RX[24]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[24]~159_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[24]~_emulated_regout\);

-- Location: LCFF_X8_Y5_N17
\RX[22]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[22]~167_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[22]~_emulated_regout\);

-- Location: LCCOMB_X8_Y5_N2
\RX[22]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[22]~166_combout\ = (\rst~combout\ & ((\RX[22]~_emulated_regout\ $ (\RX[22]~165_combout\)))) # (!\rst~combout\ & (\X~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(22),
	datab => \rst~combout\,
	datac => \RX[22]~_emulated_regout\,
	datad => \RX[22]~165_combout\,
	combout => \RX[22]~166_combout\);

-- Location: LCFF_X13_Y9_N13
\RX[21]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[21]~171_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[21]~_emulated_regout\);

-- Location: LCCOMB_X13_Y9_N26
\RX[21]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[21]~170_combout\ = (\rst~combout\ & ((\RX[21]~169_combout\ $ (\RX[21]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \X~combout\(21),
	datac => \RX[21]~169_combout\,
	datad => \RX[21]~_emulated_regout\,
	combout => \RX[21]~170_combout\);

-- Location: LCFF_X12_Y9_N21
\RX[16]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[16]~191_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[16]~_emulated_regout\);

-- Location: LCFF_X12_Y9_N17
\RX[15]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[15]~195_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[15]~_emulated_regout\);

-- Location: LCCOMB_X12_Y9_N18
\RX[15]~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[15]~194_combout\ = (\rst~combout\ & (\RX[15]~_emulated_regout\ $ (((\RX[15]~193_combout\))))) # (!\rst~combout\ & (((\X~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[15]~_emulated_regout\,
	datab => \X~combout\(15),
	datac => \RX[15]~193_combout\,
	datad => \rst~combout\,
	combout => \RX[15]~194_combout\);

-- Location: LCFF_X12_Y9_N25
\RX[14]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[14]~199_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[14]~_emulated_regout\);

-- Location: LCCOMB_X12_Y9_N10
\RX[14]~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[14]~198_combout\ = (\rst~combout\ & (\RX[14]~_emulated_regout\ $ (((\RX[14]~197_combout\))))) # (!\rst~combout\ & (((\X~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[14]~_emulated_regout\,
	datab => \X~combout\(14),
	datac => \rst~combout\,
	datad => \RX[14]~197_combout\,
	combout => \RX[14]~198_combout\);

-- Location: LCFF_X12_Y8_N13
\RX[12]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RX[12]~207_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[12]~_emulated_regout\);

-- Location: LCCOMB_X12_Y8_N12
\RX[12]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[12]~206_combout\ = (\rst~combout\ & (\RX[12]~205_combout\ $ (((\RX[12]~_emulated_regout\))))) # (!\rst~combout\ & (((\X~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[12]~205_combout\,
	datab => \X~combout\(12),
	datac => \RX[12]~_emulated_regout\,
	datad => \rst~combout\,
	combout => \RX[12]~206_combout\);

-- Location: LCFF_X9_Y8_N15
\RX[11]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[11]~211_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[11]~_emulated_regout\);

-- Location: LCCOMB_X9_Y8_N12
\RX[11]~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[11]~210_combout\ = (\rst~combout\ & ((\RX[11]~_emulated_regout\ $ (\RX[11]~209_combout\)))) # (!\rst~combout\ & (\X~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(11),
	datab => \rst~combout\,
	datac => \RX[11]~_emulated_regout\,
	datad => \RX[11]~209_combout\,
	combout => \RX[11]~210_combout\);

-- Location: LCFF_X9_Y8_N11
\RX[10]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[10]~215_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[10]~_emulated_regout\);

-- Location: LCFF_X12_Y8_N11
\RX[7]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[7]~227_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[7]~_emulated_regout\);

-- Location: LCCOMB_X12_Y8_N8
\RX[7]~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[7]~226_combout\ = (\rst~combout\ & (\RX[7]~_emulated_regout\ $ (((\RX[7]~225_combout\))))) # (!\rst~combout\ & (((\X~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[7]~_emulated_regout\,
	datab => \X~combout\(7),
	datac => \rst~combout\,
	datad => \RX[7]~225_combout\,
	combout => \RX[7]~226_combout\);

-- Location: LCFF_X12_Y5_N7
\RX[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[6]~231_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[6]~_emulated_regout\);

-- Location: LCCOMB_X12_Y4_N30
\RX[6]~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[6]~230_combout\ = (\rst~combout\ & (\RX[6]~_emulated_regout\ $ (((\RX[6]~229_combout\))))) # (!\rst~combout\ & (((\X~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[6]~_emulated_regout\,
	datab => \X~combout\(6),
	datac => \rst~combout\,
	datad => \RX[6]~229_combout\,
	combout => \RX[6]~230_combout\);

-- Location: LCFF_X9_Y5_N25
\RX[5]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[5]~235_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[5]~_emulated_regout\);

-- Location: LCFF_X9_Y5_N17
\RX[4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[4]~239_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[4]~_emulated_regout\);

-- Location: LCCOMB_X9_Y5_N2
\RX[4]~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[4]~238_combout\ = (\rst~combout\ & ((\RX[4]~_emulated_regout\ $ (\RX[4]~237_combout\)))) # (!\rst~combout\ & (\X~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(4),
	datab => \rst~combout\,
	datac => \RX[4]~_emulated_regout\,
	datad => \RX[4]~237_combout\,
	combout => \RX[4]~238_combout\);

-- Location: LCFF_X12_Y6_N25
\RX[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[2]~247_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[2]~_emulated_regout\);

-- Location: LCFF_X12_Y5_N25
\RX[0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[0]~255_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[0]~_emulated_regout\);

-- Location: LCCOMB_X19_Y4_N18
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add4~0_combout\ & ((\current_state.iter_state~regout\) # ((i(0) & \RX~258_combout\)))) # (!\Add4~0_combout\ & (((i(0) & \RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \current_state.iter_state~regout\,
	datac => i(0),
	datad => \RX~258_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X12_Y5_N28
\RX[63]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[63]~3_combout\ = \RX[63]~1_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~126_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX[63]~1_combout\,
	datac => \X~combout\(63),
	datad => \Add1~126_combout\,
	combout => \RX[63]~3_combout\);

-- Location: LCCOMB_X15_Y5_N28
\Selector136~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector136~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~126_combout\))) # (!\LessThan0~126_combout\ & (\Add2~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \LessThan0~126_combout\,
	datac => \Add2~126_combout\,
	datad => \Add3~126_combout\,
	combout => \Selector136~2_combout\);

-- Location: LCCOMB_X15_Y5_N24
\Selector138~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector138~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~122_combout\))) # (!\LessThan0~126_combout\ & (\Add2~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \LessThan0~126_combout\,
	datac => \Add2~122_combout\,
	datad => \Add3~122_combout\,
	combout => \Selector138~2_combout\);

-- Location: LCCOMB_X15_Y5_N30
\Selector141~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector141~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~116_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~116_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~116_combout\,
	datac => \Add2~116_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector141~2_combout\);

-- Location: LCCOMB_X19_Y5_N20
\Selector144~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector144~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~110_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~110_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add2~110_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector144~2_combout\);

-- Location: LCCOMB_X19_Y5_N10
\Selector147~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~104_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~104_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add2~104_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector147~2_combout\);

-- Location: LCCOMB_X17_Y4_N0
\Selector148~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector148~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~102_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~102_combout\,
	datac => \Add2~102_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector148~2_combout\);

-- Location: LCCOMB_X17_Y4_N8
\Selector150~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector150~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~98_combout\))) # (!\LessThan0~126_combout\ & (\Add2~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add2~98_combout\,
	datac => \Add3~98_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector150~2_combout\);

-- Location: LCCOMB_X17_Y4_N22
\Selector151~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector151~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~96_combout\))) # (!\LessThan0~126_combout\ & (\Add2~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add2~96_combout\,
	datac => \Add3~96_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector151~2_combout\);

-- Location: LCCOMB_X19_Y6_N22
\Selector89~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\current_state.iter_state~regout\ & ((RV(48)) # ((\RX~258_combout\ & RV(46))))) # (!\current_state.iter_state~regout\ & (((\RX~258_combout\ & RV(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(48),
	datac => \RX~258_combout\,
	datad => RV(46),
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X15_Y6_N18
\Selector156~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector156~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~86_combout\))) # (!\LessThan0~126_combout\ & (\Add2~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~86_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add3~86_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector156~2_combout\);

-- Location: LCCOMB_X15_Y6_N8
\Selector157~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector157~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~84_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~84_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \LessThan0~126_combout\,
	datad => \Add2~84_combout\,
	combout => \Selector157~2_combout\);

-- Location: LCCOMB_X15_Y6_N10
\Selector158~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector158~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~82_combout\))) # (!\LessThan0~126_combout\ & (\Add2~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~82_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \LessThan0~126_combout\,
	datad => \Add3~82_combout\,
	combout => \Selector158~2_combout\);

-- Location: LCCOMB_X19_Y6_N18
\Selector97~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (RV(40) & ((\current_state.iter_state~regout\) # ((RV(38) & \RX~258_combout\)))) # (!RV(40) & (RV(38) & ((\RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(40),
	datab => RV(38),
	datac => \current_state.iter_state~regout\,
	datad => \RX~258_combout\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X17_Y4_N6
\Selector164~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector164~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~70_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~70_combout\,
	datac => \Add2~70_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector164~2_combout\);

-- Location: LCCOMB_X12_Y5_N20
\RX[62]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[62]~7_combout\ = \RX[62]~5_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~124_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(62),
	datac => \RX[62]~5_combout\,
	datad => \Add1~124_combout\,
	combout => \RX[62]~7_combout\);

-- Location: LCCOMB_X9_Y8_N24
\RX[60]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[60]~15_combout\ = \RX[60]~13_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~120_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(60),
	datac => \RX[60]~13_combout\,
	datad => \Add1~120_combout\,
	combout => \RX[60]~15_combout\);

-- Location: LCCOMB_X12_Y8_N20
\RX[58]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[58]~23_combout\ = \RX[58]~21_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~116_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(58),
	datac => \Add1~116_combout\,
	datad => \RX[58]~21_combout\,
	combout => \RX[58]~23_combout\);

-- Location: LCCOMB_X9_Y5_N4
\RX[57]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[57]~27_combout\ = \RX[57]~25_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~114_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(57),
	datac => \RX[57]~25_combout\,
	datad => \Add1~114_combout\,
	combout => \RX[57]~27_combout\);

-- Location: LCCOMB_X9_Y5_N28
\RX[53]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[53]~43_combout\ = \RX[53]~41_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~106_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX[53]~41_combout\,
	datac => \Add1~106_combout\,
	datad => \X~combout\(53),
	combout => \RX[53]~43_combout\);

-- Location: LCCOMB_X9_Y5_N6
\RX[48]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[48]~63_combout\ = \RX[48]~61_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~96_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(48),
	datab => \Add1~96_combout\,
	datac => \RX[48]~61_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[48]~63_combout\);

-- Location: LCCOMB_X9_Y6_N16
\RX[47]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[47]~67_combout\ = \RX[47]~65_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~94_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~94_combout\,
	datab => \X~combout\(47),
	datac => \current_state.iter_state~regout\,
	datad => \RX[47]~65_combout\,
	combout => \RX[47]~67_combout\);

-- Location: LCCOMB_X9_Y6_N8
\RX[46]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[46]~71_combout\ = \RX[46]~69_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~92_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(46),
	datab => \RX[46]~69_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \Add1~92_combout\,
	combout => \RX[46]~71_combout\);

-- Location: LCCOMB_X9_Y6_N10
\RX[45]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[45]~75_combout\ = \RX[45]~73_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~90_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~90_combout\,
	datab => \RX[45]~73_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \X~combout\(45),
	combout => \RX[45]~75_combout\);

-- Location: LCCOMB_X9_Y6_N22
\RX[43]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[43]~83_combout\ = \RX[43]~81_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~86_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(43),
	datab => \Add1~86_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \RX[43]~81_combout\,
	combout => \RX[43]~83_combout\);

-- Location: LCCOMB_X12_Y6_N8
\RX[42]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[42]~87_combout\ = \RX[42]~85_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~84_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(42),
	datac => \RX[42]~85_combout\,
	datad => \Add1~84_combout\,
	combout => \RX[42]~87_combout\);

-- Location: LCCOMB_X12_Y6_N10
\RX[41]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[41]~91_combout\ = \RX[41]~89_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~82_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(41),
	datab => \RX[41]~89_combout\,
	datac => \Add1~82_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[41]~91_combout\);

-- Location: LCCOMB_X7_Y5_N22
\RX[39]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[39]~99_combout\ = \RX[39]~97_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~78_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(39),
	datab => \RX[39]~97_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \Add1~78_combout\,
	combout => \RX[39]~99_combout\);

-- Location: LCCOMB_X9_Y6_N24
\RX[38]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[38]~103_combout\ = \RX[38]~101_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~76_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[38]~101_combout\,
	datab => \Add1~76_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \X~combout\(38),
	combout => \RX[38]~103_combout\);

-- Location: LCCOMB_X12_Y6_N0
\RX[36]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[36]~111_combout\ = \RX[36]~109_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~72_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[36]~109_combout\,
	datab => \X~combout\(36),
	datac => \Add1~72_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[36]~111_combout\);

-- Location: LCCOMB_X12_Y6_N16
\RX[34]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[34]~119_combout\ = \RX[34]~117_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~68_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(34),
	datac => \RX[34]~117_combout\,
	datad => \Add1~68_combout\,
	combout => \RX[34]~119_combout\);

-- Location: LCCOMB_X9_Y7_N24
\RX[31]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[31]~131_combout\ = \RX[31]~129_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~62_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(31),
	datab => \Add1~62_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \RX[31]~129_combout\,
	combout => \RX[31]~131_combout\);

-- Location: LCCOMB_X12_Y5_N2
\RX[30]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[30]~135_combout\ = \RX[30]~133_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~60_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(30),
	datac => \RX[30]~133_combout\,
	datad => \Add1~60_combout\,
	combout => \RX[30]~135_combout\);

-- Location: LCCOMB_X9_Y7_N12
\RX[28]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[28]~143_combout\ = \RX[28]~141_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~56_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \RX[28]~141_combout\,
	datad => \X~combout\(28),
	combout => \RX[28]~143_combout\);

-- Location: LCCOMB_X12_Y5_N16
\RX[25]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[25]~155_combout\ = \RX[25]~153_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~50_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(25),
	datac => \RX[25]~153_combout\,
	datad => \Add1~50_combout\,
	combout => \RX[25]~155_combout\);

-- Location: LCCOMB_X13_Y9_N20
\RX[24]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[24]~159_combout\ = \RX[24]~157_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~48_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(24),
	datac => \Add1~48_combout\,
	datad => \RX[24]~157_combout\,
	combout => \RX[24]~159_combout\);

-- Location: LCCOMB_X8_Y5_N16
\RX[22]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[22]~167_combout\ = \RX[22]~165_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~44_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[22]~165_combout\,
	datab => \Add1~44_combout\,
	datac => \X~combout\(22),
	datad => \current_state.iter_state~regout\,
	combout => \RX[22]~167_combout\);

-- Location: LCCOMB_X13_Y9_N12
\RX[21]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[21]~171_combout\ = \RX[21]~169_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~42_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(21),
	datac => \RX[21]~169_combout\,
	datad => \Add1~42_combout\,
	combout => \RX[21]~171_combout\);

-- Location: LCCOMB_X12_Y9_N20
\RX[16]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[16]~191_combout\ = \RX[16]~189_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~32_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \RX[16]~189_combout\,
	datac => \X~combout\(16),
	datad => \current_state.iter_state~regout\,
	combout => \RX[16]~191_combout\);

-- Location: LCCOMB_X12_Y9_N16
\RX[15]~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[15]~195_combout\ = \RX[15]~193_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~30_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \X~combout\(15),
	datac => \RX[15]~193_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[15]~195_combout\);

-- Location: LCCOMB_X12_Y9_N24
\RX[14]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[14]~199_combout\ = \RX[14]~197_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~28_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[14]~197_combout\,
	datab => \X~combout\(14),
	datac => \Add1~28_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[14]~199_combout\);

-- Location: LCCOMB_X9_Y8_N2
\RX[12]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[12]~207_combout\ = \RX[12]~205_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~24_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX[12]~205_combout\,
	datac => \X~combout\(12),
	datad => \Add1~24_combout\,
	combout => \RX[12]~207_combout\);

-- Location: LCCOMB_X9_Y8_N14
\RX[11]~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[11]~211_combout\ = \RX[11]~209_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~22_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \RX[11]~209_combout\,
	datac => \X~combout\(11),
	datad => \current_state.iter_state~regout\,
	combout => \RX[11]~211_combout\);

-- Location: LCCOMB_X9_Y8_N10
\RX[10]~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[10]~215_combout\ = \RX[10]~213_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~20_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \X~combout\(10),
	datac => \RX[10]~213_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[10]~215_combout\);

-- Location: LCCOMB_X12_Y8_N10
\RX[7]~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[7]~227_combout\ = \RX[7]~225_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~14_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(7),
	datac => \Add1~14_combout\,
	datad => \RX[7]~225_combout\,
	combout => \RX[7]~227_combout\);

-- Location: LCCOMB_X12_Y5_N6
\RX[6]~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[6]~231_combout\ = \RX[6]~229_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~12_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX[6]~229_combout\,
	datac => \X~combout\(6),
	datad => \Add1~12_combout\,
	combout => \RX[6]~231_combout\);

-- Location: LCCOMB_X9_Y5_N24
\RX[5]~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[5]~235_combout\ = \RX[5]~233_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~10_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[5]~233_combout\,
	datab => \X~combout\(5),
	datac => \Add1~10_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[5]~235_combout\);

-- Location: LCCOMB_X9_Y5_N16
\RX[4]~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[4]~239_combout\ = \RX[4]~237_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~8_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(4),
	datab => \RX[4]~237_combout\,
	datac => \Add1~8_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[4]~239_combout\);

-- Location: LCCOMB_X12_Y6_N24
\RX[2]~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[2]~247_combout\ = \RX[2]~245_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~4_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(2),
	datab => \RX[2]~245_combout\,
	datac => \Add1~4_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[2]~247_combout\);

-- Location: LCCOMB_X12_Y5_N24
\RX[0]~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[0]~255_combout\ = \RX[0]~253_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~0_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add1~0_combout\,
	datac => \RX[0]~253_combout\,
	datad => \X~combout\(0),
	combout => \RX[0]~255_combout\);

-- Location: LCCOMB_X15_Y5_N16
\Selector136~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector136~3_combout\ = (\Selector136~2_combout\) # ((RZ(62) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(62),
	datad => \Selector136~2_combout\,
	combout => \Selector136~3_combout\);

-- Location: LCCOMB_X15_Y5_N4
\Selector138~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector138~3_combout\ = (\Selector138~2_combout\) # ((RZ(60) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(60),
	datad => \Selector138~2_combout\,
	combout => \Selector138~3_combout\);

-- Location: LCCOMB_X15_Y5_N6
\Selector141~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector141~3_combout\ = (\Selector141~2_combout\) # ((RZ(57) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(57),
	datad => \Selector141~2_combout\,
	combout => \Selector141~3_combout\);

-- Location: LCCOMB_X19_Y5_N4
\Selector144~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector144~3_combout\ = (\Selector144~2_combout\) # ((RZ(54) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(54),
	datad => \Selector144~2_combout\,
	combout => \Selector144~3_combout\);

-- Location: LCCOMB_X19_Y5_N14
\Selector147~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~3_combout\ = (\Selector147~2_combout\) # ((RZ(51) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(51),
	datad => \Selector147~2_combout\,
	combout => \Selector147~3_combout\);

-- Location: LCCOMB_X17_Y4_N24
\Selector148~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector148~3_combout\ = (\Selector148~2_combout\) # ((RZ(50) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(50),
	datad => \Selector148~2_combout\,
	combout => \Selector148~3_combout\);

-- Location: LCCOMB_X17_Y4_N20
\Selector150~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector150~3_combout\ = (\Selector150~2_combout\) # ((RZ(48) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(48),
	datad => \Selector150~2_combout\,
	combout => \Selector150~3_combout\);

-- Location: LCCOMB_X17_Y4_N30
\Selector151~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector151~3_combout\ = (\Selector151~2_combout\) # ((RZ(47) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(47),
	datad => \Selector151~2_combout\,
	combout => \Selector151~3_combout\);

-- Location: LCCOMB_X15_Y6_N2
\Selector156~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector156~3_combout\ = (\Selector156~2_combout\) # ((RZ(42) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(42),
	datad => \Selector156~2_combout\,
	combout => \Selector156~3_combout\);

-- Location: LCCOMB_X15_Y6_N4
\Selector157~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector157~3_combout\ = (\Selector157~2_combout\) # ((RZ(41) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(41),
	datad => \Selector157~2_combout\,
	combout => \Selector157~3_combout\);

-- Location: LCCOMB_X15_Y6_N26
\Selector158~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector158~3_combout\ = (\Selector158~2_combout\) # ((RZ(40) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(40),
	datad => \Selector158~2_combout\,
	combout => \Selector158~3_combout\);

-- Location: LCCOMB_X17_Y4_N14
\Selector164~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector164~3_combout\ = (\Selector164~2_combout\) # ((RZ(34) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(34),
	datad => \Selector164~2_combout\,
	combout => \Selector164~3_combout\);

-- Location: LCCOMB_X12_Y5_N22
\RX[63]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[63]~1_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[63]~1_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(63),
	datab => \RX[63]~1_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[63]~1_combout\);

-- Location: LCCOMB_X12_Y5_N8
\RX[62]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[62]~5_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[62]~5_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(62),
	datac => \RX[62]~5_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[62]~5_combout\);

-- Location: LCCOMB_X8_Y5_N12
\RX[59]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[59]~17_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[59]~17_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(59),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[59]~17_combout\,
	combout => \RX[59]~17_combout\);

-- Location: LCCOMB_X12_Y8_N6
\RX[58]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[58]~21_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[58]~21_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[58]~21_combout\,
	datab => \X~combout\(58),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[58]~21_combout\);

-- Location: LCCOMB_X8_Y5_N30
\RX[57]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[57]~25_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[57]~25_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(57),
	datab => \RX[57]~25_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[57]~25_combout\);

-- Location: LCCOMB_X8_Y7_N14
\RX[55]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[55]~33_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[55]~33_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(55),
	datac => \RX[55]~33_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[55]~33_combout\);

-- Location: LCCOMB_X8_Y6_N4
\RX[53]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[53]~41_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[53]~41_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(53),
	datac => \RX[53]~41_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[53]~41_combout\);

-- Location: LCCOMB_X8_Y6_N28
\RX[46]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[46]~69_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[46]~69_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(46),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[46]~69_combout\,
	combout => \RX[46]~69_combout\);

-- Location: LCCOMB_X8_Y6_N18
\RX[43]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[43]~81_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[43]~81_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX[43]~81_combout\,
	datac => \X~combout\(43),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[43]~81_combout\);

-- Location: LCCOMB_X8_Y6_N0
\RX[42]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[42]~85_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[42]~85_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX[42]~85_combout\,
	datac => \X~combout\(42),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[42]~85_combout\);

-- Location: LCCOMB_X8_Y6_N30
\RX[41]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[41]~89_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[41]~89_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(41),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[41]~89_combout\,
	combout => \RX[41]~89_combout\);

-- Location: LCCOMB_X8_Y6_N22
\RX[39]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[39]~97_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[39]~97_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX[39]~97_combout\,
	datac => \X~combout\(39),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[39]~97_combout\);

-- Location: LCCOMB_X8_Y6_N12
\RX[38]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[38]~101_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[38]~101_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(38),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[38]~101_combout\,
	combout => \RX[38]~101_combout\);

-- Location: LCCOMB_X12_Y9_N0
\RX[37]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[37]~105_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[37]~105_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(37),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[37]~105_combout\,
	combout => \RX[37]~105_combout\);

-- Location: LCCOMB_X12_Y6_N12
\RX[36]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[36]~109_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[36]~109_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[36]~109_combout\,
	datac => \X~combout\(36),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[36]~109_combout\);

-- Location: LCCOMB_X9_Y7_N10
\RX[31]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[31]~129_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[31]~129_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[31]~129_combout\,
	datac => \X~combout\(31),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[31]~129_combout\);

-- Location: LCCOMB_X12_Y7_N28
\RX[30]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[30]~133_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[30]~133_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(30),
	datab => \RX[30]~133_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[30]~133_combout\);

-- Location: LCCOMB_X12_Y4_N20
\RX[25]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[25]~153_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[25]~153_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(25),
	datac => \RX[25]~153_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[25]~153_combout\);

-- Location: LCCOMB_X8_Y5_N10
\RX[22]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[22]~165_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[22]~165_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[22]~165_combout\,
	datac => \X~combout\(22),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[22]~165_combout\);

-- Location: LCCOMB_X13_Y9_N14
\RX[21]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[21]~169_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[21]~169_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(21),
	datac => \RX[21]~169_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[21]~169_combout\);

-- Location: LCCOMB_X12_Y9_N14
\RX[15]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[15]~193_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[15]~193_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(15),
	datac => \RX[15]~193_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[15]~193_combout\);

-- Location: LCCOMB_X12_Y9_N12
\RX[14]~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[14]~197_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[14]~197_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(14),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[14]~197_combout\,
	combout => \RX[14]~197_combout\);

-- Location: LCCOMB_X8_Y8_N24
\RX[13]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[13]~201_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[13]~201_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(13),
	datac => \RX[13]~201_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[13]~201_combout\);

-- Location: LCCOMB_X12_Y8_N24
\RX[12]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[12]~205_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[12]~205_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(12),
	datac => \RX[12]~205_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[12]~205_combout\);

-- Location: LCCOMB_X9_Y8_N30
\RX[11]~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[11]~209_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[11]~209_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(11),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[11]~209_combout\,
	combout => \RX[11]~209_combout\);

-- Location: LCCOMB_X12_Y8_N0
\RX[7]~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[7]~225_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[7]~225_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(7),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[7]~225_combout\,
	combout => \RX[7]~225_combout\);

-- Location: LCCOMB_X12_Y4_N22
\RX[6]~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[6]~229_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[6]~229_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(6),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[6]~229_combout\,
	combout => \RX[6]~229_combout\);

-- Location: LCCOMB_X9_Y5_N26
\RX[4]~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[4]~237_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[4]~237_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(4),
	datab => \RX[4]~237_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[4]~237_combout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(63),
	combout => \X~combout\(63));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(62),
	combout => \X~combout\(62));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(58),
	combout => \X~combout\(58));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(57),
	combout => \X~combout\(57));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(53),
	combout => \X~combout\(53));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(50),
	combout => \X~combout\(50));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(46),
	combout => \X~combout\(46));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(44),
	combout => \X~combout\(44));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(43),
	combout => \X~combout\(43));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(42),
	combout => \X~combout\(42));

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(41),
	combout => \X~combout\(41));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(39),
	combout => \X~combout\(39));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(38),
	combout => \X~combout\(38));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(36),
	combout => \X~combout\(36));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(33),
	combout => \X~combout\(33));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(32),
	combout => \X~combout\(32));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(31),
	combout => \X~combout\(31));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(30),
	combout => \X~combout\(30));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(25),
	combout => \X~combout\(25));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(22),
	combout => \X~combout\(22));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(21),
	combout => \X~combout\(21));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(17),
	combout => \X~combout\(17));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(15),
	combout => \X~combout\(15));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(14),
	combout => \X~combout\(14));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(12),
	combout => \X~combout\(12));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(11),
	combout => \X~combout\(11));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(7),
	combout => \X~combout\(7));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(6),
	combout => \X~combout\(6));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(4),
	combout => \X~combout\(4));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X19_Y6_N28
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\current_state.end_state~regout\ & ((\current_state.wait_state~regout\) # (\start~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.end_state~regout\,
	datac => \current_state.wait_state~regout\,
	datad => \start~combout\,
	combout => \Selector0~0_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X19_Y6_N29
\current_state.wait_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.wait_state~regout\);

-- Location: LCCOMB_X19_Y6_N2
\current_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state~12_combout\ = (!\current_state.wait_state~regout\ & \start~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.wait_state~regout\,
	datad => \start~combout\,
	combout => \current_state~12_combout\);

-- Location: LCFF_X19_Y6_N3
\current_state.init_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \current_state~12_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.init_state~regout\);

-- Location: LCCOMB_X19_Y4_N2
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\LessThan1~0_combout\ & (!i(1) & \current_state.iter_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => i(1),
	datac => \current_state.iter_state~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X19_Y4_N3
\current_state.end_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.end_state~regout\);

-- Location: LCCOMB_X15_Y4_N10
\RX~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX~258_combout\ = (\current_state.end_state~regout\) # (!\current_state.wait_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.wait_state~regout\,
	datad => \current_state.end_state~regout\,
	combout => \RX~258_combout\);

-- Location: LCCOMB_X19_Y4_N30
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add4~2_combout\ & ((\current_state.iter_state~regout\) # ((i(1) & \RX~258_combout\)))) # (!\Add4~2_combout\ & (((i(1) & \RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \current_state.iter_state~regout\,
	datac => i(1),
	datad => \RX~258_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X19_Y4_N31
\i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(1));

-- Location: LCCOMB_X19_Y4_N4
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.init_state~regout\) # ((\current_state.iter_state~regout\ & ((\LessThan1~0_combout\) # (i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \current_state.init_state~regout\,
	datac => \current_state.iter_state~regout\,
	datad => i(1),
	combout => \Selector1~0_combout\);

-- Location: LCFF_X19_Y4_N5
\current_state.iter_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.iter_state~regout\);

-- Location: LCCOMB_X15_Y8_N8
\Selector131~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (RV(6) & ((\current_state.iter_state~regout\) # ((\RX~258_combout\ & RV(4))))) # (!RV(6) & (\RX~258_combout\ & ((RV(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(6),
	datab => \RX~258_combout\,
	datac => \current_state.iter_state~regout\,
	datad => RV(4),
	combout => \Selector131~0_combout\);

-- Location: LCFF_X17_Y8_N5
\RV[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector131~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(4));

-- Location: LCCOMB_X14_Y9_N28
\Selector133~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = (RV(2) & ((\RX~258_combout\) # ((RV(4) & \current_state.iter_state~regout\)))) # (!RV(2) & (RV(4) & ((\current_state.iter_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(2),
	datab => RV(4),
	datac => \RX~258_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \Selector133~0_combout\);

-- Location: LCFF_X14_Y8_N17
\RV[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector133~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(2));

-- Location: LCCOMB_X14_Y9_N26
\Selector135~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = (RV(2) & ((\current_state.iter_state~regout\) # ((RV(0) & \RX~258_combout\)))) # (!RV(2) & (RV(0) & (\RX~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(2),
	datab => RV(0),
	datac => \RX~258_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \Selector135~0_combout\);

-- Location: LCFF_X14_Y8_N31
\RV[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector135~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(0));

-- Location: LCCOMB_X14_Y8_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (RZ(0) & (RV(0) $ (VCC))) # (!RZ(0) & (RV(0) & VCC))
-- \Add0~1\ = CARRY((RZ(0) & RV(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RZ(0),
	datab => RV(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X14_Y8_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (RZ(1) & (!\Add0~1\)) # (!RZ(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!RZ(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X17_Y8_N0
\Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY((RV(0) & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(0),
	datab => \Add0~0_combout\,
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X17_Y8_N4
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add0~4_combout\ $ (RV(2) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Add0~4_combout\ & ((RV(2)) # (!\Add2~3\))) # (!\Add0~4_combout\ & (RV(2) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => RV(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X19_Y6_N4
\Selector73~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\current_state.init_state~regout\) # ((RV(62) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.end_state~regout\,
	datab => \current_state.wait_state~regout\,
	datac => RV(62),
	datad => \current_state.init_state~regout\,
	combout => \Selector73~0_combout\);

-- Location: LCFF_X19_Y6_N5
\RV[62]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector73~0_combout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(62));

-- Location: LCCOMB_X14_Y5_N28
\Add0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~124_combout\ = ((RZ(62) $ (RV(62) $ (!\Add0~123\)))) # (GND)
-- \Add0~125\ = CARRY((RZ(62) & ((RV(62)) # (!\Add0~123\))) # (!RZ(62) & (RV(62) & !\Add0~123\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(62),
	datab => RV(62),
	datad => VCC,
	cin => \Add0~123\,
	combout => \Add0~124_combout\,
	cout => \Add0~125\);

-- Location: LCCOMB_X19_Y6_N26
\Selector75~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\current_state.iter_state~regout\ & ((RV(62)) # ((RV(60) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (((RV(60) & \RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(62),
	datac => RV(60),
	datad => \RX~258_combout\,
	combout => \Selector75~0_combout\);

-- Location: LCFF_X19_Y6_N27
\RV[60]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector75~0_combout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(60));

-- Location: LCCOMB_X19_Y6_N16
\Selector77~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\RX~258_combout\ & ((RV(58)) # ((\current_state.iter_state~regout\ & RV(60))))) # (!\RX~258_combout\ & (((\current_state.iter_state~regout\ & RV(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => RV(58),
	datac => \current_state.iter_state~regout\,
	datad => RV(60),
	combout => \Selector77~0_combout\);

-- Location: LCFF_X14_Y5_N21
\RV[58]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector77~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(58));

-- Location: LCCOMB_X14_Y4_N6
\Selector79~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (RV(56) & ((\RX~258_combout\) # ((RV(58) & \current_state.iter_state~regout\)))) # (!RV(56) & (RV(58) & ((\current_state.iter_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(56),
	datab => RV(58),
	datac => \RX~258_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \Selector79~0_combout\);

-- Location: LCFF_X14_Y5_N17
\RV[56]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector79~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(56));

-- Location: LCCOMB_X19_Y6_N14
\Selector81~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\current_state.iter_state~regout\ & ((RV(56)) # ((RV(54) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (((RV(54) & \RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(56),
	datac => RV(54),
	datad => \RX~258_combout\,
	combout => \Selector81~0_combout\);

-- Location: LCFF_X14_Y5_N31
\RV[54]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector81~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(54));

-- Location: LCCOMB_X14_Y5_N12
\Add0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = ((RZ(54) $ (RV(54) $ (!\Add0~107\)))) # (GND)
-- \Add0~109\ = CARRY((RZ(54) & ((RV(54)) # (!\Add0~107\))) # (!RZ(54) & (RV(54) & !\Add0~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(54),
	datab => RV(54),
	datad => VCC,
	cin => \Add0~107\,
	combout => \Add0~108_combout\,
	cout => \Add0~109\);

-- Location: LCCOMB_X17_Y5_N10
\Add2~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~106_combout\ = (\Add0~106_combout\ & (!\Add2~105\)) # (!\Add0~106_combout\ & ((\Add2~105\) # (GND)))
-- \Add2~107\ = CARRY((!\Add2~105\) # (!\Add0~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~106_combout\,
	datad => VCC,
	cin => \Add2~105\,
	combout => \Add2~106_combout\,
	cout => \Add2~107\);

-- Location: LCCOMB_X19_Y5_N12
\Selector146~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector146~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~106_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~106_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add2~106_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector146~2_combout\);

-- Location: LCCOMB_X19_Y5_N24
\Selector146~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector146~3_combout\ = (\Selector146~2_combout\) # ((RZ(52) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(52),
	datad => \Selector146~2_combout\,
	combout => \Selector146~3_combout\);

-- Location: LCFF_X19_Y5_N25
\RZ[52]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector146~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(52));

-- Location: LCCOMB_X15_Y4_N2
\Selector83~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (RV(54) & ((\current_state.iter_state~regout\) # ((RV(52) & \RX~258_combout\)))) # (!RV(54) & (RV(52) & ((\RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(54),
	datab => RV(52),
	datac => \current_state.iter_state~regout\,
	datad => \RX~258_combout\,
	combout => \Selector83~0_combout\);

-- Location: LCFF_X14_Y5_N25
\RV[52]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector83~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(52));

-- Location: LCCOMB_X15_Y7_N20
\Selector85~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\current_state.iter_state~regout\ & ((RV(52)) # ((\RX~258_combout\ & RV(50))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & ((RV(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RV(52),
	datad => RV(50),
	combout => \Selector85~0_combout\);

-- Location: LCFF_X14_Y5_N19
\RV[50]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector85~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(50));

-- Location: LCCOMB_X19_Y6_N20
\Selector87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\current_state.iter_state~regout\ & ((RV(50)) # ((RV(48) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (RV(48) & ((\RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(48),
	datac => RV(50),
	datad => \RX~258_combout\,
	combout => \Selector87~0_combout\);

-- Location: LCFF_X14_Y5_N1
\RV[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector87~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(48));

-- Location: LCCOMB_X14_Y6_N30
\Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (RZ(47) & (!\Add0~93\)) # (!RZ(47) & ((\Add0~93\) # (GND)))
-- \Add0~95\ = CARRY((!\Add0~93\) # (!RZ(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(47),
	datad => VCC,
	cin => \Add0~93\,
	combout => \Add0~94_combout\,
	cout => \Add0~95\);

-- Location: LCCOMB_X19_Y6_N12
\Selector91~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (RV(46) & ((\current_state.iter_state~regout\) # ((RV(44) & \RX~258_combout\)))) # (!RV(46) & (RV(44) & ((\RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(46),
	datab => RV(44),
	datac => \current_state.iter_state~regout\,
	datad => \RX~258_combout\,
	combout => \Selector91~0_combout\);

-- Location: LCFF_X14_Y6_N7
\RV[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector91~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(44));

-- Location: LCCOMB_X18_Y6_N24
\Add3~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~88_combout\ = ((\Add0~88_combout\ $ (RV(44) $ (\Add3~87\)))) # (GND)
-- \Add3~89\ = CARRY((\Add0~88_combout\ & ((!\Add3~87\) # (!RV(44)))) # (!\Add0~88_combout\ & (!RV(44) & !\Add3~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~88_combout\,
	datab => RV(44),
	datad => VCC,
	cin => \Add3~87\,
	combout => \Add3~88_combout\,
	cout => \Add3~89\);

-- Location: LCCOMB_X19_Y5_N2
\Selector155~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector155~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~88_combout\))) # (!\LessThan0~126_combout\ & (\Add2~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~88_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add3~88_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector155~2_combout\);

-- Location: LCCOMB_X19_Y5_N6
\Selector155~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector155~3_combout\ = (\Selector155~2_combout\) # ((RZ(43) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(43),
	datad => \Selector155~2_combout\,
	combout => \Selector155~3_combout\);

-- Location: LCFF_X19_Y5_N7
\RZ[43]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector155~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(43));

-- Location: LCCOMB_X19_Y6_N6
\Selector93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\current_state.iter_state~regout\ & ((RV(44)) # ((RV(42) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (RV(42) & ((\RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(42),
	datac => RV(44),
	datad => \RX~258_combout\,
	combout => \Selector93~0_combout\);

-- Location: LCFF_X14_Y6_N29
\RV[42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector93~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(42));

-- Location: LCCOMB_X19_Y6_N0
\Selector95~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (RV(40) & ((\RX~258_combout\) # ((RV(42) & \current_state.iter_state~regout\)))) # (!RV(40) & (RV(42) & (\current_state.iter_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(40),
	datab => RV(42),
	datac => \current_state.iter_state~regout\,
	datad => \RX~258_combout\,
	combout => \Selector95~0_combout\);

-- Location: LCFF_X14_Y6_N19
\RV[40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector95~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(40));

-- Location: LCCOMB_X15_Y7_N14
\Selector99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (RV(38) & ((\current_state.iter_state~regout\) # ((\RX~258_combout\ & RV(36))))) # (!RV(38) & (\RX~258_combout\ & ((RV(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(38),
	datab => \RX~258_combout\,
	datac => \current_state.iter_state~regout\,
	datad => RV(36),
	combout => \Selector99~0_combout\);

-- Location: LCFF_X14_Y6_N13
\RV[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector99~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(36));

-- Location: LCCOMB_X15_Y7_N16
\Selector101~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (RV(34) & ((\RX~258_combout\) # ((\current_state.iter_state~regout\ & RV(36))))) # (!RV(34) & (((\current_state.iter_state~regout\ & RV(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(34),
	datab => \RX~258_combout\,
	datac => \current_state.iter_state~regout\,
	datad => RV(36),
	combout => \Selector101~0_combout\);

-- Location: LCFF_X14_Y6_N15
\RV[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector101~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(34));

-- Location: LCCOMB_X15_Y7_N22
\Selector103~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (RV(32) & ((\RX~258_combout\) # ((\current_state.iter_state~regout\ & RV(34))))) # (!RV(32) & (((\current_state.iter_state~regout\ & RV(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(32),
	datab => \RX~258_combout\,
	datac => \current_state.iter_state~regout\,
	datad => RV(34),
	combout => \Selector103~0_combout\);

-- Location: LCFF_X14_Y6_N17
\RV[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector103~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(32));

-- Location: LCCOMB_X15_Y7_N28
\Selector105~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\current_state.iter_state~regout\ & ((RV(32)) # ((\RX~258_combout\ & RV(30))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RV(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RV(30),
	datad => RV(32),
	combout => \Selector105~0_combout\);

-- Location: LCFF_X14_Y7_N17
\RV[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector105~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(30));

-- Location: LCCOMB_X15_Y7_N10
\Selector107~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\current_state.iter_state~regout\ & ((RV(30)) # ((\RX~258_combout\ & RV(28))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RV(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RV(28),
	datad => RV(30),
	combout => \Selector107~0_combout\);

-- Location: LCFF_X14_Y7_N7
\RV[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector107~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(28));

-- Location: LCCOMB_X15_Y7_N8
\Selector109~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\current_state.iter_state~regout\ & ((RV(28)) # ((\RX~258_combout\ & RV(26))))) # (!\current_state.iter_state~regout\ & (((\RX~258_combout\ & RV(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(28),
	datac => \RX~258_combout\,
	datad => RV(26),
	combout => \Selector109~0_combout\);

-- Location: LCFF_X14_Y7_N5
\RV[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector109~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(26));

-- Location: LCCOMB_X14_Y7_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((RZ(26) $ (RV(26) $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((RZ(26) & ((RV(26)) # (!\Add0~51\))) # (!RZ(26) & (RV(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(26),
	datab => RV(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X15_Y7_N26
\Selector111~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\current_state.iter_state~regout\ & ((RV(26)) # ((RV(24) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (RV(24) & (\RX~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(24),
	datac => \RX~258_combout\,
	datad => RV(26),
	combout => \Selector111~0_combout\);

-- Location: LCFF_X14_Y7_N19
\RV[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector111~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(24));

-- Location: LCCOMB_X14_Y7_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (RZ(21) & (!\Add0~41\)) # (!RZ(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!RZ(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X15_Y7_N4
\Selector113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\current_state.iter_state~regout\ & ((RV(24)) # ((RV(22) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (RV(22) & (\RX~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(22),
	datac => \RX~258_combout\,
	datad => RV(24),
	combout => \Selector113~0_combout\);

-- Location: LCFF_X14_Y7_N25
\RV[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector113~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(22));

-- Location: LCCOMB_X15_Y7_N6
\Selector115~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\current_state.iter_state~regout\ & ((RV(22)) # ((RV(20) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (RV(20) & (\RX~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(20),
	datac => \RX~258_combout\,
	datad => RV(22),
	combout => \Selector115~0_combout\);

-- Location: LCFF_X14_Y7_N11
\RV[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector115~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(20));

-- Location: LCCOMB_X15_Y7_N24
\Selector117~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (\current_state.iter_state~regout\ & ((RV(20)) # ((\RX~258_combout\ & RV(18))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & ((RV(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RV(20),
	datad => RV(18),
	combout => \Selector117~0_combout\);

-- Location: LCFF_X14_Y7_N27
\RV[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector117~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(18));

-- Location: LCCOMB_X14_Y7_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((RZ(18) $ (RV(18) $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((RZ(18) & ((RV(18)) # (!\Add0~35\))) # (!RZ(18) & (RV(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(18),
	datab => RV(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X12_Y7_N20
\Selector119~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (RV(18) & ((\current_state.iter_state~regout\) # ((\RX~258_combout\ & RV(16))))) # (!RV(18) & (\RX~258_combout\ & ((RV(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RV(18),
	datab => \RX~258_combout\,
	datac => \current_state.iter_state~regout\,
	datad => RV(16),
	combout => \Selector119~0_combout\);

-- Location: LCFF_X14_Y7_N3
\RV[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector119~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(16));

-- Location: LCCOMB_X14_Y7_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((RZ(16) $ (RV(16) $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((RZ(16) & ((RV(16)) # (!\Add0~31\))) # (!RZ(16) & (RV(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(16),
	datab => RV(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X15_Y7_N2
\Selector121~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\current_state.iter_state~regout\ & ((RV(16)) # ((\RX~258_combout\ & RV(14))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RV(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RV(14),
	datad => RV(16),
	combout => \Selector121~0_combout\);

-- Location: LCFF_X15_Y7_N3
\RV[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector121~0_combout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(14));

-- Location: LCCOMB_X15_Y7_N0
\Selector123~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\current_state.iter_state~regout\ & ((RV(14)) # ((\RX~258_combout\ & RV(12))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RV(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RV(12),
	datad => RV(14),
	combout => \Selector123~0_combout\);

-- Location: LCFF_X15_Y7_N1
\RV[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector123~0_combout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(12));

-- Location: LCCOMB_X14_Y8_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((RZ(12) $ (RV(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((RZ(12) & ((RV(12)) # (!\Add0~23\))) # (!RZ(12) & (RV(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(12),
	datab => RV(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X15_Y7_N18
\Selector125~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\current_state.iter_state~regout\ & ((RV(12)) # ((\RX~258_combout\ & RV(10))))) # (!\current_state.iter_state~regout\ & (((\RX~258_combout\ & RV(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(12),
	datac => \RX~258_combout\,
	datad => RV(10),
	combout => \Selector125~0_combout\);

-- Location: LCFF_X14_Y8_N29
\RV[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector125~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(10));

-- Location: LCCOMB_X14_Y8_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((RZ(10) $ (RV(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((RZ(10) & ((RV(10)) # (!\Add0~19\))) # (!RZ(10) & (RV(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(10),
	datab => RV(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X15_Y8_N14
\Selector127~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\current_state.iter_state~regout\ & ((RV(10)) # ((RV(8) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (RV(8) & (\RX~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(8),
	datac => \RX~258_combout\,
	datad => RV(10),
	combout => \Selector127~0_combout\);

-- Location: LCFF_X14_Y8_N19
\RV[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector127~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(8));

-- Location: LCCOMB_X13_Y9_N16
\Selector129~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\current_state.iter_state~regout\ & ((RV(8)) # ((RV(6) & \RX~258_combout\)))) # (!\current_state.iter_state~regout\ & (RV(6) & ((\RX~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => RV(6),
	datac => RV(8),
	datad => \RX~258_combout\,
	combout => \Selector129~0_combout\);

-- Location: LCFF_X17_Y8_N27
\RV[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector129~0_combout\,
	sload => VCC,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RV(6));

-- Location: LCCOMB_X17_Y8_N12
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add0~12_combout\ $ (RV(6) $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Add0~12_combout\ & ((RV(6)) # (!\Add2~11\))) # (!\Add0~12_combout\ & (RV(6) & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => RV(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X13_Y4_N0
\Selector193~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector193~0_combout\ = (\LessThan0~126_combout\ & (RZ(6))) # (!\LessThan0~126_combout\ & ((\Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => RZ(6),
	datac => \LessThan0~126_combout\,
	datad => \Add2~12_combout\,
	combout => \Selector193~0_combout\);

-- Location: LCCOMB_X13_Y4_N10
\Selector193~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector193~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector193~0_combout\) # ((\RX~258_combout\ & RZ(5))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(5),
	datad => \Selector193~0_combout\,
	combout => \Selector193~1_combout\);

-- Location: LCFF_X13_Y4_N11
\RZ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector193~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(5));

-- Location: LCCOMB_X14_Y8_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((RV(2) $ (RZ(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((RV(2) & ((RZ(2)) # (!\Add0~3\))) # (!RV(2) & (RZ(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(2),
	datab => RZ(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X14_Y8_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (RZ(3) & (!\Add0~5\)) # (!RZ(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!RZ(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X14_Y8_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((RV(4) $ (RZ(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((RV(4) & ((RZ(4)) # (!\Add0~7\))) # (!RV(4) & (RZ(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(4),
	datab => RZ(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X14_Y8_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (RZ(5) & (!\Add0~9\)) # (!RZ(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!RZ(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X17_Y8_N6
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add0~6_combout\ & (!\Add2~5\)) # (!\Add0~6_combout\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X17_Y8_N8
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add0~8_combout\ $ (RV(4) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add0~8_combout\ & ((RV(4)) # (!\Add2~7\))) # (!\Add0~8_combout\ & (RV(4) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => RV(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X17_Y8_N10
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add0~10_combout\ & (!\Add2~9\)) # (!\Add0~10_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X17_Y8_N14
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add0~14_combout\ & (!\Add2~13\)) # (!\Add0~14_combout\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X17_Y8_N18
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add0~18_combout\ & (!\Add2~17\)) # (!\Add0~18_combout\ & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X14_Y4_N28
\Selector190~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector190~0_combout\ = (\LessThan0~126_combout\ & (RZ(9))) # (!\LessThan0~126_combout\ & ((\Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RZ(9),
	datac => \Add2~18_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector190~0_combout\);

-- Location: LCCOMB_X14_Y4_N30
\Selector190~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector190~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector190~0_combout\) # ((\RX~258_combout\ & RZ(8))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(8),
	datad => \Selector190~0_combout\,
	combout => \Selector190~1_combout\);

-- Location: LCFF_X14_Y4_N31
\RZ[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector190~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(8));

-- Location: LCCOMB_X17_Y8_N16
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((RV(8) $ (\Add0~16_combout\ $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((RV(8) & ((\Add0~16_combout\) # (!\Add2~15\))) # (!RV(8) & (\Add0~16_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(8),
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X14_Y4_N26
\Selector191~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector191~0_combout\ = (\LessThan0~126_combout\ & (RZ(8))) # (!\LessThan0~126_combout\ & ((\Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => RZ(8),
	datac => \Add2~16_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector191~0_combout\);

-- Location: LCCOMB_X14_Y4_N20
\Selector191~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector191~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector191~0_combout\) # ((\RX~258_combout\ & RZ(7))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(7),
	datad => \Selector191~0_combout\,
	combout => \Selector191~1_combout\);

-- Location: LCFF_X14_Y4_N21
\RZ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector191~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(7));

-- Location: LCCOMB_X14_Y4_N12
\Selector192~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector192~0_combout\ = (\LessThan0~126_combout\ & ((RZ(7)))) # (!\LessThan0~126_combout\ & (\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datac => RZ(7),
	datad => \LessThan0~126_combout\,
	combout => \Selector192~0_combout\);

-- Location: LCCOMB_X14_Y4_N14
\Selector192~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector192~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector192~0_combout\) # ((\RX~258_combout\ & RZ(6))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(6),
	datad => \Selector192~0_combout\,
	combout => \Selector192~1_combout\);

-- Location: LCFF_X14_Y4_N15
\RZ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector192~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(6));

-- Location: LCCOMB_X14_Y8_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((RV(6) $ (RZ(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((RV(6) & ((RZ(6)) # (!\Add0~11\))) # (!RV(6) & (RZ(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(6),
	datab => RZ(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X14_Y8_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (RZ(7) & (!\Add0~13\)) # (!RZ(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!RZ(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X14_Y8_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((RZ(8) $ (RV(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((RZ(8) & ((RV(8)) # (!\Add0~15\))) # (!RZ(8) & (RV(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(8),
	datab => RV(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X17_Y8_N20
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((RV(10) $ (\Add0~20_combout\ $ (!\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((RV(10) & ((\Add0~20_combout\) # (!\Add2~19\))) # (!RV(10) & (\Add0~20_combout\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(10),
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X14_Y8_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (RZ(9) & (!\Add0~17\)) # (!RZ(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!RZ(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X18_Y8_N0
\Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY((\Add0~0_combout\) # (!RV(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => RV(0),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X18_Y8_N2
\Add3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~3_cout\ = CARRY((!\Add0~2_combout\ & !\Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add3~1_cout\,
	cout => \Add3~3_cout\);

-- Location: LCCOMB_X18_Y8_N4
\Add3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~5_cout\ = CARRY((RV(2) & (\Add0~4_combout\ & !\Add3~3_cout\)) # (!RV(2) & ((\Add0~4_combout\) # (!\Add3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(2),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add3~3_cout\,
	cout => \Add3~5_cout\);

-- Location: LCCOMB_X18_Y8_N6
\Add3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~7_cout\ = CARRY((!\Add0~6_combout\ & !\Add3~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => VCC,
	cin => \Add3~5_cout\,
	cout => \Add3~7_cout\);

-- Location: LCCOMB_X18_Y8_N8
\Add3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~9_cout\ = CARRY((\Add0~8_combout\ & ((!\Add3~7_cout\) # (!RV(4)))) # (!\Add0~8_combout\ & (!RV(4) & !\Add3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => RV(4),
	datad => VCC,
	cin => \Add3~7_cout\,
	cout => \Add3~9_cout\);

-- Location: LCCOMB_X18_Y8_N10
\Add3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~11_cout\ = CARRY((!\Add0~10_combout\ & !\Add3~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add3~9_cout\,
	cout => \Add3~11_cout\);

-- Location: LCCOMB_X18_Y8_N12
\Add3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~13_cout\ = CARRY((\Add0~12_combout\ & ((!\Add3~11_cout\) # (!RV(6)))) # (!\Add0~12_combout\ & (!RV(6) & !\Add3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => RV(6),
	datad => VCC,
	cin => \Add3~11_cout\,
	cout => \Add3~13_cout\);

-- Location: LCCOMB_X18_Y8_N14
\Add3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~15_cout\ = CARRY((!\Add0~14_combout\ & !\Add3~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => VCC,
	cin => \Add3~13_cout\,
	cout => \Add3~15_cout\);

-- Location: LCCOMB_X18_Y8_N16
\Add3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~17_cout\ = CARRY((RV(8) & (\Add0~16_combout\ & !\Add3~15_cout\)) # (!RV(8) & ((\Add0~16_combout\) # (!\Add3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(8),
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add3~15_cout\,
	cout => \Add3~17_cout\);

-- Location: LCCOMB_X18_Y8_N18
\Add3~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~19_cout\ = CARRY((!\Add0~18_combout\ & !\Add3~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \Add3~17_cout\,
	cout => \Add3~19_cout\);

-- Location: LCCOMB_X18_Y8_N20
\Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((\Add0~20_combout\ $ (RV(10) $ (\Add3~19_cout\)))) # (GND)
-- \Add3~21\ = CARRY((\Add0~20_combout\ & ((!\Add3~19_cout\) # (!RV(10)))) # (!\Add0~20_combout\ & (!RV(10) & !\Add3~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => RV(10),
	datad => VCC,
	cin => \Add3~19_cout\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X14_Y4_N2
\Selector189~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector189~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~20_combout\))) # (!\LessThan0~126_combout\ & (\Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~20_combout\,
	datac => \Add3~20_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector189~0_combout\);

-- Location: LCCOMB_X14_Y4_N24
\Selector189~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector189~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector189~0_combout\) # ((\RX~258_combout\ & RZ(9))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(9),
	datad => \Selector189~0_combout\,
	combout => \Selector189~1_combout\);

-- Location: LCFF_X14_Y4_N25
\RZ[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector189~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(9));

-- Location: LCCOMB_X14_Y8_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (RZ(11) & (!\Add0~21\)) # (!RZ(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!RZ(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X17_Y8_N22
\Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add0~22_combout\ & (!\Add2~21\)) # (!\Add0~22_combout\ & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X17_Y8_N24
\Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((RV(12) $ (\Add0~24_combout\ $ (!\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((RV(12) & ((\Add0~24_combout\) # (!\Add2~23\))) # (!RV(12) & (\Add0~24_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(12),
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X14_Y9_N0
\Selector187~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector187~0_combout\ = (\LessThan0~126_combout\ & (\Add3~24_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => \Add2~24_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector187~0_combout\);

-- Location: LCCOMB_X14_Y9_N18
\Selector187~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector187~1_combout\ = (\RX~258_combout\ & ((RZ(11)) # ((\current_state.iter_state~regout\ & \Selector187~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector187~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(11),
	datad => \Selector187~0_combout\,
	combout => \Selector187~1_combout\);

-- Location: LCFF_X14_Y9_N19
\RZ[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector187~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(11));

-- Location: LCCOMB_X14_Y8_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (RZ(13) & (!\Add0~25\)) # (!RZ(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!RZ(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X14_Y8_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((RZ(14) $ (RV(14) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((RZ(14) & ((RV(14)) # (!\Add0~27\))) # (!RZ(14) & (RV(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(14),
	datab => RV(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X14_Y8_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (RZ(15) & (!\Add0~29\)) # (!RZ(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!RZ(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X18_Y8_N22
\Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Add0~22_combout\ & (\Add3~21\ & VCC)) # (!\Add0~22_combout\ & (!\Add3~21\))
-- \Add3~23\ = CARRY((!\Add0~22_combout\ & !\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X18_Y8_N26
\Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Add0~26_combout\ & (\Add3~25\ & VCC)) # (!\Add0~26_combout\ & (!\Add3~25\))
-- \Add3~27\ = CARRY((!\Add0~26_combout\ & !\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X18_Y8_N28
\Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = ((RV(14) $ (\Add0~28_combout\ $ (\Add3~27\)))) # (GND)
-- \Add3~29\ = CARRY((RV(14) & (\Add0~28_combout\ & !\Add3~27\)) # (!RV(14) & ((\Add0~28_combout\) # (!\Add3~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(14),
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X18_Y8_N30
\Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\Add0~30_combout\ & (\Add3~29\ & VCC)) # (!\Add0~30_combout\ & (!\Add3~29\))
-- \Add3~31\ = CARRY((!\Add0~30_combout\ & !\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X18_Y7_N0
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = ((RV(16) $ (\Add0~32_combout\ $ (\Add3~31\)))) # (GND)
-- \Add3~33\ = CARRY((RV(16) & (\Add0~32_combout\ & !\Add3~31\)) # (!RV(16) & ((\Add0~32_combout\) # (!\Add3~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(16),
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X15_Y9_N22
\Selector183~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector183~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~32_combout\))) # (!\LessThan0~126_combout\ & (\Add2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datac => \Add3~32_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector183~0_combout\);

-- Location: LCCOMB_X15_Y9_N6
\Selector183~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector183~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector183~0_combout\) # ((\RX~258_combout\ & RZ(15))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(15),
	datad => \Selector183~0_combout\,
	combout => \Selector183~1_combout\);

-- Location: LCFF_X15_Y9_N7
\RZ[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector183~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(15));

-- Location: LCCOMB_X14_Y7_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (RZ(17) & (!\Add0~33\)) # (!RZ(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!RZ(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X17_Y8_N26
\Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add0~26_combout\ & (!\Add2~25\)) # (!\Add0~26_combout\ & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X17_Y8_N28
\Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = ((RV(14) $ (\Add0~28_combout\ $ (!\Add2~27\)))) # (GND)
-- \Add2~29\ = CARRY((RV(14) & ((\Add0~28_combout\) # (!\Add2~27\))) # (!RV(14) & (\Add0~28_combout\ & !\Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(14),
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X17_Y8_N30
\Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add0~30_combout\ & (!\Add2~29\)) # (!\Add0~30_combout\ & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X17_Y7_N2
\Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Add0~34_combout\ & (!\Add2~33\)) # (!\Add0~34_combout\ & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X17_Y7_N4
\Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = ((RV(18) $ (\Add0~36_combout\ $ (!\Add2~35\)))) # (GND)
-- \Add2~37\ = CARRY((RV(18) & ((\Add0~36_combout\) # (!\Add2~35\))) # (!RV(18) & (\Add0~36_combout\ & !\Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(18),
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X18_Y7_N2
\Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\Add0~34_combout\ & (\Add3~33\ & VCC)) # (!\Add0~34_combout\ & (!\Add3~33\))
-- \Add3~35\ = CARRY((!\Add0~34_combout\ & !\Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X18_Y7_N4
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = ((RV(18) $ (\Add0~36_combout\ $ (\Add3~35\)))) # (GND)
-- \Add3~37\ = CARRY((RV(18) & (\Add0~36_combout\ & !\Add3~35\)) # (!RV(18) & ((\Add0~36_combout\) # (!\Add3~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(18),
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X14_Y9_N12
\Selector181~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector181~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~36_combout\))) # (!\LessThan0~126_combout\ & (\Add2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~36_combout\,
	datac => \Add3~36_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector181~0_combout\);

-- Location: LCCOMB_X14_Y9_N14
\Selector181~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector181~1_combout\ = (\RX~258_combout\ & ((RZ(17)) # ((\current_state.iter_state~regout\ & \Selector181~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector181~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(17),
	datad => \Selector181~0_combout\,
	combout => \Selector181~1_combout\);

-- Location: LCFF_X14_Y9_N15
\RZ[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector181~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(17));

-- Location: LCCOMB_X14_Y7_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (RZ(19) & (!\Add0~37\)) # (!RZ(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!RZ(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X17_Y7_N6
\Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Add0~38_combout\ & (!\Add2~37\)) # (!\Add0~38_combout\ & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!\Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X17_Y7_N8
\Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = ((RV(20) $ (\Add0~40_combout\ $ (!\Add2~39\)))) # (GND)
-- \Add2~41\ = CARRY((RV(20) & ((\Add0~40_combout\) # (!\Add2~39\))) # (!RV(20) & (\Add0~40_combout\ & !\Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(20),
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X18_Y7_N6
\Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\Add0~38_combout\ & (\Add3~37\ & VCC)) # (!\Add0~38_combout\ & (!\Add3~37\))
-- \Add3~39\ = CARRY((!\Add0~38_combout\ & !\Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X18_Y7_N8
\Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = ((RV(20) $ (\Add0~40_combout\ $ (\Add3~39\)))) # (GND)
-- \Add3~41\ = CARRY((RV(20) & (\Add0~40_combout\ & !\Add3~39\)) # (!RV(20) & ((\Add0~40_combout\) # (!\Add3~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(20),
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X15_Y9_N2
\Selector179~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector179~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~40_combout\))) # (!\LessThan0~126_combout\ & (\Add2~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~40_combout\,
	datac => \Add3~40_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector179~0_combout\);

-- Location: LCCOMB_X15_Y9_N26
\Selector179~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector179~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector179~0_combout\) # ((\RX~258_combout\ & RZ(19))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(19),
	datad => \Selector179~0_combout\,
	combout => \Selector179~1_combout\);

-- Location: LCFF_X15_Y9_N27
\RZ[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector179~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(19));

-- Location: LCCOMB_X14_Y7_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((RV(20) $ (RZ(20) $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((RV(20) & ((RZ(20)) # (!\Add0~39\))) # (!RV(20) & (RZ(20) & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(20),
	datab => RZ(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X18_Y7_N10
\Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\Add0~42_combout\ & (\Add3~41\ & VCC)) # (!\Add0~42_combout\ & (!\Add3~41\))
-- \Add3~43\ = CARRY((!\Add0~42_combout\ & !\Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X12_Y7_N10
\Selector178~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector178~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~42_combout\))) # (!\LessThan0~126_combout\ & (\Add2~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datac => \LessThan0~126_combout\,
	datad => \Add3~42_combout\,
	combout => \Selector178~0_combout\);

-- Location: LCCOMB_X12_Y7_N24
\Selector178~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector178~1_combout\ = (\RX~258_combout\ & ((RZ(20)) # ((\current_state.iter_state~regout\ & \Selector178~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector178~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(20),
	datad => \Selector178~0_combout\,
	combout => \Selector178~1_combout\);

-- Location: LCFF_X12_Y7_N25
\RZ[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector178~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(20));

-- Location: LCCOMB_X14_Y7_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((RV(22) $ (RZ(22) $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((RV(22) & ((RZ(22)) # (!\Add0~43\))) # (!RV(22) & (RZ(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(22),
	datab => RZ(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X17_Y7_N12
\Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = ((RV(22) $ (\Add0~44_combout\ $ (!\Add2~43\)))) # (GND)
-- \Add2~45\ = CARRY((RV(22) & ((\Add0~44_combout\) # (!\Add2~43\))) # (!RV(22) & (\Add0~44_combout\ & !\Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(22),
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X17_Y7_N14
\Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\Add0~46_combout\ & (!\Add2~45\)) # (!\Add0~46_combout\ & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!\Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~46_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X18_Y7_N12
\Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = ((RV(22) $ (\Add0~44_combout\ $ (\Add3~43\)))) # (GND)
-- \Add3~45\ = CARRY((RV(22) & (\Add0~44_combout\ & !\Add3~43\)) # (!RV(22) & ((\Add0~44_combout\) # (!\Add3~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(22),
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X18_Y7_N14
\Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\Add0~46_combout\ & (\Add3~45\ & VCC)) # (!\Add0~46_combout\ & (!\Add3~45\))
-- \Add3~47\ = CARRY((!\Add0~46_combout\ & !\Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~46_combout\,
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X15_Y8_N30
\Selector176~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector176~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~46_combout\))) # (!\LessThan0~126_combout\ & (\Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~46_combout\,
	datac => \Add3~46_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector176~0_combout\);

-- Location: LCCOMB_X15_Y8_N26
\Selector176~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector176~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector176~0_combout\) # ((\RX~258_combout\ & RZ(22))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(22),
	datad => \Selector176~0_combout\,
	combout => \Selector176~1_combout\);

-- Location: LCFF_X15_Y8_N27
\RZ[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector176~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(22));

-- Location: LCCOMB_X14_Y7_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (RZ(23) & (!\Add0~45\)) # (!RZ(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!RZ(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X17_Y7_N16
\Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = ((\Add0~48_combout\ $ (RV(24) $ (!\Add2~47\)))) # (GND)
-- \Add2~49\ = CARRY((\Add0~48_combout\ & ((RV(24)) # (!\Add2~47\))) # (!\Add0~48_combout\ & (RV(24) & !\Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => RV(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X15_Y8_N12
\Selector175~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector175~0_combout\ = (\LessThan0~126_combout\ & (\Add3~48_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~48_combout\,
	datac => \Add2~48_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector175~0_combout\);

-- Location: LCCOMB_X15_Y8_N20
\Selector175~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector175~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector175~0_combout\) # ((\RX~258_combout\ & RZ(23))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(23),
	datad => \Selector175~0_combout\,
	combout => \Selector175~1_combout\);

-- Location: LCFF_X15_Y8_N21
\RZ[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector175~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(23));

-- Location: LCCOMB_X14_Y7_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((RZ(24) $ (RV(24) $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((RZ(24) & ((RV(24)) # (!\Add0~47\))) # (!RZ(24) & (RV(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(24),
	datab => RV(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X18_Y7_N18
\Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\Add0~50_combout\ & (\Add3~49\ & VCC)) # (!\Add0~50_combout\ & (!\Add3~49\))
-- \Add3~51\ = CARRY((!\Add0~50_combout\ & !\Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X18_Y7_N20
\Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = ((RV(26) $ (\Add0~52_combout\ $ (\Add3~51\)))) # (GND)
-- \Add3~53\ = CARRY((RV(26) & (\Add0~52_combout\ & !\Add3~51\)) # (!RV(26) & ((\Add0~52_combout\) # (!\Add3~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(26),
	datab => \Add0~52_combout\,
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X12_Y7_N30
\Selector173~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector173~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~52_combout\))) # (!\LessThan0~126_combout\ & (\Add2~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~52_combout\,
	datac => \LessThan0~126_combout\,
	datad => \Add3~52_combout\,
	combout => \Selector173~0_combout\);

-- Location: LCCOMB_X12_Y7_N6
\Selector173~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector173~1_combout\ = (\RX~258_combout\ & ((RZ(25)) # ((\current_state.iter_state~regout\ & \Selector173~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector173~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(25),
	datad => \Selector173~0_combout\,
	combout => \Selector173~1_combout\);

-- Location: LCFF_X12_Y7_N7
\RZ[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector173~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(25));

-- Location: LCCOMB_X14_Y7_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (RZ(25) & (!\Add0~49\)) # (!RZ(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!RZ(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X14_Y7_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (RZ(27) & (!\Add0~53\)) # (!RZ(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!RZ(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X18_Y7_N22
\Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (\Add0~54_combout\ & (\Add3~53\ & VCC)) # (!\Add0~54_combout\ & (!\Add3~53\))
-- \Add3~55\ = CARRY((!\Add0~54_combout\ & !\Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X18_Y7_N24
\Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = ((RV(28) $ (\Add0~56_combout\ $ (\Add3~55\)))) # (GND)
-- \Add3~57\ = CARRY((RV(28) & (\Add0~56_combout\ & !\Add3~55\)) # (!RV(28) & ((\Add0~56_combout\) # (!\Add3~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(28),
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X17_Y7_N22
\Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\Add0~54_combout\ & (!\Add2~53\)) # (!\Add0~54_combout\ & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!\Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X17_Y7_N24
\Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = ((RV(28) $ (\Add0~56_combout\ $ (!\Add2~55\)))) # (GND)
-- \Add2~57\ = CARRY((RV(28) & ((\Add0~56_combout\) # (!\Add2~55\))) # (!RV(28) & (\Add0~56_combout\ & !\Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(28),
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X15_Y4_N30
\Selector171~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector171~0_combout\ = (\LessThan0~126_combout\ & (\Add3~56_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~56_combout\,
	datac => \Add2~56_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector171~0_combout\);

-- Location: LCCOMB_X15_Y4_N18
\Selector171~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector171~1_combout\ = (\RX~258_combout\ & ((RZ(27)) # ((\current_state.iter_state~regout\ & \Selector171~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector171~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(27),
	datad => \Selector171~0_combout\,
	combout => \Selector171~1_combout\);

-- Location: LCFF_X15_Y4_N19
\RZ[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector171~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(27));

-- Location: LCCOMB_X14_Y7_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((RV(28) $ (RZ(28) $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((RV(28) & ((RZ(28)) # (!\Add0~55\))) # (!RV(28) & (RZ(28) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(28),
	datab => RZ(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X17_Y7_N26
\Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\Add0~58_combout\ & (!\Add2~57\)) # (!\Add0~58_combout\ & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!\Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~58_combout\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X18_Y7_N26
\Add3~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (\Add0~58_combout\ & (\Add3~57\ & VCC)) # (!\Add0~58_combout\ & (!\Add3~57\))
-- \Add3~59\ = CARRY((!\Add0~58_combout\ & !\Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X14_Y4_N0
\Selector170~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector170~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~58_combout\))) # (!\LessThan0~126_combout\ & (\Add2~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~58_combout\,
	datac => \Add3~58_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector170~0_combout\);

-- Location: LCCOMB_X14_Y4_N22
\Selector170~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector170~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector170~0_combout\) # ((\RX~258_combout\ & RZ(28))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(28),
	datad => \Selector170~0_combout\,
	combout => \Selector170~1_combout\);

-- Location: LCFF_X14_Y4_N23
\RZ[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector170~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(28));

-- Location: LCCOMB_X14_Y7_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (RZ(29) & (!\Add0~57\)) # (!RZ(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!RZ(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X17_Y7_N28
\Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = ((RV(30) $ (\Add0~60_combout\ $ (!\Add2~59\)))) # (GND)
-- \Add2~61\ = CARRY((RV(30) & ((\Add0~60_combout\) # (!\Add2~59\))) # (!RV(30) & (\Add0~60_combout\ & !\Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(30),
	datab => \Add0~60_combout\,
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X18_Y7_N28
\Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = ((RV(30) $ (\Add0~60_combout\ $ (\Add3~59\)))) # (GND)
-- \Add3~61\ = CARRY((RV(30) & (\Add0~60_combout\ & !\Add3~59\)) # (!RV(30) & ((\Add0~60_combout\) # (!\Add3~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(30),
	datab => \Add0~60_combout\,
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X15_Y7_N30
\Selector169~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector169~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~60_combout\))) # (!\LessThan0~126_combout\ & (\Add2~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~60_combout\,
	datac => \Add3~60_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector169~0_combout\);

-- Location: LCCOMB_X15_Y7_N12
\Selector169~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector169~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector169~0_combout\) # ((\RX~258_combout\ & RZ(29))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(29),
	datad => \Selector169~0_combout\,
	combout => \Selector169~1_combout\);

-- Location: LCFF_X15_Y7_N13
\RZ[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector169~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(29));

-- Location: LCCOMB_X14_Y7_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((RV(30) $ (RZ(30) $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((RV(30) & ((RZ(30)) # (!\Add0~59\))) # (!RV(30) & (RZ(30) & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(30),
	datab => RZ(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X18_Y7_N30
\Add3~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = (\Add0~62_combout\ & (\Add3~61\ & VCC)) # (!\Add0~62_combout\ & (!\Add3~61\))
-- \Add3~63\ = CARRY((!\Add0~62_combout\ & !\Add3~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datad => VCC,
	cin => \Add3~61\,
	combout => \Add3~62_combout\,
	cout => \Add3~63\);

-- Location: LCCOMB_X15_Y6_N28
\Selector168~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector168~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~62_combout\))) # (!\LessThan0~126_combout\ & (\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \LessThan0~126_combout\,
	datad => \Add3~62_combout\,
	combout => \Selector168~2_combout\);

-- Location: LCCOMB_X15_Y6_N16
\Selector168~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector168~3_combout\ = (\Selector168~2_combout\) # ((RZ(30) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(30),
	datad => \Selector168~2_combout\,
	combout => \Selector168~3_combout\);

-- Location: LCFF_X15_Y6_N17
\RZ[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector168~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(30));

-- Location: LCCOMB_X14_Y7_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (RZ(31) & (!\Add0~61\)) # (!RZ(31) & ((\Add0~61\) # (GND)))
-- \Add0~63\ = CARRY((!\Add0~61\) # (!RZ(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(31),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: LCCOMB_X17_Y6_N2
\Add2~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = (\Add0~66_combout\ & (!\Add2~65\)) # (!\Add0~66_combout\ & ((\Add2~65\) # (GND)))
-- \Add2~67\ = CARRY((!\Add2~65\) # (!\Add0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datad => VCC,
	cin => \Add2~65\,
	combout => \Add2~66_combout\,
	cout => \Add2~67\);

-- Location: LCCOMB_X17_Y6_N4
\Add2~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~68_combout\ = ((\Add0~68_combout\ $ (RV(34) $ (!\Add2~67\)))) # (GND)
-- \Add2~69\ = CARRY((\Add0~68_combout\ & ((RV(34)) # (!\Add2~67\))) # (!\Add0~68_combout\ & (RV(34) & !\Add2~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datab => RV(34),
	datad => VCC,
	cin => \Add2~67\,
	combout => \Add2~68_combout\,
	cout => \Add2~69\);

-- Location: LCCOMB_X15_Y6_N0
\Selector165~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector165~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~68_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~68_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add2~68_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector165~2_combout\);

-- Location: LCCOMB_X15_Y6_N24
\Selector165~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector165~3_combout\ = (\Selector165~2_combout\) # ((RZ(33) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(33),
	datad => \Selector165~2_combout\,
	combout => \Selector165~3_combout\);

-- Location: LCFF_X15_Y6_N25
\RZ[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector165~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(33));

-- Location: LCCOMB_X15_Y6_N6
\Selector166~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector166~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~66_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~66_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add2~66_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector166~2_combout\);

-- Location: LCCOMB_X15_Y6_N30
\Selector166~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector166~3_combout\ = (\Selector166~2_combout\) # ((RZ(32) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(32),
	datad => \Selector166~2_combout\,
	combout => \Selector166~3_combout\);

-- Location: LCFF_X15_Y6_N31
\RZ[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector166~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(32));

-- Location: LCCOMB_X14_Y6_N0
\Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = ((RV(32) $ (RZ(32) $ (!\Add0~63\)))) # (GND)
-- \Add0~65\ = CARRY((RV(32) & ((RZ(32)) # (!\Add0~63\))) # (!RV(32) & (RZ(32) & !\Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(32),
	datab => RZ(32),
	datad => VCC,
	cin => \Add0~63\,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

-- Location: LCCOMB_X14_Y6_N2
\Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (RZ(33) & (!\Add0~65\)) # (!RZ(33) & ((\Add0~65\) # (GND)))
-- \Add0~67\ = CARRY((!\Add0~65\) # (!RZ(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(33),
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X14_Y6_N6
\Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (RZ(35) & (!\Add0~69\)) # (!RZ(35) & ((\Add0~69\) # (GND)))
-- \Add0~71\ = CARRY((!\Add0~69\) # (!RZ(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(35),
	datad => VCC,
	cin => \Add0~69\,
	combout => \Add0~70_combout\,
	cout => \Add0~71\);

-- Location: LCCOMB_X18_Y6_N0
\Add3~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~64_combout\ = ((RV(32) $ (\Add0~64_combout\ $ (\Add3~63\)))) # (GND)
-- \Add3~65\ = CARRY((RV(32) & (\Add0~64_combout\ & !\Add3~63\)) # (!RV(32) & ((\Add0~64_combout\) # (!\Add3~63\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(32),
	datab => \Add0~64_combout\,
	datad => VCC,
	cin => \Add3~63\,
	combout => \Add3~64_combout\,
	cout => \Add3~65\);

-- Location: LCCOMB_X18_Y6_N8
\Add3~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~72_combout\ = ((RV(36) $ (\Add0~72_combout\ $ (\Add3~71\)))) # (GND)
-- \Add3~73\ = CARRY((RV(36) & (\Add0~72_combout\ & !\Add3~71\)) # (!RV(36) & ((\Add0~72_combout\) # (!\Add3~71\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(36),
	datab => \Add0~72_combout\,
	datad => VCC,
	cin => \Add3~71\,
	combout => \Add3~72_combout\,
	cout => \Add3~73\);

-- Location: LCCOMB_X17_Y6_N8
\Add2~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~72_combout\ = ((RV(36) $ (\Add0~72_combout\ $ (!\Add2~71\)))) # (GND)
-- \Add2~73\ = CARRY((RV(36) & ((\Add0~72_combout\) # (!\Add2~71\))) # (!RV(36) & (\Add0~72_combout\ & !\Add2~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(36),
	datab => \Add0~72_combout\,
	datad => VCC,
	cin => \Add2~71\,
	combout => \Add2~72_combout\,
	cout => \Add2~73\);

-- Location: LCCOMB_X15_Y5_N18
\Selector163~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector163~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~72_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~72_combout\,
	datac => \Add2~72_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector163~2_combout\);

-- Location: LCCOMB_X15_Y5_N2
\Selector163~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector163~3_combout\ = (\Selector163~2_combout\) # ((RZ(35) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(35),
	datad => \Selector163~2_combout\,
	combout => \Selector163~3_combout\);

-- Location: LCFF_X15_Y5_N3
\RZ[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector163~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(35));

-- Location: LCCOMB_X14_Y6_N8
\Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = ((RV(36) $ (RZ(36) $ (!\Add0~71\)))) # (GND)
-- \Add0~73\ = CARRY((RV(36) & ((RZ(36)) # (!\Add0~71\))) # (!RV(36) & (RZ(36) & !\Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(36),
	datab => RZ(36),
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X18_Y6_N10
\Add3~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~74_combout\ = (\Add0~74_combout\ & (\Add3~73\ & VCC)) # (!\Add0~74_combout\ & (!\Add3~73\))
-- \Add3~75\ = CARRY((!\Add0~74_combout\ & !\Add3~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~74_combout\,
	datad => VCC,
	cin => \Add3~73\,
	combout => \Add3~74_combout\,
	cout => \Add3~75\);

-- Location: LCCOMB_X17_Y6_N10
\Add2~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~74_combout\ = (\Add0~74_combout\ & (!\Add2~73\)) # (!\Add0~74_combout\ & ((\Add2~73\) # (GND)))
-- \Add2~75\ = CARRY((!\Add2~73\) # (!\Add0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~74_combout\,
	datad => VCC,
	cin => \Add2~73\,
	combout => \Add2~74_combout\,
	cout => \Add2~75\);

-- Location: LCCOMB_X15_Y5_N0
\Selector162~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector162~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~74_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~74_combout\,
	datac => \Add2~74_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector162~2_combout\);

-- Location: LCCOMB_X15_Y5_N20
\Selector162~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector162~3_combout\ = (\Selector162~2_combout\) # ((RZ(36) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(36),
	datad => \Selector162~2_combout\,
	combout => \Selector162~3_combout\);

-- Location: LCFF_X15_Y5_N21
\RZ[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector162~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(36));

-- Location: LCCOMB_X14_Y6_N10
\Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (RZ(37) & (!\Add0~73\)) # (!RZ(37) & ((\Add0~73\) # (GND)))
-- \Add0~75\ = CARRY((!\Add0~73\) # (!RZ(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(37),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~74_combout\,
	cout => \Add0~75\);

-- Location: LCCOMB_X17_Y6_N12
\Add2~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~76_combout\ = ((RV(38) $ (\Add0~76_combout\ $ (!\Add2~75\)))) # (GND)
-- \Add2~77\ = CARRY((RV(38) & ((\Add0~76_combout\) # (!\Add2~75\))) # (!RV(38) & (\Add0~76_combout\ & !\Add2~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(38),
	datab => \Add0~76_combout\,
	datad => VCC,
	cin => \Add2~75\,
	combout => \Add2~76_combout\,
	cout => \Add2~77\);

-- Location: LCCOMB_X15_Y6_N22
\Selector161~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector161~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~76_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~76_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add2~76_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector161~2_combout\);

-- Location: LCCOMB_X15_Y6_N14
\Selector161~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector161~3_combout\ = (\Selector161~2_combout\) # ((RZ(37) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(37),
	datad => \Selector161~2_combout\,
	combout => \Selector161~3_combout\);

-- Location: LCFF_X15_Y6_N15
\RZ[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector161~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(37));

-- Location: LCCOMB_X14_Y6_N12
\Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = ((RV(38) $ (RZ(38) $ (!\Add0~75\)))) # (GND)
-- \Add0~77\ = CARRY((RV(38) & ((RZ(38)) # (!\Add0~75\))) # (!RV(38) & (RZ(38) & !\Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(38),
	datab => RZ(38),
	datad => VCC,
	cin => \Add0~75\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

-- Location: LCCOMB_X17_Y6_N14
\Add2~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~78_combout\ = (\Add0~78_combout\ & (!\Add2~77\)) # (!\Add0~78_combout\ & ((\Add2~77\) # (GND)))
-- \Add2~79\ = CARRY((!\Add2~77\) # (!\Add0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~78_combout\,
	datad => VCC,
	cin => \Add2~77\,
	combout => \Add2~78_combout\,
	cout => \Add2~79\);

-- Location: LCCOMB_X18_Y6_N14
\Add3~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~78_combout\ = (\Add0~78_combout\ & (\Add3~77\ & VCC)) # (!\Add0~78_combout\ & (!\Add3~77\))
-- \Add3~79\ = CARRY((!\Add0~78_combout\ & !\Add3~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~78_combout\,
	datad => VCC,
	cin => \Add3~77\,
	combout => \Add3~78_combout\,
	cout => \Add3~79\);

-- Location: LCCOMB_X17_Y4_N28
\Selector160~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector160~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~78_combout\))) # (!\LessThan0~126_combout\ & (\Add2~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add2~78_combout\,
	datac => \Add3~78_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector160~2_combout\);

-- Location: LCCOMB_X17_Y4_N16
\Selector160~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector160~3_combout\ = (\Selector160~2_combout\) # ((RZ(38) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(38),
	datad => \Selector160~2_combout\,
	combout => \Selector160~3_combout\);

-- Location: LCFF_X17_Y4_N17
\RZ[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector160~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(38));

-- Location: LCCOMB_X14_Y6_N14
\Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (RZ(39) & (!\Add0~77\)) # (!RZ(39) & ((\Add0~77\) # (GND)))
-- \Add0~79\ = CARRY((!\Add0~77\) # (!RZ(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(39),
	datad => VCC,
	cin => \Add0~77\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X17_Y6_N16
\Add2~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~80_combout\ = ((\Add0~80_combout\ $ (RV(40) $ (!\Add2~79\)))) # (GND)
-- \Add2~81\ = CARRY((\Add0~80_combout\ & ((RV(40)) # (!\Add2~79\))) # (!\Add0~80_combout\ & (RV(40) & !\Add2~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => RV(40),
	datad => VCC,
	cin => \Add2~79\,
	combout => \Add2~80_combout\,
	cout => \Add2~81\);

-- Location: LCCOMB_X15_Y6_N12
\Selector159~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector159~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~80_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~80_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \LessThan0~126_combout\,
	datad => \Add2~80_combout\,
	combout => \Selector159~2_combout\);

-- Location: LCCOMB_X15_Y6_N20
\Selector159~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector159~3_combout\ = (\Selector159~2_combout\) # ((RZ(39) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(39),
	datad => \Selector159~2_combout\,
	combout => \Selector159~3_combout\);

-- Location: LCFF_X15_Y6_N21
\RZ[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector159~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(39));

-- Location: LCCOMB_X14_Y6_N16
\Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = ((RZ(40) $ (RV(40) $ (!\Add0~79\)))) # (GND)
-- \Add0~81\ = CARRY((RZ(40) & ((RV(40)) # (!\Add0~79\))) # (!RZ(40) & (RV(40) & !\Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(40),
	datab => RV(40),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~80_combout\,
	cout => \Add0~81\);

-- Location: LCCOMB_X14_Y6_N18
\Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (RZ(41) & (!\Add0~81\)) # (!RZ(41) & ((\Add0~81\) # (GND)))
-- \Add0~83\ = CARRY((!\Add0~81\) # (!RZ(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(41),
	datad => VCC,
	cin => \Add0~81\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

-- Location: LCCOMB_X14_Y6_N20
\Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((RZ(42) $ (RV(42) $ (!\Add0~83\)))) # (GND)
-- \Add0~85\ = CARRY((RZ(42) & ((RV(42)) # (!\Add0~83\))) # (!RZ(42) & (RV(42) & !\Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(42),
	datab => RV(42),
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X14_Y6_N22
\Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (RZ(43) & (!\Add0~85\)) # (!RZ(43) & ((\Add0~85\) # (GND)))
-- \Add0~87\ = CARRY((!\Add0~85\) # (!RZ(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(43),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

-- Location: LCCOMB_X18_Y6_N28
\Add3~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~92_combout\ = ((RV(46) $ (\Add0~92_combout\ $ (\Add3~91\)))) # (GND)
-- \Add3~93\ = CARRY((RV(46) & (\Add0~92_combout\ & !\Add3~91\)) # (!RV(46) & ((\Add0~92_combout\) # (!\Add3~91\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(46),
	datab => \Add0~92_combout\,
	datad => VCC,
	cin => \Add3~91\,
	combout => \Add3~92_combout\,
	cout => \Add3~93\);

-- Location: LCCOMB_X17_Y6_N26
\Add2~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~90_combout\ = (\Add0~90_combout\ & (!\Add2~89\)) # (!\Add0~90_combout\ & ((\Add2~89\) # (GND)))
-- \Add2~91\ = CARRY((!\Add2~89\) # (!\Add0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datad => VCC,
	cin => \Add2~89\,
	combout => \Add2~90_combout\,
	cout => \Add2~91\);

-- Location: LCCOMB_X19_Y5_N0
\Selector154~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector154~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~90_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~90_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add2~90_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector154~2_combout\);

-- Location: LCCOMB_X19_Y5_N8
\Selector154~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector154~3_combout\ = (\Selector154~2_combout\) # ((RZ(44) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(44),
	datad => \Selector154~2_combout\,
	combout => \Selector154~3_combout\);

-- Location: LCFF_X19_Y5_N9
\RZ[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector154~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(44));

-- Location: LCCOMB_X14_Y6_N24
\Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = ((RV(44) $ (RZ(44) $ (!\Add0~87\)))) # (GND)
-- \Add0~89\ = CARRY((RV(44) & ((RZ(44)) # (!\Add0~87\))) # (!RV(44) & (RZ(44) & !\Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(44),
	datab => RZ(44),
	datad => VCC,
	cin => \Add0~87\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

-- Location: LCCOMB_X17_Y6_N28
\Add2~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~92_combout\ = ((RV(46) $ (\Add0~92_combout\ $ (!\Add2~91\)))) # (GND)
-- \Add2~93\ = CARRY((RV(46) & ((\Add0~92_combout\) # (!\Add2~91\))) # (!RV(46) & (\Add0~92_combout\ & !\Add2~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(46),
	datab => \Add0~92_combout\,
	datad => VCC,
	cin => \Add2~91\,
	combout => \Add2~92_combout\,
	cout => \Add2~93\);

-- Location: LCCOMB_X17_Y4_N10
\Selector153~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector153~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~92_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~92_combout\,
	datac => \Add2~92_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector153~2_combout\);

-- Location: LCCOMB_X17_Y4_N2
\Selector153~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector153~3_combout\ = (\Selector153~2_combout\) # ((RZ(45) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(45),
	datad => \Selector153~2_combout\,
	combout => \Selector153~3_combout\);

-- Location: LCFF_X17_Y4_N3
\RZ[45]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector153~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(45));

-- Location: LCCOMB_X14_Y6_N26
\Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (RZ(45) & (!\Add0~89\)) # (!RZ(45) & ((\Add0~89\) # (GND)))
-- \Add0~91\ = CARRY((!\Add0~89\) # (!RZ(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(45),
	datad => VCC,
	cin => \Add0~89\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X14_Y6_N28
\Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = ((RV(46) $ (RZ(46) $ (!\Add0~91\)))) # (GND)
-- \Add0~93\ = CARRY((RV(46) & ((RZ(46)) # (!\Add0~91\))) # (!RV(46) & (RZ(46) & !\Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(46),
	datab => RZ(46),
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~92_combout\,
	cout => \Add0~93\);

-- Location: LCCOMB_X18_Y6_N30
\Add3~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~94_combout\ = (\Add0~94_combout\ & (\Add3~93\ & VCC)) # (!\Add0~94_combout\ & (!\Add3~93\))
-- \Add3~95\ = CARRY((!\Add0~94_combout\ & !\Add3~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~94_combout\,
	datad => VCC,
	cin => \Add3~93\,
	combout => \Add3~94_combout\,
	cout => \Add3~95\);

-- Location: LCCOMB_X17_Y6_N30
\Add2~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~94_combout\ = (\Add0~94_combout\ & (!\Add2~93\)) # (!\Add0~94_combout\ & ((\Add2~93\) # (GND)))
-- \Add2~95\ = CARRY((!\Add2~93\) # (!\Add0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~94_combout\,
	datad => VCC,
	cin => \Add2~93\,
	combout => \Add2~94_combout\,
	cout => \Add2~95\);

-- Location: LCCOMB_X17_Y4_N12
\Selector152~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector152~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~94_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~94_combout\,
	datac => \Add2~94_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector152~2_combout\);

-- Location: LCCOMB_X17_Y4_N4
\Selector152~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector152~3_combout\ = (\Selector152~2_combout\) # ((RZ(46) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(46),
	datad => \Selector152~2_combout\,
	combout => \Selector152~3_combout\);

-- Location: LCFF_X17_Y4_N5
\RZ[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector152~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(46));

-- Location: LCCOMB_X14_Y5_N0
\Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = ((RZ(48) $ (RV(48) $ (!\Add0~95\)))) # (GND)
-- \Add0~97\ = CARRY((RZ(48) & ((RV(48)) # (!\Add0~95\))) # (!RZ(48) & (RV(48) & !\Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(48),
	datab => RV(48),
	datad => VCC,
	cin => \Add0~95\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

-- Location: LCCOMB_X17_Y5_N4
\Add2~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~100_combout\ = ((\Add0~100_combout\ $ (RV(50) $ (!\Add2~99\)))) # (GND)
-- \Add2~101\ = CARRY((\Add0~100_combout\ & ((RV(50)) # (!\Add2~99\))) # (!\Add0~100_combout\ & (RV(50) & !\Add2~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~100_combout\,
	datab => RV(50),
	datad => VCC,
	cin => \Add2~99\,
	combout => \Add2~100_combout\,
	cout => \Add2~101\);

-- Location: LCCOMB_X14_Y5_N4
\Add0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = ((RZ(50) $ (RV(50) $ (!\Add0~99\)))) # (GND)
-- \Add0~101\ = CARRY((RZ(50) & ((RV(50)) # (!\Add0~99\))) # (!RZ(50) & (RV(50) & !\Add0~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(50),
	datab => RV(50),
	datad => VCC,
	cin => \Add0~99\,
	combout => \Add0~100_combout\,
	cout => \Add0~101\);

-- Location: LCCOMB_X18_Y5_N4
\Add3~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~100_combout\ = ((RV(50) $ (\Add0~100_combout\ $ (\Add3~99\)))) # (GND)
-- \Add3~101\ = CARRY((RV(50) & (\Add0~100_combout\ & !\Add3~99\)) # (!RV(50) & ((\Add0~100_combout\) # (!\Add3~99\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(50),
	datab => \Add0~100_combout\,
	datad => VCC,
	cin => \Add3~99\,
	combout => \Add3~100_combout\,
	cout => \Add3~101\);

-- Location: LCCOMB_X17_Y4_N26
\Selector149~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector149~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~100_combout\))) # (!\LessThan0~126_combout\ & (\Add2~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add2~100_combout\,
	datac => \Add3~100_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector149~2_combout\);

-- Location: LCCOMB_X17_Y4_N18
\Selector149~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector149~3_combout\ = (\Selector149~2_combout\) # ((RZ(49) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(49),
	datad => \Selector149~2_combout\,
	combout => \Selector149~3_combout\);

-- Location: LCFF_X17_Y4_N19
\RZ[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector149~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(49));

-- Location: LCCOMB_X14_Y5_N6
\Add0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = (RZ(51) & (!\Add0~101\)) # (!RZ(51) & ((\Add0~101\) # (GND)))
-- \Add0~103\ = CARRY((!\Add0~101\) # (!RZ(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(51),
	datad => VCC,
	cin => \Add0~101\,
	combout => \Add0~102_combout\,
	cout => \Add0~103\);

-- Location: LCCOMB_X14_Y5_N8
\Add0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~104_combout\ = ((RV(52) $ (RZ(52) $ (!\Add0~103\)))) # (GND)
-- \Add0~105\ = CARRY((RV(52) & ((RZ(52)) # (!\Add0~103\))) # (!RV(52) & (RZ(52) & !\Add0~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(52),
	datab => RZ(52),
	datad => VCC,
	cin => \Add0~103\,
	combout => \Add0~104_combout\,
	cout => \Add0~105\);

-- Location: LCCOMB_X17_Y5_N12
\Add2~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~108_combout\ = ((RV(54) $ (\Add0~108_combout\ $ (!\Add2~107\)))) # (GND)
-- \Add2~109\ = CARRY((RV(54) & ((\Add0~108_combout\) # (!\Add2~107\))) # (!RV(54) & (\Add0~108_combout\ & !\Add2~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(54),
	datab => \Add0~108_combout\,
	datad => VCC,
	cin => \Add2~107\,
	combout => \Add2~108_combout\,
	cout => \Add2~109\);

-- Location: LCCOMB_X19_Y5_N26
\Selector145~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector145~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~108_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~108_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add2~108_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector145~2_combout\);

-- Location: LCCOMB_X19_Y5_N18
\Selector145~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector145~3_combout\ = (\Selector145~2_combout\) # ((RZ(53) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(53),
	datad => \Selector145~2_combout\,
	combout => \Selector145~3_combout\);

-- Location: LCFF_X19_Y5_N19
\RZ[53]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector145~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(53));

-- Location: LCCOMB_X14_Y5_N10
\Add0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~106_combout\ = (RZ(53) & (!\Add0~105\)) # (!RZ(53) & ((\Add0~105\) # (GND)))
-- \Add0~107\ = CARRY((!\Add0~105\) # (!RZ(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(53),
	datad => VCC,
	cin => \Add0~105\,
	combout => \Add0~106_combout\,
	cout => \Add0~107\);

-- Location: LCCOMB_X14_Y5_N14
\Add0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~110_combout\ = (RZ(55) & (!\Add0~109\)) # (!RZ(55) & ((\Add0~109\) # (GND)))
-- \Add0~111\ = CARRY((!\Add0~109\) # (!RZ(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(55),
	datad => VCC,
	cin => \Add0~109\,
	combout => \Add0~110_combout\,
	cout => \Add0~111\);

-- Location: LCCOMB_X18_Y5_N16
\Add3~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~112_combout\ = ((RV(56) $ (\Add0~112_combout\ $ (\Add3~111\)))) # (GND)
-- \Add3~113\ = CARRY((RV(56) & (\Add0~112_combout\ & !\Add3~111\)) # (!RV(56) & ((\Add0~112_combout\) # (!\Add3~111\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(56),
	datab => \Add0~112_combout\,
	datad => VCC,
	cin => \Add3~111\,
	combout => \Add3~112_combout\,
	cout => \Add3~113\);

-- Location: LCCOMB_X17_Y5_N16
\Add2~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~112_combout\ = ((RV(56) $ (\Add0~112_combout\ $ (!\Add2~111\)))) # (GND)
-- \Add2~113\ = CARRY((RV(56) & ((\Add0~112_combout\) # (!\Add2~111\))) # (!RV(56) & (\Add0~112_combout\ & !\Add2~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(56),
	datab => \Add0~112_combout\,
	datad => VCC,
	cin => \Add2~111\,
	combout => \Add2~112_combout\,
	cout => \Add2~113\);

-- Location: LCCOMB_X19_Y5_N30
\Selector143~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector143~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~112_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~112_combout\,
	datac => \Add2~112_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector143~2_combout\);

-- Location: LCCOMB_X19_Y5_N22
\Selector143~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector143~3_combout\ = (\Selector143~2_combout\) # ((RZ(55) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(55),
	datad => \Selector143~2_combout\,
	combout => \Selector143~3_combout\);

-- Location: LCFF_X19_Y5_N23
\RZ[55]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector143~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(55));

-- Location: LCCOMB_X14_Y5_N16
\Add0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~112_combout\ = ((RV(56) $ (RZ(56) $ (!\Add0~111\)))) # (GND)
-- \Add0~113\ = CARRY((RV(56) & ((RZ(56)) # (!\Add0~111\))) # (!RV(56) & (RZ(56) & !\Add0~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(56),
	datab => RZ(56),
	datad => VCC,
	cin => \Add0~111\,
	combout => \Add0~112_combout\,
	cout => \Add0~113\);

-- Location: LCCOMB_X18_Y5_N18
\Add3~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~114_combout\ = (\Add0~114_combout\ & (\Add3~113\ & VCC)) # (!\Add0~114_combout\ & (!\Add3~113\))
-- \Add3~115\ = CARRY((!\Add0~114_combout\ & !\Add3~113\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~114_combout\,
	datad => VCC,
	cin => \Add3~113\,
	combout => \Add3~114_combout\,
	cout => \Add3~115\);

-- Location: LCCOMB_X17_Y5_N18
\Add2~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~114_combout\ = (\Add0~114_combout\ & (!\Add2~113\)) # (!\Add0~114_combout\ & ((\Add2~113\) # (GND)))
-- \Add2~115\ = CARRY((!\Add2~113\) # (!\Add0~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~114_combout\,
	datad => VCC,
	cin => \Add2~113\,
	combout => \Add2~114_combout\,
	cout => \Add2~115\);

-- Location: LCCOMB_X19_Y5_N28
\Selector142~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector142~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~114_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~114_combout\,
	datac => \Add2~114_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector142~2_combout\);

-- Location: LCCOMB_X19_Y5_N16
\Selector142~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector142~3_combout\ = (\Selector142~2_combout\) # ((RZ(56) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(56),
	datad => \Selector142~2_combout\,
	combout => \Selector142~3_combout\);

-- Location: LCFF_X19_Y5_N17
\RZ[56]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector142~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(56));

-- Location: LCCOMB_X14_Y5_N18
\Add0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~114_combout\ = (RZ(57) & (!\Add0~113\)) # (!RZ(57) & ((\Add0~113\) # (GND)))
-- \Add0~115\ = CARRY((!\Add0~113\) # (!RZ(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(57),
	datad => VCC,
	cin => \Add0~113\,
	combout => \Add0~114_combout\,
	cout => \Add0~115\);

-- Location: LCCOMB_X14_Y5_N20
\Add0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~116_combout\ = ((RV(58) $ (RZ(58) $ (!\Add0~115\)))) # (GND)
-- \Add0~117\ = CARRY((RV(58) & ((RZ(58)) # (!\Add0~115\))) # (!RV(58) & (RZ(58) & !\Add0~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(58),
	datab => RZ(58),
	datad => VCC,
	cin => \Add0~115\,
	combout => \Add0~116_combout\,
	cout => \Add0~117\);

-- Location: LCCOMB_X18_Y5_N22
\Add3~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~118_combout\ = (\Add0~118_combout\ & (\Add3~117\ & VCC)) # (!\Add0~118_combout\ & (!\Add3~117\))
-- \Add3~119\ = CARRY((!\Add0~118_combout\ & !\Add3~117\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~118_combout\,
	datad => VCC,
	cin => \Add3~117\,
	combout => \Add3~118_combout\,
	cout => \Add3~119\);

-- Location: LCCOMB_X17_Y5_N22
\Add2~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~118_combout\ = (\Add0~118_combout\ & (!\Add2~117\)) # (!\Add0~118_combout\ & ((\Add2~117\) # (GND)))
-- \Add2~119\ = CARRY((!\Add2~117\) # (!\Add0~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~118_combout\,
	datad => VCC,
	cin => \Add2~117\,
	combout => \Add2~118_combout\,
	cout => \Add2~119\);

-- Location: LCCOMB_X15_Y5_N12
\Selector140~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector140~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~118_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add3~118_combout\,
	datac => \Add2~118_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector140~2_combout\);

-- Location: LCCOMB_X15_Y5_N8
\Selector140~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector140~3_combout\ = (\Selector140~2_combout\) # ((RZ(58) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(58),
	datad => \Selector140~2_combout\,
	combout => \Selector140~3_combout\);

-- Location: LCFF_X15_Y5_N9
\RZ[58]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector140~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(58));

-- Location: LCCOMB_X14_Y5_N22
\Add0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~118_combout\ = (RZ(59) & (!\Add0~117\)) # (!RZ(59) & ((\Add0~117\) # (GND)))
-- \Add0~119\ = CARRY((!\Add0~117\) # (!RZ(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(59),
	datad => VCC,
	cin => \Add0~117\,
	combout => \Add0~118_combout\,
	cout => \Add0~119\);

-- Location: LCCOMB_X18_Y5_N24
\Add3~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~120_combout\ = ((RV(60) $ (\Add0~120_combout\ $ (\Add3~119\)))) # (GND)
-- \Add3~121\ = CARRY((RV(60) & (\Add0~120_combout\ & !\Add3~119\)) # (!RV(60) & ((\Add0~120_combout\) # (!\Add3~119\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(60),
	datab => \Add0~120_combout\,
	datad => VCC,
	cin => \Add3~119\,
	combout => \Add3~120_combout\,
	cout => \Add3~121\);

-- Location: LCCOMB_X17_Y5_N24
\Add2~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~120_combout\ = ((RV(60) $ (\Add0~120_combout\ $ (!\Add2~119\)))) # (GND)
-- \Add2~121\ = CARRY((RV(60) & ((\Add0~120_combout\) # (!\Add2~119\))) # (!RV(60) & (\Add0~120_combout\ & !\Add2~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RV(60),
	datab => \Add0~120_combout\,
	datad => VCC,
	cin => \Add2~119\,
	combout => \Add2~120_combout\,
	cout => \Add2~121\);

-- Location: LCCOMB_X15_Y5_N22
\Selector139~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector139~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & (\Add3~120_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~120_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \LessThan0~126_combout\,
	datac => \Add3~120_combout\,
	datad => \Add2~120_combout\,
	combout => \Selector139~2_combout\);

-- Location: LCCOMB_X15_Y5_N14
\Selector139~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector139~3_combout\ = (\Selector139~2_combout\) # ((RZ(59) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(59),
	datad => \Selector139~2_combout\,
	combout => \Selector139~3_combout\);

-- Location: LCFF_X15_Y5_N15
\RZ[59]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector139~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(59));

-- Location: LCCOMB_X14_Y5_N24
\Add0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~120_combout\ = ((RZ(60) $ (RV(60) $ (!\Add0~119\)))) # (GND)
-- \Add0~121\ = CARRY((RZ(60) & ((RV(60)) # (!\Add0~119\))) # (!RZ(60) & (RV(60) & !\Add0~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => RZ(60),
	datab => RV(60),
	datad => VCC,
	cin => \Add0~119\,
	combout => \Add0~120_combout\,
	cout => \Add0~121\);

-- Location: LCCOMB_X15_Y5_N26
\Selector137~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector137~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~124_combout\))) # (!\LessThan0~126_combout\ & (\Add2~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \LessThan0~126_combout\,
	datac => \Add2~124_combout\,
	datad => \Add3~124_combout\,
	combout => \Selector137~2_combout\);

-- Location: LCCOMB_X15_Y5_N10
\Selector137~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector137~3_combout\ = (\Selector137~2_combout\) # ((RZ(61) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.wait_state~regout\,
	datab => \current_state.end_state~regout\,
	datac => RZ(61),
	datad => \Selector137~2_combout\,
	combout => \Selector137~3_combout\);

-- Location: LCFF_X15_Y5_N11
\RZ[61]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector137~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(61));

-- Location: LCCOMB_X14_Y5_N26
\Add0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~122_combout\ = (RZ(61) & (!\Add0~121\)) # (!RZ(61) & ((\Add0~121\) # (GND)))
-- \Add0~123\ = CARRY((!\Add0~121\) # (!RZ(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => RZ(61),
	datad => VCC,
	cin => \Add0~121\,
	combout => \Add0~122_combout\,
	cout => \Add0~123\);

-- Location: LCCOMB_X14_Y5_N30
\Add0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~126_combout\ = \Add0~125\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~125\,
	combout => \Add0~126_combout\);

-- Location: LCCOMB_X8_Y7_N16
\RX[61]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[61]~9_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[61]~9_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(61),
	datac => \RX[61]~9_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[61]~9_combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(60),
	combout => \X~combout\(60));

-- Location: LCCOMB_X9_Y8_N18
\RX[60]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[60]~13_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[60]~13_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(60),
	datac => \RX[60]~13_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[60]~13_combout\);

-- Location: LCCOMB_X9_Y8_N6
\RX[60]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[60]~14_combout\ = (\rst~combout\ & (\RX[60]~_emulated_regout\ $ ((\RX[60]~13_combout\)))) # (!\rst~combout\ & (((\X~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[60]~_emulated_regout\,
	datab => \RX[60]~13_combout\,
	datac => \rst~combout\,
	datad => \X~combout\(60),
	combout => \RX[60]~14_combout\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(59),
	combout => \X~combout\(59));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(56),
	combout => \X~combout\(56));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(52),
	combout => \X~combout\(52));

-- Location: LCCOMB_X7_Y5_N18
\RX[50]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[50]~53_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[50]~53_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(50),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[50]~53_combout\,
	combout => \RX[50]~53_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(49),
	combout => \X~combout\(49));

-- Location: LCCOMB_X7_Y5_N20
\RX[49]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[49]~57_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[49]~57_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(49),
	datac => \RX[49]~57_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[49]~57_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(48),
	combout => \X~combout\(48));

-- Location: LCCOMB_X9_Y8_N4
\RX[48]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[48]~61_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[48]~61_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(48),
	datac => \RX[48]~61_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[48]~61_combout\);

-- Location: LCCOMB_X9_Y8_N16
\RX[48]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[48]~62_combout\ = (\rst~combout\ & (\RX[48]~_emulated_regout\ $ (((\RX[48]~61_combout\))))) # (!\rst~combout\ & (((\X~combout\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[48]~_emulated_regout\,
	datab => \X~combout\(48),
	datac => \RX[48]~61_combout\,
	datad => \rst~combout\,
	combout => \RX[48]~62_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(47),
	combout => \X~combout\(47));

-- Location: LCCOMB_X8_Y6_N26
\RX[47]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[47]~65_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[47]~65_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(47),
	datab => \RX[47]~65_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[47]~65_combout\);

-- Location: LCCOMB_X9_Y6_N18
\RX[47]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[47]~66_combout\ = (\rst~combout\ & (\RX[47]~_emulated_regout\ $ (((\RX[47]~65_combout\))))) # (!\rst~combout\ & (((\X~combout\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[47]~_emulated_regout\,
	datab => \X~combout\(47),
	datac => \rst~combout\,
	datad => \RX[47]~65_combout\,
	combout => \RX[47]~66_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(37),
	combout => \X~combout\(37));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(35),
	combout => \X~combout\(35));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(34),
	combout => \X~combout\(34));

-- Location: LCCOMB_X12_Y6_N14
\RX[34]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[34]~117_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[34]~117_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(34),
	datac => \RX[34]~117_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[34]~117_combout\);

-- Location: LCCOMB_X12_Y6_N18
\RX[34]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[34]~118_combout\ = (\rst~combout\ & (\RX[34]~_emulated_regout\ $ (((\RX[34]~117_combout\))))) # (!\rst~combout\ & (((\X~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[34]~_emulated_regout\,
	datab => \X~combout\(34),
	datac => \RX[34]~117_combout\,
	datad => \rst~combout\,
	combout => \RX[34]~118_combout\);

-- Location: LCCOMB_X12_Y4_N14
\RX[29]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[29]~137_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[29]~137_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(29),
	datac => \RX[29]~137_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[29]~137_combout\);

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(29),
	combout => \X~combout\(29));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(28),
	combout => \X~combout\(28));

-- Location: LCCOMB_X9_Y7_N16
\RX[28]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[28]~141_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[28]~141_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(28),
	datac => \RX[28]~141_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[28]~141_combout\);

-- Location: LCCOMB_X9_Y7_N30
\RX[28]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[28]~142_combout\ = (\rst~combout\ & (\RX[28]~_emulated_regout\ $ (((\RX[28]~141_combout\))))) # (!\rst~combout\ & (((\X~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[28]~_emulated_regout\,
	datab => \X~combout\(28),
	datac => \RX[28]~141_combout\,
	datad => \rst~combout\,
	combout => \RX[28]~142_combout\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(27),
	combout => \X~combout\(27));

-- Location: LCCOMB_X9_Y7_N18
\RX[27]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[27]~145_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[27]~145_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(27),
	datab => \RX[27]~145_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[27]~145_combout\);

-- Location: LCCOMB_X9_Y7_N20
\RX[27]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[27]~147_combout\ = \RX[27]~145_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~54_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \X~combout\(27),
	datad => \RX[27]~145_combout\,
	combout => \RX[27]~147_combout\);

-- Location: LCCOMB_X12_Y5_N0
\RX[60]~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[60]~259_combout\ = (\current_state.wait_state~regout\ & (!\current_state.end_state~regout\ & ((!\LessThan0~126_combout\) # (!\current_state.iter_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \current_state.wait_state~regout\,
	datac => \current_state.end_state~regout\,
	datad => \LessThan0~126_combout\,
	combout => \RX[60]~259_combout\);

-- Location: LCFF_X9_Y7_N21
\RX[27]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[27]~147_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[27]~_emulated_regout\);

-- Location: LCCOMB_X9_Y7_N22
\RX[27]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[27]~146_combout\ = (\rst~combout\ & ((\RX[27]~_emulated_regout\ $ (\RX[27]~145_combout\)))) # (!\rst~combout\ & (\X~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(27),
	datab => \rst~combout\,
	datac => \RX[27]~_emulated_regout\,
	datad => \RX[27]~145_combout\,
	combout => \RX[27]~146_combout\);

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(26),
	combout => \X~combout\(26));

-- Location: LCCOMB_X12_Y7_N14
\RX[26]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[26]~149_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[26]~149_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(26),
	datac => \RX[26]~149_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[26]~149_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(24),
	combout => \X~combout\(24));

-- Location: LCCOMB_X13_Y9_N18
\RX[24]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[24]~157_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[24]~157_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(24),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[24]~157_combout\,
	combout => \RX[24]~157_combout\);

-- Location: LCCOMB_X13_Y9_N6
\RX[24]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[24]~158_combout\ = (\rst~combout\ & (\RX[24]~_emulated_regout\ $ (((\RX[24]~157_combout\))))) # (!\rst~combout\ & (((\X~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[24]~_emulated_regout\,
	datab => \X~combout\(24),
	datac => \rst~combout\,
	datad => \RX[24]~157_combout\,
	combout => \RX[24]~158_combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(23),
	combout => \X~combout\(23));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(20),
	combout => \X~combout\(20));

-- Location: LCCOMB_X8_Y5_N4
\RX[20]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[20]~173_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[20]~173_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(20),
	datac => \RX[20]~173_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[20]~173_combout\);

-- Location: LCCOMB_X8_Y5_N8
\RX[20]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[20]~175_combout\ = \RX[20]~173_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~40_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \X~combout\(20),
	datac => \RX[20]~173_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[20]~175_combout\);

-- Location: LCFF_X8_Y5_N9
\RX[20]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[20]~175_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[20]~_emulated_regout\);

-- Location: LCCOMB_X8_Y5_N22
\RX[20]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[20]~174_combout\ = (\rst~combout\ & ((\RX[20]~_emulated_regout\ $ (\RX[20]~173_combout\)))) # (!\rst~combout\ & (\X~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(20),
	datab => \RX[20]~_emulated_regout\,
	datac => \RX[20]~173_combout\,
	datad => \rst~combout\,
	combout => \RX[20]~174_combout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(19),
	combout => \X~combout\(19));

-- Location: LCCOMB_X8_Y5_N14
\RX[19]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[19]~177_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[19]~177_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(19),
	datac => \RX[19]~177_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[19]~177_combout\);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(18),
	combout => \X~combout\(18));

-- Location: LCCOMB_X9_Y7_N0
\RX[18]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[18]~181_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[18]~181_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(18),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[18]~181_combout\,
	combout => \RX[18]~181_combout\);

-- Location: LCCOMB_X9_Y7_N4
\RX[18]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[18]~183_combout\ = \RX[18]~181_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~36_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \X~combout\(18),
	datac => \current_state.iter_state~regout\,
	datad => \RX[18]~181_combout\,
	combout => \RX[18]~183_combout\);

-- Location: LCFF_X9_Y7_N5
\RX[18]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[18]~183_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[18]~_emulated_regout\);

-- Location: LCCOMB_X9_Y7_N6
\RX[18]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[18]~182_combout\ = (\rst~combout\ & ((\RX[18]~_emulated_regout\ $ (\RX[18]~181_combout\)))) # (!\rst~combout\ & (\X~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(18),
	datab => \rst~combout\,
	datac => \RX[18]~_emulated_regout\,
	datad => \RX[18]~181_combout\,
	combout => \RX[18]~182_combout\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(16),
	combout => \X~combout\(16));

-- Location: LCCOMB_X12_Y9_N28
\RX[16]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[16]~189_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[16]~189_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(16),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[16]~189_combout\,
	combout => \RX[16]~189_combout\);

-- Location: LCCOMB_X12_Y9_N2
\RX[16]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[16]~190_combout\ = (\rst~combout\ & (\RX[16]~_emulated_regout\ $ (((\RX[16]~189_combout\))))) # (!\rst~combout\ & (((\X~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[16]~_emulated_regout\,
	datab => \X~combout\(16),
	datac => \rst~combout\,
	datad => \RX[16]~189_combout\,
	combout => \RX[16]~190_combout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(5),
	combout => \X~combout\(5));

-- Location: LCCOMB_X9_Y5_N12
\RX[5]~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[5]~233_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[5]~233_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[5]~233_combout\,
	datab => \X~combout\(5),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[5]~233_combout\);

-- Location: LCCOMB_X9_Y5_N18
\RX[5]~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[5]~234_combout\ = (\rst~combout\ & (\RX[5]~_emulated_regout\ $ (((\RX[5]~233_combout\))))) # (!\rst~combout\ & (((\X~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[5]~_emulated_regout\,
	datab => \X~combout\(5),
	datac => \rst~combout\,
	datad => \RX[5]~233_combout\,
	combout => \RX[5]~234_combout\);

-- Location: LCCOMB_X12_Y8_N18
\RX[1]~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[1]~249_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[1]~249_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(1),
	datab => \RX[1]~249_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[1]~249_combout\);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: LCCOMB_X12_Y5_N26
\RX[0]~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[0]~253_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[0]~253_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(0),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[0]~253_combout\,
	combout => \RX[0]~253_combout\);

-- Location: LCCOMB_X12_Y5_N14
\RX[0]~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[0]~254_combout\ = (\rst~combout\ & (\RX[0]~_emulated_regout\ $ (((\RX[0]~253_combout\))))) # (!\rst~combout\ & (((\X~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[0]~_emulated_regout\,
	datab => \X~combout\(0),
	datac => \rst~combout\,
	datad => \RX[0]~253_combout\,
	combout => \RX[0]~254_combout\);

-- Location: LCCOMB_X10_Y8_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~2_combout\ & ((\RX[1]~250_combout\ & (!\Add1~1\)) # (!\RX[1]~250_combout\ & ((\Add1~1\) # (GND))))) # (!\Add0~2_combout\ & ((\RX[1]~250_combout\ & (\Add1~1\ & VCC)) # (!\RX[1]~250_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\Add0~2_combout\ & ((!\Add1~1\) # (!\RX[1]~250_combout\))) # (!\Add0~2_combout\ & (!\RX[1]~250_combout\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \RX[1]~250_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X9_Y8_N0
\RX[1]~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[1]~251_combout\ = \RX[1]~249_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~2_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX[1]~249_combout\,
	datac => \X~combout\(1),
	datad => \Add1~2_combout\,
	combout => \RX[1]~251_combout\);

-- Location: LCFF_X12_Y8_N19
\RX[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RX[1]~251_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[1]~_emulated_regout\);

-- Location: LCCOMB_X12_Y8_N28
\RX[1]~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[1]~250_combout\ = (\rst~combout\ & ((\RX[1]~_emulated_regout\ $ (\RX[1]~249_combout\)))) # (!\rst~combout\ & (\X~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(1),
	datab => \RX[1]~_emulated_regout\,
	datac => \rst~combout\,
	datad => \RX[1]~249_combout\,
	combout => \RX[1]~250_combout\);

-- Location: LCCOMB_X10_Y8_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\RX[3]~242_combout\ & ((\Add0~6_combout\ & (!\Add1~5\)) # (!\Add0~6_combout\ & (\Add1~5\ & VCC)))) # (!\RX[3]~242_combout\ & ((\Add0~6_combout\ & ((\Add1~5\) # (GND))) # (!\Add0~6_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\RX[3]~242_combout\ & (\Add0~6_combout\ & !\Add1~5\)) # (!\RX[3]~242_combout\ & ((\Add0~6_combout\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[3]~242_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X10_Y8_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\RX[8]~222_combout\ $ (\Add0~16_combout\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\RX[8]~222_combout\ & ((!\Add1~15\) # (!\Add0~16_combout\))) # (!\RX[8]~222_combout\ & (!\Add0~16_combout\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[8]~222_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X10_Y8_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add0~18_combout\ & ((\RX[9]~218_combout\ & (!\Add1~17\)) # (!\RX[9]~218_combout\ & ((\Add1~17\) # (GND))))) # (!\Add0~18_combout\ & ((\RX[9]~218_combout\ & (\Add1~17\ & VCC)) # (!\RX[9]~218_combout\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\Add0~18_combout\ & ((!\Add1~17\) # (!\RX[9]~218_combout\))) # (!\Add0~18_combout\ & (!\RX[9]~218_combout\ & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \RX[9]~218_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(9),
	combout => \X~combout\(9));

-- Location: LCCOMB_X9_Y8_N26
\RX[9]~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[9]~219_combout\ = \RX[9]~217_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~18_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[9]~217_combout\,
	datab => \Add1~18_combout\,
	datac => \X~combout\(9),
	datad => \current_state.iter_state~regout\,
	combout => \RX[9]~219_combout\);

-- Location: LCFF_X9_Y8_N27
\RX[9]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[9]~219_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[9]~_emulated_regout\);

-- Location: LCCOMB_X9_Y8_N22
\RX[9]~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[9]~217_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[9]~217_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX[9]~217_combout\,
	datac => \X~combout\(9),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[9]~217_combout\);

-- Location: LCCOMB_X9_Y8_N28
\RX[9]~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[9]~218_combout\ = (\rst~combout\ & ((\RX[9]~_emulated_regout\ $ (\RX[9]~217_combout\)))) # (!\rst~combout\ & (\X~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(9),
	datab => \RX[9]~_emulated_regout\,
	datac => \rst~combout\,
	datad => \RX[9]~217_combout\,
	combout => \RX[9]~218_combout\);

-- Location: LCCOMB_X10_Y8_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\RX[13]~202_combout\ & ((\Add0~26_combout\ & (!\Add1~25\)) # (!\Add0~26_combout\ & (\Add1~25\ & VCC)))) # (!\RX[13]~202_combout\ & ((\Add0~26_combout\ & ((\Add1~25\) # (GND))) # (!\Add0~26_combout\ & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\RX[13]~202_combout\ & (\Add0~26_combout\ & !\Add1~25\)) # (!\RX[13]~202_combout\ & ((\Add0~26_combout\) # (!\Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[13]~202_combout\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X10_Y7_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\RX[17]~186_combout\ & ((\Add0~34_combout\ & (!\Add1~33\)) # (!\Add0~34_combout\ & (\Add1~33\ & VCC)))) # (!\RX[17]~186_combout\ & ((\Add0~34_combout\ & ((\Add1~33\) # (GND))) # (!\Add0~34_combout\ & (!\Add1~33\))))
-- \Add1~35\ = CARRY((\RX[17]~186_combout\ & (\Add0~34_combout\ & !\Add1~33\)) # (!\RX[17]~186_combout\ & ((\Add0~34_combout\) # (!\Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[17]~186_combout\,
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X10_Y7_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add0~38_combout\ & ((\RX[19]~178_combout\ & (!\Add1~37\)) # (!\RX[19]~178_combout\ & ((\Add1~37\) # (GND))))) # (!\Add0~38_combout\ & ((\RX[19]~178_combout\ & (\Add1~37\ & VCC)) # (!\RX[19]~178_combout\ & (!\Add1~37\))))
-- \Add1~39\ = CARRY((\Add0~38_combout\ & ((!\Add1~37\) # (!\RX[19]~178_combout\))) # (!\Add0~38_combout\ & (!\RX[19]~178_combout\ & !\Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \RX[19]~178_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X8_Y5_N28
\RX[19]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[19]~179_combout\ = \RX[19]~177_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~38_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(19),
	datac => \RX[19]~177_combout\,
	datad => \Add1~38_combout\,
	combout => \RX[19]~179_combout\);

-- Location: LCFF_X8_Y5_N29
\RX[19]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[19]~179_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[19]~_emulated_regout\);

-- Location: LCCOMB_X8_Y5_N26
\RX[19]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[19]~178_combout\ = (\rst~combout\ & ((\RX[19]~_emulated_regout\ $ (\RX[19]~177_combout\)))) # (!\rst~combout\ & (\X~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(19),
	datab => \RX[19]~_emulated_regout\,
	datac => \RX[19]~177_combout\,
	datad => \rst~combout\,
	combout => \RX[19]~178_combout\);

-- Location: LCCOMB_X10_Y7_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Add0~46_combout\ & ((\RX[23]~162_combout\ & (!\Add1~45\)) # (!\RX[23]~162_combout\ & ((\Add1~45\) # (GND))))) # (!\Add0~46_combout\ & ((\RX[23]~162_combout\ & (\Add1~45\ & VCC)) # (!\RX[23]~162_combout\ & (!\Add1~45\))))
-- \Add1~47\ = CARRY((\Add0~46_combout\ & ((!\Add1~45\) # (!\RX[23]~162_combout\))) # (!\Add0~46_combout\ & (!\RX[23]~162_combout\ & !\Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \RX[23]~162_combout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X13_Y9_N28
\RX[23]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[23]~161_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[23]~161_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(23),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[23]~161_combout\,
	combout => \RX[23]~161_combout\);

-- Location: LCCOMB_X13_Y9_N24
\RX[23]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[23]~163_combout\ = \RX[23]~161_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~46_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(23),
	datac => \Add1~46_combout\,
	datad => \RX[23]~161_combout\,
	combout => \RX[23]~163_combout\);

-- Location: LCFF_X13_Y9_N25
\RX[23]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[23]~163_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[23]~_emulated_regout\);

-- Location: LCCOMB_X13_Y9_N22
\RX[23]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[23]~162_combout\ = (\rst~combout\ & ((\RX[23]~_emulated_regout\ $ (\RX[23]~161_combout\)))) # (!\rst~combout\ & (\X~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \X~combout\(23),
	datac => \RX[23]~_emulated_regout\,
	datad => \RX[23]~161_combout\,
	combout => \RX[23]~162_combout\);

-- Location: LCCOMB_X10_Y7_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\Add0~52_combout\ $ (\RX[26]~150_combout\ $ (\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\Add0~52_combout\ & (\RX[26]~150_combout\ & !\Add1~51\)) # (!\Add0~52_combout\ & ((\RX[26]~150_combout\) # (!\Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \RX[26]~150_combout\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X12_Y5_N18
\RX[26]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[26]~151_combout\ = \RX[26]~149_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~52_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[26]~149_combout\,
	datab => \X~combout\(26),
	datac => \Add1~52_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[26]~151_combout\);

-- Location: LCFF_X12_Y5_N19
\RX[26]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[26]~151_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[26]~_emulated_regout\);

-- Location: LCCOMB_X12_Y7_N0
\RX[26]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[26]~150_combout\ = (\rst~combout\ & ((\RX[26]~149_combout\ $ (\RX[26]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(26),
	datab => \RX[26]~149_combout\,
	datac => \RX[26]~_emulated_regout\,
	datad => \rst~combout\,
	combout => \RX[26]~150_combout\);

-- Location: LCCOMB_X10_Y7_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\Add0~58_combout\ & ((\RX[29]~138_combout\ & (!\Add1~57\)) # (!\RX[29]~138_combout\ & ((\Add1~57\) # (GND))))) # (!\Add0~58_combout\ & ((\RX[29]~138_combout\ & (\Add1~57\ & VCC)) # (!\RX[29]~138_combout\ & (!\Add1~57\))))
-- \Add1~59\ = CARRY((\Add0~58_combout\ & ((!\Add1~57\) # (!\RX[29]~138_combout\))) # (!\Add0~58_combout\ & (!\RX[29]~138_combout\ & !\Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \RX[29]~138_combout\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X12_Y5_N12
\RX[29]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[29]~139_combout\ = \RX[29]~137_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~58_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX[29]~137_combout\,
	datac => \X~combout\(29),
	datad => \Add1~58_combout\,
	combout => \RX[29]~139_combout\);

-- Location: LCFF_X12_Y5_N13
\RX[29]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[29]~139_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[29]~_emulated_regout\);

-- Location: LCCOMB_X12_Y4_N26
\RX[29]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[29]~138_combout\ = (\rst~combout\ & ((\RX[29]~137_combout\ $ (\RX[29]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(29),
	datab => \RX[29]~137_combout\,
	datac => \rst~combout\,
	datad => \RX[29]~_emulated_regout\,
	combout => \RX[29]~138_combout\);

-- Location: LCCOMB_X10_Y6_N0
\Add1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = ((\Add0~64_combout\ $ (\RX[32]~126_combout\ $ (\Add1~63\)))) # (GND)
-- \Add1~65\ = CARRY((\Add0~64_combout\ & (\RX[32]~126_combout\ & !\Add1~63\)) # (!\Add0~64_combout\ & ((\RX[32]~126_combout\) # (!\Add1~63\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~64_combout\,
	datab => \RX[32]~126_combout\,
	datad => VCC,
	cin => \Add1~63\,
	combout => \Add1~64_combout\,
	cout => \Add1~65\);

-- Location: LCCOMB_X9_Y6_N26
\RX[32]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[32]~125_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[32]~125_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(32),
	datab => \RX[32]~125_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[32]~125_combout\);

-- Location: LCCOMB_X9_Y6_N2
\RX[32]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[32]~127_combout\ = \RX[32]~125_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~64_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(32),
	datab => \Add1~64_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \RX[32]~125_combout\,
	combout => \RX[32]~127_combout\);

-- Location: LCFF_X9_Y6_N3
\RX[32]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[32]~127_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[32]~_emulated_regout\);

-- Location: LCCOMB_X9_Y6_N20
\RX[32]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[32]~126_combout\ = (\rst~combout\ & ((\RX[32]~_emulated_regout\ $ (\RX[32]~125_combout\)))) # (!\rst~combout\ & (\X~combout\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(32),
	datab => \RX[32]~_emulated_regout\,
	datac => \rst~combout\,
	datad => \RX[32]~125_combout\,
	combout => \RX[32]~126_combout\);

-- Location: LCCOMB_X10_Y6_N2
\Add1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (\RX[33]~122_combout\ & ((\Add0~66_combout\ & (!\Add1~65\)) # (!\Add0~66_combout\ & (\Add1~65\ & VCC)))) # (!\RX[33]~122_combout\ & ((\Add0~66_combout\ & ((\Add1~65\) # (GND))) # (!\Add0~66_combout\ & (!\Add1~65\))))
-- \Add1~67\ = CARRY((\RX[33]~122_combout\ & (\Add0~66_combout\ & !\Add1~65\)) # (!\RX[33]~122_combout\ & ((\Add0~66_combout\) # (!\Add1~65\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[33]~122_combout\,
	datab => \Add0~66_combout\,
	datad => VCC,
	cin => \Add1~65\,
	combout => \Add1~66_combout\,
	cout => \Add1~67\);

-- Location: LCCOMB_X10_Y6_N6
\Add1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (\Add0~70_combout\ & ((\RX[35]~114_combout\ & (!\Add1~69\)) # (!\RX[35]~114_combout\ & ((\Add1~69\) # (GND))))) # (!\Add0~70_combout\ & ((\RX[35]~114_combout\ & (\Add1~69\ & VCC)) # (!\RX[35]~114_combout\ & (!\Add1~69\))))
-- \Add1~71\ = CARRY((\Add0~70_combout\ & ((!\Add1~69\) # (!\RX[35]~114_combout\))) # (!\Add0~70_combout\ & (!\RX[35]~114_combout\ & !\Add1~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~70_combout\,
	datab => \RX[35]~114_combout\,
	datad => VCC,
	cin => \Add1~69\,
	combout => \Add1~70_combout\,
	cout => \Add1~71\);

-- Location: LCCOMB_X12_Y6_N4
\RX[35]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[35]~115_combout\ = \RX[35]~113_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~70_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[35]~113_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \X~combout\(35),
	datad => \Add1~70_combout\,
	combout => \RX[35]~115_combout\);

-- Location: LCFF_X12_Y6_N5
\RX[35]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[35]~115_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[35]~_emulated_regout\);

-- Location: LCCOMB_X8_Y6_N14
\RX[35]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[35]~113_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[35]~113_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(35),
	datac => \RX[35]~113_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[35]~113_combout\);

-- Location: LCCOMB_X12_Y6_N6
\RX[35]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[35]~114_combout\ = (\rst~combout\ & ((\RX[35]~_emulated_regout\ $ (\RX[35]~113_combout\)))) # (!\rst~combout\ & (\X~combout\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \X~combout\(35),
	datac => \RX[35]~_emulated_regout\,
	datad => \RX[35]~113_combout\,
	combout => \RX[35]~114_combout\);

-- Location: LCCOMB_X10_Y6_N10
\Add1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\Add0~74_combout\ & ((\RX[37]~106_combout\ & (!\Add1~73\)) # (!\RX[37]~106_combout\ & ((\Add1~73\) # (GND))))) # (!\Add0~74_combout\ & ((\RX[37]~106_combout\ & (\Add1~73\ & VCC)) # (!\RX[37]~106_combout\ & (!\Add1~73\))))
-- \Add1~75\ = CARRY((\Add0~74_combout\ & ((!\Add1~73\) # (!\RX[37]~106_combout\))) # (!\Add0~74_combout\ & (!\RX[37]~106_combout\ & !\Add1~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~74_combout\,
	datab => \RX[37]~106_combout\,
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~74_combout\,
	cout => \Add1~75\);

-- Location: LCCOMB_X12_Y9_N4
\RX[37]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[37]~107_combout\ = \RX[37]~105_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~74_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[37]~105_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \X~combout\(37),
	datad => \Add1~74_combout\,
	combout => \RX[37]~107_combout\);

-- Location: LCFF_X12_Y9_N5
\RX[37]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[37]~107_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[37]~_emulated_regout\);

-- Location: LCCOMB_X12_Y9_N30
\RX[37]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[37]~106_combout\ = (\rst~combout\ & (\RX[37]~105_combout\ $ ((\RX[37]~_emulated_regout\)))) # (!\rst~combout\ & (((\X~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[37]~105_combout\,
	datab => \RX[37]~_emulated_regout\,
	datac => \X~combout\(37),
	datad => \rst~combout\,
	combout => \RX[37]~106_combout\);

-- Location: LCCOMB_X10_Y6_N24
\Add1~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~88_combout\ = ((\Add0~88_combout\ $ (\RX[44]~78_combout\ $ (\Add1~87\)))) # (GND)
-- \Add1~89\ = CARRY((\Add0~88_combout\ & (\RX[44]~78_combout\ & !\Add1~87\)) # (!\Add0~88_combout\ & ((\RX[44]~78_combout\) # (!\Add1~87\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~88_combout\,
	datab => \RX[44]~78_combout\,
	datad => VCC,
	cin => \Add1~87\,
	combout => \Add1~88_combout\,
	cout => \Add1~89\);

-- Location: LCCOMB_X9_Y6_N0
\RX[44]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[44]~77_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[44]~77_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(44),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[44]~77_combout\,
	combout => \RX[44]~77_combout\);

-- Location: LCCOMB_X9_Y6_N14
\RX[44]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[44]~79_combout\ = \RX[44]~77_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~88_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(44),
	datab => \Add1~88_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \RX[44]~77_combout\,
	combout => \RX[44]~79_combout\);

-- Location: LCFF_X9_Y6_N15
\RX[44]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[44]~79_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[44]~_emulated_regout\);

-- Location: LCCOMB_X9_Y6_N12
\RX[44]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[44]~78_combout\ = (\rst~combout\ & ((\RX[44]~_emulated_regout\ $ (\RX[44]~77_combout\)))) # (!\rst~combout\ & (\X~combout\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(44),
	datab => \rst~combout\,
	datac => \RX[44]~_emulated_regout\,
	datad => \RX[44]~77_combout\,
	combout => \RX[44]~78_combout\);

-- Location: LCCOMB_X10_Y5_N2
\Add1~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~98_combout\ = (\Add0~98_combout\ & ((\RX[49]~58_combout\ & (!\Add1~97\)) # (!\RX[49]~58_combout\ & ((\Add1~97\) # (GND))))) # (!\Add0~98_combout\ & ((\RX[49]~58_combout\ & (\Add1~97\ & VCC)) # (!\RX[49]~58_combout\ & (!\Add1~97\))))
-- \Add1~99\ = CARRY((\Add0~98_combout\ & ((!\Add1~97\) # (!\RX[49]~58_combout\))) # (!\Add0~98_combout\ & (!\RX[49]~58_combout\ & !\Add1~97\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~98_combout\,
	datab => \RX[49]~58_combout\,
	datad => VCC,
	cin => \Add1~97\,
	combout => \Add1~98_combout\,
	cout => \Add1~99\);

-- Location: LCCOMB_X9_Y5_N20
\RX[49]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[49]~59_combout\ = \RX[49]~57_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~98_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(49),
	datac => \RX[49]~57_combout\,
	datad => \Add1~98_combout\,
	combout => \RX[49]~59_combout\);

-- Location: LCFF_X9_Y5_N21
\RX[49]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[49]~59_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[49]~_emulated_regout\);

-- Location: LCCOMB_X7_Y5_N24
\RX[49]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[49]~58_combout\ = (\rst~combout\ & ((\RX[49]~57_combout\ $ (\RX[49]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \X~combout\(49),
	datac => \RX[49]~57_combout\,
	datad => \RX[49]~_emulated_regout\,
	combout => \RX[49]~58_combout\);

-- Location: LCCOMB_X10_Y5_N4
\Add1~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~100_combout\ = ((\Add0~100_combout\ $ (\RX[50]~54_combout\ $ (\Add1~99\)))) # (GND)
-- \Add1~101\ = CARRY((\Add0~100_combout\ & (\RX[50]~54_combout\ & !\Add1~99\)) # (!\Add0~100_combout\ & ((\RX[50]~54_combout\) # (!\Add1~99\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~100_combout\,
	datab => \RX[50]~54_combout\,
	datad => VCC,
	cin => \Add1~99\,
	combout => \Add1~100_combout\,
	cout => \Add1~101\);

-- Location: LCCOMB_X7_Y5_N28
\RX[50]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[50]~55_combout\ = \RX[50]~53_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~100_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(50),
	datab => \RX[50]~53_combout\,
	datac => \current_state.iter_state~regout\,
	datad => \Add1~100_combout\,
	combout => \RX[50]~55_combout\);

-- Location: LCFF_X7_Y5_N29
\RX[50]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[50]~55_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[50]~_emulated_regout\);

-- Location: LCCOMB_X7_Y5_N10
\RX[50]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[50]~54_combout\ = (\rst~combout\ & ((\RX[50]~53_combout\ $ (\RX[50]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(50),
	datab => \RX[50]~53_combout\,
	datac => \rst~combout\,
	datad => \RX[50]~_emulated_regout\,
	combout => \RX[50]~54_combout\);

-- Location: LCCOMB_X10_Y5_N6
\Add1~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~102_combout\ = (\RX[51]~50_combout\ & ((\Add0~102_combout\ & (!\Add1~101\)) # (!\Add0~102_combout\ & (\Add1~101\ & VCC)))) # (!\RX[51]~50_combout\ & ((\Add0~102_combout\ & ((\Add1~101\) # (GND))) # (!\Add0~102_combout\ & (!\Add1~101\))))
-- \Add1~103\ = CARRY((\RX[51]~50_combout\ & (\Add0~102_combout\ & !\Add1~101\)) # (!\RX[51]~50_combout\ & ((\Add0~102_combout\) # (!\Add1~101\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[51]~50_combout\,
	datab => \Add0~102_combout\,
	datad => VCC,
	cin => \Add1~101\,
	combout => \Add1~102_combout\,
	cout => \Add1~103\);

-- Location: LCCOMB_X10_Y5_N8
\Add1~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~104_combout\ = ((\Add0~104_combout\ $ (\RX[52]~46_combout\ $ (\Add1~103\)))) # (GND)
-- \Add1~105\ = CARRY((\Add0~104_combout\ & (\RX[52]~46_combout\ & !\Add1~103\)) # (!\Add0~104_combout\ & ((\RX[52]~46_combout\) # (!\Add1~103\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~104_combout\,
	datab => \RX[52]~46_combout\,
	datad => VCC,
	cin => \Add1~103\,
	combout => \Add1~104_combout\,
	cout => \Add1~105\);

-- Location: LCCOMB_X7_Y5_N16
\RX[52]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[52]~47_combout\ = \RX[52]~45_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~104_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[52]~45_combout\,
	datab => \X~combout\(52),
	datac => \current_state.iter_state~regout\,
	datad => \Add1~104_combout\,
	combout => \RX[52]~47_combout\);

-- Location: LCFF_X7_Y5_N17
\RX[52]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[52]~47_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[52]~_emulated_regout\);

-- Location: LCCOMB_X7_Y5_N12
\RX[52]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[52]~45_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[52]~45_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[52]~45_combout\,
	datab => \X~combout\(52),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[52]~45_combout\);

-- Location: LCCOMB_X7_Y5_N26
\RX[52]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[52]~46_combout\ = (\rst~combout\ & ((\RX[52]~_emulated_regout\ $ (\RX[52]~45_combout\)))) # (!\rst~combout\ & (\X~combout\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \X~combout\(52),
	datac => \RX[52]~_emulated_regout\,
	datad => \RX[52]~45_combout\,
	combout => \RX[52]~46_combout\);

-- Location: LCCOMB_X10_Y5_N12
\Add1~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~108_combout\ = ((\Add0~108_combout\ $ (\RX[54]~38_combout\ $ (\Add1~107\)))) # (GND)
-- \Add1~109\ = CARRY((\Add0~108_combout\ & (\RX[54]~38_combout\ & !\Add1~107\)) # (!\Add0~108_combout\ & ((\RX[54]~38_combout\) # (!\Add1~107\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~108_combout\,
	datab => \RX[54]~38_combout\,
	datad => VCC,
	cin => \Add1~107\,
	combout => \Add1~108_combout\,
	cout => \Add1~109\);

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(54),
	combout => \X~combout\(54));

-- Location: LCCOMB_X9_Y7_N8
\RX[54]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[54]~37_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[54]~37_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(54),
	datac => \RX[54]~37_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[54]~37_combout\);

-- Location: LCCOMB_X9_Y5_N0
\RX[54]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[54]~39_combout\ = \RX[54]~37_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~108_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(54))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \Add1~108_combout\,
	datac => \X~combout\(54),
	datad => \RX[54]~37_combout\,
	combout => \RX[54]~39_combout\);

-- Location: LCFF_X9_Y5_N1
\RX[54]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[54]~39_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[54]~_emulated_regout\);

-- Location: LCCOMB_X9_Y5_N10
\RX[54]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[54]~38_combout\ = (\rst~combout\ & (\RX[54]~_emulated_regout\ $ (((\RX[54]~37_combout\))))) # (!\rst~combout\ & (((\X~combout\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \RX[54]~_emulated_regout\,
	datac => \X~combout\(54),
	datad => \RX[54]~37_combout\,
	combout => \RX[54]~38_combout\);

-- Location: LCCOMB_X10_Y5_N14
\Add1~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~110_combout\ = (\Add0~110_combout\ & ((\RX[55]~34_combout\ & (!\Add1~109\)) # (!\RX[55]~34_combout\ & ((\Add1~109\) # (GND))))) # (!\Add0~110_combout\ & ((\RX[55]~34_combout\ & (\Add1~109\ & VCC)) # (!\RX[55]~34_combout\ & (!\Add1~109\))))
-- \Add1~111\ = CARRY((\Add0~110_combout\ & ((!\Add1~109\) # (!\RX[55]~34_combout\))) # (!\Add0~110_combout\ & (!\RX[55]~34_combout\ & !\Add1~109\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~110_combout\,
	datab => \RX[55]~34_combout\,
	datad => VCC,
	cin => \Add1~109\,
	combout => \Add1~110_combout\,
	cout => \Add1~111\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(55),
	combout => \X~combout\(55));

-- Location: LCCOMB_X9_Y7_N28
\RX[55]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[55]~35_combout\ = \RX[55]~33_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~110_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[55]~33_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add1~110_combout\,
	datad => \X~combout\(55),
	combout => \RX[55]~35_combout\);

-- Location: LCFF_X9_Y7_N29
\RX[55]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[55]~35_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[55]~_emulated_regout\);

-- Location: LCCOMB_X9_Y7_N26
\RX[55]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[55]~34_combout\ = (\rst~combout\ & (\RX[55]~33_combout\ $ ((\RX[55]~_emulated_regout\)))) # (!\rst~combout\ & (((\X~combout\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[55]~33_combout\,
	datab => \RX[55]~_emulated_regout\,
	datac => \X~combout\(55),
	datad => \rst~combout\,
	combout => \RX[55]~34_combout\);

-- Location: LCCOMB_X10_Y5_N16
\Add1~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~112_combout\ = ((\Add0~112_combout\ $ (\RX[56]~30_combout\ $ (\Add1~111\)))) # (GND)
-- \Add1~113\ = CARRY((\Add0~112_combout\ & (\RX[56]~30_combout\ & !\Add1~111\)) # (!\Add0~112_combout\ & ((\RX[56]~30_combout\) # (!\Add1~111\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~112_combout\,
	datab => \RX[56]~30_combout\,
	datad => VCC,
	cin => \Add1~111\,
	combout => \Add1~112_combout\,
	cout => \Add1~113\);

-- Location: LCCOMB_X8_Y5_N24
\RX[56]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[56]~29_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[56]~29_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(56),
	datac => \RX[56]~29_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[56]~29_combout\);

-- Location: LCCOMB_X9_Y5_N14
\RX[56]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[56]~31_combout\ = \RX[56]~29_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~112_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(56),
	datac => \Add1~112_combout\,
	datad => \RX[56]~29_combout\,
	combout => \RX[56]~31_combout\);

-- Location: LCFF_X9_Y5_N15
\RX[56]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[56]~31_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[56]~_emulated_regout\);

-- Location: LCCOMB_X8_Y5_N18
\RX[56]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[56]~30_combout\ = (\rst~combout\ & (\RX[56]~29_combout\ $ (((\RX[56]~_emulated_regout\))))) # (!\rst~combout\ & (((\X~combout\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[56]~29_combout\,
	datab => \X~combout\(56),
	datac => \rst~combout\,
	datad => \RX[56]~_emulated_regout\,
	combout => \RX[56]~30_combout\);

-- Location: LCCOMB_X10_Y5_N22
\Add1~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~118_combout\ = (\Add0~118_combout\ & ((\RX[59]~18_combout\ & (!\Add1~117\)) # (!\RX[59]~18_combout\ & ((\Add1~117\) # (GND))))) # (!\Add0~118_combout\ & ((\RX[59]~18_combout\ & (\Add1~117\ & VCC)) # (!\RX[59]~18_combout\ & (!\Add1~117\))))
-- \Add1~119\ = CARRY((\Add0~118_combout\ & ((!\Add1~117\) # (!\RX[59]~18_combout\))) # (!\Add0~118_combout\ & (!\RX[59]~18_combout\ & !\Add1~117\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~118_combout\,
	datab => \RX[59]~18_combout\,
	datad => VCC,
	cin => \Add1~117\,
	combout => \Add1~118_combout\,
	cout => \Add1~119\);

-- Location: LCCOMB_X8_Y5_N0
\RX[59]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[59]~19_combout\ = \RX[59]~17_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~118_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[59]~17_combout\,
	datab => \X~combout\(59),
	datac => \Add1~118_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[59]~19_combout\);

-- Location: LCFF_X8_Y5_N1
\RX[59]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[59]~19_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[59]~_emulated_regout\);

-- Location: LCCOMB_X8_Y5_N6
\RX[59]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[59]~18_combout\ = (\rst~combout\ & (\RX[59]~17_combout\ $ (((\RX[59]~_emulated_regout\))))) # (!\rst~combout\ & (((\X~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[59]~17_combout\,
	datab => \X~combout\(59),
	datac => \rst~combout\,
	datad => \RX[59]~_emulated_regout\,
	combout => \RX[59]~18_combout\);

-- Location: LCCOMB_X9_Y5_N8
\RX[61]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[61]~11_combout\ = \RX[61]~9_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~122_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(61),
	datab => \RX[61]~9_combout\,
	datac => \Add1~122_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[61]~11_combout\);

-- Location: LCFF_X9_Y5_N9
\RX[61]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[61]~11_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[61]~_emulated_regout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(61),
	combout => \X~combout\(61));

-- Location: LCCOMB_X9_Y5_N22
\RX[61]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[61]~10_combout\ = (\rst~combout\ & (\RX[61]~9_combout\ $ ((\RX[61]~_emulated_regout\)))) # (!\rst~combout\ & (((\X~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \RX[61]~9_combout\,
	datac => \RX[61]~_emulated_regout\,
	datad => \X~combout\(61),
	combout => \RX[61]~10_combout\);

-- Location: LCCOMB_X12_Y4_N24
\RX[51]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[51]~49_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[51]~49_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(51),
	datac => \RX[51]~49_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[51]~49_combout\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(51),
	combout => \X~combout\(51));

-- Location: LCCOMB_X12_Y5_N4
\RX[51]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[51]~51_combout\ = \RX[51]~49_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~102_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX[51]~49_combout\,
	datac => \X~combout\(51),
	datad => \Add1~102_combout\,
	combout => \RX[51]~51_combout\);

-- Location: LCFF_X12_Y5_N5
\RX[51]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[51]~51_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[51]~_emulated_regout\);

-- Location: LCCOMB_X12_Y4_N16
\RX[51]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[51]~50_combout\ = (\rst~combout\ & ((\RX[51]~49_combout\ $ (\RX[51]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(51),
	datab => \rst~combout\,
	datac => \RX[51]~49_combout\,
	datad => \RX[51]~_emulated_regout\,
	combout => \RX[51]~50_combout\);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(45),
	combout => \X~combout\(45));

-- Location: LCCOMB_X9_Y6_N30
\RX[45]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[45]~73_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[45]~73_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(45),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[45]~73_combout\,
	combout => \RX[45]~73_combout\);

-- Location: LCCOMB_X9_Y6_N28
\RX[45]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[45]~74_combout\ = (\rst~combout\ & (\RX[45]~_emulated_regout\ $ (((\RX[45]~73_combout\))))) # (!\rst~combout\ & (((\X~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[45]~_emulated_regout\,
	datab => \X~combout\(45),
	datac => \rst~combout\,
	datad => \RX[45]~73_combout\,
	combout => \RX[45]~74_combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(40),
	combout => \X~combout\(40));

-- Location: LCCOMB_X8_Y6_N8
\RX[40]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[40]~93_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[40]~93_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(40),
	datac => \RX[40]~93_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[40]~93_combout\);

-- Location: LCCOMB_X9_Y6_N4
\RX[40]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[40]~95_combout\ = \RX[40]~93_combout\ $ (((\current_state.iter_state~regout\ & (\Add1~80_combout\)) # (!\current_state.iter_state~regout\ & ((\X~combout\(40))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~80_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \X~combout\(40),
	datad => \RX[40]~93_combout\,
	combout => \RX[40]~95_combout\);

-- Location: LCFF_X9_Y6_N5
\RX[40]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[40]~95_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[40]~_emulated_regout\);

-- Location: LCCOMB_X9_Y6_N6
\RX[40]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[40]~94_combout\ = (\rst~combout\ & ((\RX[40]~_emulated_regout\ $ (\RX[40]~93_combout\)))) # (!\rst~combout\ & (\X~combout\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(40),
	datab => \rst~combout\,
	datac => \RX[40]~_emulated_regout\,
	datad => \RX[40]~93_combout\,
	combout => \RX[40]~94_combout\);

-- Location: LCCOMB_X12_Y6_N28
\RX[33]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[33]~121_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[33]~121_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(33),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[33]~121_combout\,
	combout => \RX[33]~121_combout\);

-- Location: LCCOMB_X12_Y6_N20
\RX[33]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[33]~123_combout\ = \RX[33]~121_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~66_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(33),
	datab => \RX[33]~121_combout\,
	datac => \Add1~66_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[33]~123_combout\);

-- Location: LCFF_X12_Y6_N21
\RX[33]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[33]~123_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[33]~_emulated_regout\);

-- Location: LCCOMB_X12_Y6_N26
\RX[33]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[33]~122_combout\ = (\rst~combout\ & ((\RX[33]~121_combout\ $ (\RX[33]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(33),
	datab => \RX[33]~121_combout\,
	datac => \RX[33]~_emulated_regout\,
	datad => \rst~combout\,
	combout => \RX[33]~122_combout\);

-- Location: LCCOMB_X12_Y9_N26
\RX[17]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[17]~185_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[17]~185_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(17),
	datac => \rst~clkctrl_outclk\,
	datad => \RX[17]~185_combout\,
	combout => \RX[17]~185_combout\);

-- Location: LCCOMB_X12_Y9_N8
\RX[17]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[17]~187_combout\ = \RX[17]~185_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~34_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(17),
	datab => \RX[17]~185_combout\,
	datac => \Add1~34_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[17]~187_combout\);

-- Location: LCFF_X12_Y9_N9
\RX[17]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[17]~187_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[17]~_emulated_regout\);

-- Location: LCCOMB_X12_Y9_N6
\RX[17]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[17]~186_combout\ = (\rst~combout\ & ((\RX[17]~_emulated_regout\ $ (\RX[17]~185_combout\)))) # (!\rst~combout\ & (\X~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(17),
	datab => \RX[17]~_emulated_regout\,
	datac => \rst~combout\,
	datad => \RX[17]~185_combout\,
	combout => \RX[17]~186_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(13),
	combout => \X~combout\(13));

-- Location: LCCOMB_X8_Y8_N28
\RX[13]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[13]~203_combout\ = \RX[13]~201_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~26_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[13]~201_combout\,
	datab => \X~combout\(13),
	datac => \Add1~26_combout\,
	datad => \current_state.iter_state~regout\,
	combout => \RX[13]~203_combout\);

-- Location: LCFF_X8_Y8_N29
\RX[13]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[13]~203_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[13]~_emulated_regout\);

-- Location: LCCOMB_X8_Y8_N22
\RX[13]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[13]~202_combout\ = (\rst~combout\ & (\RX[13]~201_combout\ $ (((\RX[13]~_emulated_regout\))))) # (!\rst~combout\ & (((\X~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[13]~201_combout\,
	datab => \X~combout\(13),
	datac => \RX[13]~_emulated_regout\,
	datad => \rst~combout\,
	combout => \RX[13]~202_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(10),
	combout => \X~combout\(10));

-- Location: LCCOMB_X9_Y8_N20
\RX[10]~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[10]~213_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[10]~213_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(10),
	datac => \RX[10]~213_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[10]~213_combout\);

-- Location: LCCOMB_X9_Y8_N8
\RX[10]~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[10]~214_combout\ = (\rst~combout\ & (\RX[10]~_emulated_regout\ $ (((\RX[10]~213_combout\))))) # (!\rst~combout\ & (((\X~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[10]~_emulated_regout\,
	datab => \X~combout\(10),
	datac => \RX[10]~213_combout\,
	datad => \rst~combout\,
	combout => \RX[10]~214_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(8),
	combout => \X~combout\(8));

-- Location: LCCOMB_X12_Y8_N14
\RX[8]~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[8]~221_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[8]~221_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(8),
	datac => \RX[8]~221_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[8]~221_combout\);

-- Location: LCCOMB_X12_Y8_N26
\RX[8]~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[8]~223_combout\ = \RX[8]~221_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~16_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \X~combout\(8),
	datac => \RX[8]~221_combout\,
	datad => \Add1~16_combout\,
	combout => \RX[8]~223_combout\);

-- Location: LCFF_X12_Y8_N27
\RX[8]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[8]~223_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[8]~_emulated_regout\);

-- Location: LCCOMB_X12_Y8_N4
\RX[8]~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[8]~222_combout\ = (\rst~combout\ & ((\RX[8]~221_combout\ $ (\RX[8]~_emulated_regout\)))) # (!\rst~combout\ & (\X~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \X~combout\(8),
	datac => \RX[8]~221_combout\,
	datad => \RX[8]~_emulated_regout\,
	combout => \RX[8]~222_combout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: LCCOMB_X12_Y8_N22
\RX[3]~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[3]~241_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & (\RX[3]~241_combout\)) # (!GLOBAL(\rst~clkctrl_outclk\) & ((\X~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX[3]~241_combout\,
	datac => \X~combout\(3),
	datad => \rst~clkctrl_outclk\,
	combout => \RX[3]~241_combout\);

-- Location: LCCOMB_X12_Y8_N30
\RX[3]~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[3]~243_combout\ = \RX[3]~241_combout\ $ (((\current_state.iter_state~regout\ & ((\Add1~6_combout\))) # (!\current_state.iter_state~regout\ & (\X~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX[3]~241_combout\,
	datac => \X~combout\(3),
	datad => \Add1~6_combout\,
	combout => \RX[3]~243_combout\);

-- Location: LCFF_X12_Y8_N31
\RX[3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RX[3]~243_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \RX[60]~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX[3]~_emulated_regout\);

-- Location: LCCOMB_X12_Y8_N16
\RX[3]~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[3]~242_combout\ = (\rst~combout\ & ((\RX[3]~_emulated_regout\ $ (\RX[3]~241_combout\)))) # (!\rst~combout\ & (\X~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(3),
	datab => \RX[3]~_emulated_regout\,
	datac => \rst~combout\,
	datad => \RX[3]~241_combout\,
	combout => \RX[3]~242_combout\);

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: LCCOMB_X12_Y6_N30
\RX[2]~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[2]~245_combout\ = (GLOBAL(\rst~clkctrl_outclk\) & ((\RX[2]~245_combout\))) # (!GLOBAL(\rst~clkctrl_outclk\) & (\X~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(2),
	datab => \RX[2]~245_combout\,
	datad => \rst~clkctrl_outclk\,
	combout => \RX[2]~245_combout\);

-- Location: LCCOMB_X12_Y6_N22
\RX[2]~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \RX[2]~246_combout\ = (\rst~combout\ & (\RX[2]~_emulated_regout\ $ (((\RX[2]~245_combout\))))) # (!\rst~combout\ & (((\X~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX[2]~_emulated_regout\,
	datab => \X~combout\(2),
	datac => \rst~combout\,
	datad => \RX[2]~245_combout\,
	combout => \RX[2]~246_combout\);

-- Location: LCCOMB_X13_Y8_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\RX[0]~254_combout\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[0]~254_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X13_Y8_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\Add0~2_combout\ & (\RX[1]~250_combout\ & !\LessThan0~1_cout\)) # (!\Add0~2_combout\ & ((\RX[1]~250_combout\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \RX[1]~250_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X13_Y8_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Add0~4_combout\ & ((!\LessThan0~3_cout\) # (!\RX[2]~246_combout\))) # (!\Add0~4_combout\ & (!\RX[2]~246_combout\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \RX[2]~246_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X13_Y8_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Add0~6_combout\ & (\RX[3]~242_combout\ & !\LessThan0~5_cout\)) # (!\Add0~6_combout\ & ((\RX[3]~242_combout\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \RX[3]~242_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X13_Y8_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\RX[4]~238_combout\ & (\Add0~8_combout\ & !\LessThan0~7_cout\)) # (!\RX[4]~238_combout\ & ((\Add0~8_combout\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[4]~238_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X13_Y8_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\RX[5]~234_combout\ & ((!\LessThan0~9_cout\) # (!\Add0~10_combout\))) # (!\RX[5]~234_combout\ & (!\Add0~10_combout\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[5]~234_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X13_Y8_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\RX[6]~230_combout\ & (\Add0~12_combout\ & !\LessThan0~11_cout\)) # (!\RX[6]~230_combout\ & ((\Add0~12_combout\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[6]~230_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X13_Y8_N14
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\RX[7]~226_combout\ & ((!\LessThan0~13_cout\) # (!\Add0~14_combout\))) # (!\RX[7]~226_combout\ & (!\Add0~14_combout\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[7]~226_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X13_Y8_N16
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\Add0~16_combout\ & ((!\LessThan0~15_cout\) # (!\RX[8]~222_combout\))) # (!\Add0~16_combout\ & (!\RX[8]~222_combout\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \RX[8]~222_combout\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X13_Y8_N18
\LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\RX[9]~218_combout\ & ((!\LessThan0~17_cout\) # (!\Add0~18_combout\))) # (!\RX[9]~218_combout\ & (!\Add0~18_combout\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[9]~218_combout\,
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X13_Y8_N20
\LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\Add0~20_combout\ & ((!\LessThan0~19_cout\) # (!\RX[10]~214_combout\))) # (!\Add0~20_combout\ & (!\RX[10]~214_combout\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \RX[10]~214_combout\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X13_Y8_N22
\LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\RX[11]~210_combout\ & ((!\LessThan0~21_cout\) # (!\Add0~22_combout\))) # (!\RX[11]~210_combout\ & (!\Add0~22_combout\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[11]~210_combout\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X13_Y8_N24
\LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\RX[12]~206_combout\ & (\Add0~24_combout\ & !\LessThan0~23_cout\)) # (!\RX[12]~206_combout\ & ((\Add0~24_combout\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[12]~206_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X13_Y8_N26
\LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\Add0~26_combout\ & (\RX[13]~202_combout\ & !\LessThan0~25_cout\)) # (!\Add0~26_combout\ & ((\RX[13]~202_combout\) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \RX[13]~202_combout\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X13_Y8_N28
\LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\RX[14]~198_combout\ & (\Add0~28_combout\ & !\LessThan0~27_cout\)) # (!\RX[14]~198_combout\ & ((\Add0~28_combout\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[14]~198_combout\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X13_Y8_N30
\LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\RX[15]~194_combout\ & ((!\LessThan0~29_cout\) # (!\Add0~30_combout\))) # (!\RX[15]~194_combout\ & (!\Add0~30_combout\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[15]~194_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X13_Y7_N0
\LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\RX[16]~190_combout\ & (\Add0~32_combout\ & !\LessThan0~31_cout\)) # (!\RX[16]~190_combout\ & ((\Add0~32_combout\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[16]~190_combout\,
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X13_Y7_N2
\LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\Add0~34_combout\ & (\RX[17]~186_combout\ & !\LessThan0~33_cout\)) # (!\Add0~34_combout\ & ((\RX[17]~186_combout\) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \RX[17]~186_combout\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X13_Y7_N4
\LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\Add0~36_combout\ & ((!\LessThan0~35_cout\) # (!\RX[18]~182_combout\))) # (!\Add0~36_combout\ & (!\RX[18]~182_combout\ & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \RX[18]~182_combout\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X13_Y7_N6
\LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\Add0~38_combout\ & (\RX[19]~178_combout\ & !\LessThan0~37_cout\)) # (!\Add0~38_combout\ & ((\RX[19]~178_combout\) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \RX[19]~178_combout\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X13_Y7_N8
\LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\RX[20]~174_combout\ & (\Add0~40_combout\ & !\LessThan0~39_cout\)) # (!\RX[20]~174_combout\ & ((\Add0~40_combout\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[20]~174_combout\,
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X13_Y7_N10
\LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\RX[21]~170_combout\ & ((!\LessThan0~41_cout\) # (!\Add0~42_combout\))) # (!\RX[21]~170_combout\ & (!\Add0~42_combout\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[21]~170_combout\,
	datab => \Add0~42_combout\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X13_Y7_N12
\LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\RX[22]~166_combout\ & (\Add0~44_combout\ & !\LessThan0~43_cout\)) # (!\RX[22]~166_combout\ & ((\Add0~44_combout\) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[22]~166_combout\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X13_Y7_N14
\LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\RX[23]~162_combout\ & ((!\LessThan0~45_cout\) # (!\Add0~46_combout\))) # (!\RX[23]~162_combout\ & (!\Add0~46_combout\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[23]~162_combout\,
	datab => \Add0~46_combout\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X13_Y7_N16
\LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\Add0~48_combout\ & ((!\LessThan0~47_cout\) # (!\RX[24]~158_combout\))) # (!\Add0~48_combout\ & (!\RX[24]~158_combout\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \RX[24]~158_combout\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X13_Y7_N18
\LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\RX[25]~154_combout\ & ((!\LessThan0~49_cout\) # (!\Add0~50_combout\))) # (!\RX[25]~154_combout\ & (!\Add0~50_combout\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[25]~154_combout\,
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X13_Y7_N20
\LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\RX[26]~150_combout\ & (\Add0~52_combout\ & !\LessThan0~51_cout\)) # (!\RX[26]~150_combout\ & ((\Add0~52_combout\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[26]~150_combout\,
	datab => \Add0~52_combout\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X13_Y7_N22
\LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\RX[27]~146_combout\ & ((!\LessThan0~53_cout\) # (!\Add0~54_combout\))) # (!\RX[27]~146_combout\ & (!\Add0~54_combout\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[27]~146_combout\,
	datab => \Add0~54_combout\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X13_Y7_N24
\LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\RX[28]~142_combout\ & (\Add0~56_combout\ & !\LessThan0~55_cout\)) # (!\RX[28]~142_combout\ & ((\Add0~56_combout\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[28]~142_combout\,
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X13_Y7_N26
\LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\Add0~58_combout\ & (\RX[29]~138_combout\ & !\LessThan0~57_cout\)) # (!\Add0~58_combout\ & ((\RX[29]~138_combout\) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \RX[29]~138_combout\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X13_Y7_N28
\LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\RX[30]~134_combout\ & (\Add0~60_combout\ & !\LessThan0~59_cout\)) # (!\RX[30]~134_combout\ & ((\Add0~60_combout\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[30]~134_combout\,
	datab => \Add0~60_combout\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X13_Y7_N30
\LessThan0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~63_cout\ = CARRY((\RX[31]~130_combout\ & ((!\LessThan0~61_cout\) # (!\Add0~62_combout\))) # (!\RX[31]~130_combout\ & (!\Add0~62_combout\ & !\LessThan0~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[31]~130_combout\,
	datab => \Add0~62_combout\,
	datad => VCC,
	cin => \LessThan0~61_cout\,
	cout => \LessThan0~63_cout\);

-- Location: LCCOMB_X13_Y6_N0
\LessThan0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~65_cout\ = CARRY((\RX[32]~126_combout\ & (\Add0~64_combout\ & !\LessThan0~63_cout\)) # (!\RX[32]~126_combout\ & ((\Add0~64_combout\) # (!\LessThan0~63_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[32]~126_combout\,
	datab => \Add0~64_combout\,
	datad => VCC,
	cin => \LessThan0~63_cout\,
	cout => \LessThan0~65_cout\);

-- Location: LCCOMB_X13_Y6_N2
\LessThan0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~67_cout\ = CARRY((\Add0~66_combout\ & (\RX[33]~122_combout\ & !\LessThan0~65_cout\)) # (!\Add0~66_combout\ & ((\RX[33]~122_combout\) # (!\LessThan0~65_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datab => \RX[33]~122_combout\,
	datad => VCC,
	cin => \LessThan0~65_cout\,
	cout => \LessThan0~67_cout\);

-- Location: LCCOMB_X13_Y6_N4
\LessThan0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~69_cout\ = CARRY((\Add0~68_combout\ & ((!\LessThan0~67_cout\) # (!\RX[34]~118_combout\))) # (!\Add0~68_combout\ & (!\RX[34]~118_combout\ & !\LessThan0~67_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datab => \RX[34]~118_combout\,
	datad => VCC,
	cin => \LessThan0~67_cout\,
	cout => \LessThan0~69_cout\);

-- Location: LCCOMB_X13_Y6_N6
\LessThan0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~71_cout\ = CARRY((\Add0~70_combout\ & (\RX[35]~114_combout\ & !\LessThan0~69_cout\)) # (!\Add0~70_combout\ & ((\RX[35]~114_combout\) # (!\LessThan0~69_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~70_combout\,
	datab => \RX[35]~114_combout\,
	datad => VCC,
	cin => \LessThan0~69_cout\,
	cout => \LessThan0~71_cout\);

-- Location: LCCOMB_X13_Y6_N8
\LessThan0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~73_cout\ = CARRY((\RX[36]~110_combout\ & (\Add0~72_combout\ & !\LessThan0~71_cout\)) # (!\RX[36]~110_combout\ & ((\Add0~72_combout\) # (!\LessThan0~71_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[36]~110_combout\,
	datab => \Add0~72_combout\,
	datad => VCC,
	cin => \LessThan0~71_cout\,
	cout => \LessThan0~73_cout\);

-- Location: LCCOMB_X13_Y6_N10
\LessThan0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~75_cout\ = CARRY((\RX[37]~106_combout\ & ((!\LessThan0~73_cout\) # (!\Add0~74_combout\))) # (!\RX[37]~106_combout\ & (!\Add0~74_combout\ & !\LessThan0~73_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[37]~106_combout\,
	datab => \Add0~74_combout\,
	datad => VCC,
	cin => \LessThan0~73_cout\,
	cout => \LessThan0~75_cout\);

-- Location: LCCOMB_X13_Y6_N12
\LessThan0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~77_cout\ = CARRY((\RX[38]~102_combout\ & (\Add0~76_combout\ & !\LessThan0~75_cout\)) # (!\RX[38]~102_combout\ & ((\Add0~76_combout\) # (!\LessThan0~75_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[38]~102_combout\,
	datab => \Add0~76_combout\,
	datad => VCC,
	cin => \LessThan0~75_cout\,
	cout => \LessThan0~77_cout\);

-- Location: LCCOMB_X13_Y6_N14
\LessThan0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~79_cout\ = CARRY((\RX[39]~98_combout\ & ((!\LessThan0~77_cout\) # (!\Add0~78_combout\))) # (!\RX[39]~98_combout\ & (!\Add0~78_combout\ & !\LessThan0~77_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[39]~98_combout\,
	datab => \Add0~78_combout\,
	datad => VCC,
	cin => \LessThan0~77_cout\,
	cout => \LessThan0~79_cout\);

-- Location: LCCOMB_X13_Y6_N16
\LessThan0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~81_cout\ = CARRY((\Add0~80_combout\ & ((!\LessThan0~79_cout\) # (!\RX[40]~94_combout\))) # (!\Add0~80_combout\ & (!\RX[40]~94_combout\ & !\LessThan0~79_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \RX[40]~94_combout\,
	datad => VCC,
	cin => \LessThan0~79_cout\,
	cout => \LessThan0~81_cout\);

-- Location: LCCOMB_X13_Y6_N18
\LessThan0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~83_cout\ = CARRY((\RX[41]~90_combout\ & ((!\LessThan0~81_cout\) # (!\Add0~82_combout\))) # (!\RX[41]~90_combout\ & (!\Add0~82_combout\ & !\LessThan0~81_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[41]~90_combout\,
	datab => \Add0~82_combout\,
	datad => VCC,
	cin => \LessThan0~81_cout\,
	cout => \LessThan0~83_cout\);

-- Location: LCCOMB_X13_Y6_N20
\LessThan0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~85_cout\ = CARRY((\RX[42]~86_combout\ & (\Add0~84_combout\ & !\LessThan0~83_cout\)) # (!\RX[42]~86_combout\ & ((\Add0~84_combout\) # (!\LessThan0~83_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[42]~86_combout\,
	datab => \Add0~84_combout\,
	datad => VCC,
	cin => \LessThan0~83_cout\,
	cout => \LessThan0~85_cout\);

-- Location: LCCOMB_X13_Y6_N22
\LessThan0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~87_cout\ = CARRY((\RX[43]~82_combout\ & ((!\LessThan0~85_cout\) # (!\Add0~86_combout\))) # (!\RX[43]~82_combout\ & (!\Add0~86_combout\ & !\LessThan0~85_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[43]~82_combout\,
	datab => \Add0~86_combout\,
	datad => VCC,
	cin => \LessThan0~85_cout\,
	cout => \LessThan0~87_cout\);

-- Location: LCCOMB_X13_Y6_N24
\LessThan0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~89_cout\ = CARRY((\RX[44]~78_combout\ & (\Add0~88_combout\ & !\LessThan0~87_cout\)) # (!\RX[44]~78_combout\ & ((\Add0~88_combout\) # (!\LessThan0~87_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[44]~78_combout\,
	datab => \Add0~88_combout\,
	datad => VCC,
	cin => \LessThan0~87_cout\,
	cout => \LessThan0~89_cout\);

-- Location: LCCOMB_X13_Y6_N26
\LessThan0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~91_cout\ = CARRY((\Add0~90_combout\ & (\RX[45]~74_combout\ & !\LessThan0~89_cout\)) # (!\Add0~90_combout\ & ((\RX[45]~74_combout\) # (!\LessThan0~89_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datab => \RX[45]~74_combout\,
	datad => VCC,
	cin => \LessThan0~89_cout\,
	cout => \LessThan0~91_cout\);

-- Location: LCCOMB_X13_Y6_N28
\LessThan0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~93_cout\ = CARRY((\RX[46]~70_combout\ & (\Add0~92_combout\ & !\LessThan0~91_cout\)) # (!\RX[46]~70_combout\ & ((\Add0~92_combout\) # (!\LessThan0~91_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[46]~70_combout\,
	datab => \Add0~92_combout\,
	datad => VCC,
	cin => \LessThan0~91_cout\,
	cout => \LessThan0~93_cout\);

-- Location: LCCOMB_X13_Y6_N30
\LessThan0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~95_cout\ = CARRY((\RX[47]~66_combout\ & ((!\LessThan0~93_cout\) # (!\Add0~94_combout\))) # (!\RX[47]~66_combout\ & (!\Add0~94_combout\ & !\LessThan0~93_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[47]~66_combout\,
	datab => \Add0~94_combout\,
	datad => VCC,
	cin => \LessThan0~93_cout\,
	cout => \LessThan0~95_cout\);

-- Location: LCCOMB_X13_Y5_N0
\LessThan0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~97_cout\ = CARRY((\RX[48]~62_combout\ & (\Add0~96_combout\ & !\LessThan0~95_cout\)) # (!\RX[48]~62_combout\ & ((\Add0~96_combout\) # (!\LessThan0~95_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[48]~62_combout\,
	datab => \Add0~96_combout\,
	datad => VCC,
	cin => \LessThan0~95_cout\,
	cout => \LessThan0~97_cout\);

-- Location: LCCOMB_X13_Y5_N2
\LessThan0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~99_cout\ = CARRY((\Add0~98_combout\ & (\RX[49]~58_combout\ & !\LessThan0~97_cout\)) # (!\Add0~98_combout\ & ((\RX[49]~58_combout\) # (!\LessThan0~97_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~98_combout\,
	datab => \RX[49]~58_combout\,
	datad => VCC,
	cin => \LessThan0~97_cout\,
	cout => \LessThan0~99_cout\);

-- Location: LCCOMB_X13_Y5_N4
\LessThan0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~101_cout\ = CARRY((\Add0~100_combout\ & ((!\LessThan0~99_cout\) # (!\RX[50]~54_combout\))) # (!\Add0~100_combout\ & (!\RX[50]~54_combout\ & !\LessThan0~99_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~100_combout\,
	datab => \RX[50]~54_combout\,
	datad => VCC,
	cin => \LessThan0~99_cout\,
	cout => \LessThan0~101_cout\);

-- Location: LCCOMB_X13_Y5_N6
\LessThan0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~103_cout\ = CARRY((\Add0~102_combout\ & (\RX[51]~50_combout\ & !\LessThan0~101_cout\)) # (!\Add0~102_combout\ & ((\RX[51]~50_combout\) # (!\LessThan0~101_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~102_combout\,
	datab => \RX[51]~50_combout\,
	datad => VCC,
	cin => \LessThan0~101_cout\,
	cout => \LessThan0~103_cout\);

-- Location: LCCOMB_X13_Y5_N8
\LessThan0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~105_cout\ = CARRY((\RX[52]~46_combout\ & (\Add0~104_combout\ & !\LessThan0~103_cout\)) # (!\RX[52]~46_combout\ & ((\Add0~104_combout\) # (!\LessThan0~103_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[52]~46_combout\,
	datab => \Add0~104_combout\,
	datad => VCC,
	cin => \LessThan0~103_cout\,
	cout => \LessThan0~105_cout\);

-- Location: LCCOMB_X13_Y5_N10
\LessThan0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~107_cout\ = CARRY((\RX[53]~42_combout\ & ((!\LessThan0~105_cout\) # (!\Add0~106_combout\))) # (!\RX[53]~42_combout\ & (!\Add0~106_combout\ & !\LessThan0~105_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[53]~42_combout\,
	datab => \Add0~106_combout\,
	datad => VCC,
	cin => \LessThan0~105_cout\,
	cout => \LessThan0~107_cout\);

-- Location: LCCOMB_X13_Y5_N12
\LessThan0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~109_cout\ = CARRY((\RX[54]~38_combout\ & (\Add0~108_combout\ & !\LessThan0~107_cout\)) # (!\RX[54]~38_combout\ & ((\Add0~108_combout\) # (!\LessThan0~107_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[54]~38_combout\,
	datab => \Add0~108_combout\,
	datad => VCC,
	cin => \LessThan0~107_cout\,
	cout => \LessThan0~109_cout\);

-- Location: LCCOMB_X13_Y5_N14
\LessThan0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~111_cout\ = CARRY((\RX[55]~34_combout\ & ((!\LessThan0~109_cout\) # (!\Add0~110_combout\))) # (!\RX[55]~34_combout\ & (!\Add0~110_combout\ & !\LessThan0~109_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[55]~34_combout\,
	datab => \Add0~110_combout\,
	datad => VCC,
	cin => \LessThan0~109_cout\,
	cout => \LessThan0~111_cout\);

-- Location: LCCOMB_X13_Y5_N16
\LessThan0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~113_cout\ = CARRY((\Add0~112_combout\ & ((!\LessThan0~111_cout\) # (!\RX[56]~30_combout\))) # (!\Add0~112_combout\ & (!\RX[56]~30_combout\ & !\LessThan0~111_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~112_combout\,
	datab => \RX[56]~30_combout\,
	datad => VCC,
	cin => \LessThan0~111_cout\,
	cout => \LessThan0~113_cout\);

-- Location: LCCOMB_X13_Y5_N18
\LessThan0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~115_cout\ = CARRY((\RX[57]~26_combout\ & ((!\LessThan0~113_cout\) # (!\Add0~114_combout\))) # (!\RX[57]~26_combout\ & (!\Add0~114_combout\ & !\LessThan0~113_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[57]~26_combout\,
	datab => \Add0~114_combout\,
	datad => VCC,
	cin => \LessThan0~113_cout\,
	cout => \LessThan0~115_cout\);

-- Location: LCCOMB_X13_Y5_N20
\LessThan0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~117_cout\ = CARRY((\RX[58]~22_combout\ & (\Add0~116_combout\ & !\LessThan0~115_cout\)) # (!\RX[58]~22_combout\ & ((\Add0~116_combout\) # (!\LessThan0~115_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[58]~22_combout\,
	datab => \Add0~116_combout\,
	datad => VCC,
	cin => \LessThan0~115_cout\,
	cout => \LessThan0~117_cout\);

-- Location: LCCOMB_X13_Y5_N22
\LessThan0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~119_cout\ = CARRY((\RX[59]~18_combout\ & ((!\LessThan0~117_cout\) # (!\Add0~118_combout\))) # (!\RX[59]~18_combout\ & (!\Add0~118_combout\ & !\LessThan0~117_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[59]~18_combout\,
	datab => \Add0~118_combout\,
	datad => VCC,
	cin => \LessThan0~117_cout\,
	cout => \LessThan0~119_cout\);

-- Location: LCCOMB_X13_Y5_N24
\LessThan0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~121_cout\ = CARRY((\RX[60]~14_combout\ & (\Add0~120_combout\ & !\LessThan0~119_cout\)) # (!\RX[60]~14_combout\ & ((\Add0~120_combout\) # (!\LessThan0~119_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[60]~14_combout\,
	datab => \Add0~120_combout\,
	datad => VCC,
	cin => \LessThan0~119_cout\,
	cout => \LessThan0~121_cout\);

-- Location: LCCOMB_X13_Y5_N26
\LessThan0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~123_cout\ = CARRY((\Add0~122_combout\ & (\RX[61]~10_combout\ & !\LessThan0~121_cout\)) # (!\Add0~122_combout\ & ((\RX[61]~10_combout\) # (!\LessThan0~121_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~122_combout\,
	datab => \RX[61]~10_combout\,
	datad => VCC,
	cin => \LessThan0~121_cout\,
	cout => \LessThan0~123_cout\);

-- Location: LCCOMB_X13_Y5_N28
\LessThan0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~125_cout\ = CARRY((\RX[62]~6_combout\ & (\Add0~124_combout\ & !\LessThan0~123_cout\)) # (!\RX[62]~6_combout\ & ((\Add0~124_combout\) # (!\LessThan0~123_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[62]~6_combout\,
	datab => \Add0~124_combout\,
	datad => VCC,
	cin => \LessThan0~123_cout\,
	cout => \LessThan0~125_cout\);

-- Location: LCCOMB_X13_Y5_N30
\LessThan0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~126_combout\ = (\RX[63]~2_combout\ & (\LessThan0~125_cout\ & \Add0~126_combout\)) # (!\RX[63]~2_combout\ & ((\LessThan0~125_cout\) # (\Add0~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX[63]~2_combout\,
	datad => \Add0~126_combout\,
	cin => \LessThan0~125_cout\,
	combout => \LessThan0~126_combout\);

-- Location: LCCOMB_X13_Y4_N22
\Selector194~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector194~0_combout\ = (\LessThan0~126_combout\ & (RZ(5))) # (!\LessThan0~126_combout\ & ((\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RZ(5),
	datac => \LessThan0~126_combout\,
	datad => \Add2~10_combout\,
	combout => \Selector194~0_combout\);

-- Location: LCCOMB_X13_Y4_N28
\Selector194~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector194~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector194~0_combout\) # ((\RX~258_combout\ & RZ(4))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(4),
	datad => \Selector194~0_combout\,
	combout => \Selector194~1_combout\);

-- Location: LCFF_X13_Y4_N29
\RZ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector194~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(4));

-- Location: LCCOMB_X13_Y4_N12
\Selector195~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector195~0_combout\ = (\LessThan0~126_combout\ & (RZ(4))) # (!\LessThan0~126_combout\ & ((\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => RZ(4),
	datac => \LessThan0~126_combout\,
	datad => \Add2~8_combout\,
	combout => \Selector195~0_combout\);

-- Location: LCCOMB_X13_Y4_N26
\Selector195~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector195~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector195~0_combout\) # ((\RX~258_combout\ & RZ(3))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(3),
	datad => \Selector195~0_combout\,
	combout => \Selector195~1_combout\);

-- Location: LCFF_X13_Y4_N27
\RZ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector195~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(3));

-- Location: LCCOMB_X13_Y4_N6
\Selector196~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector196~0_combout\ = (\LessThan0~126_combout\ & (RZ(3))) # (!\LessThan0~126_combout\ & ((\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => RZ(3),
	datac => \LessThan0~126_combout\,
	datad => \Add2~6_combout\,
	combout => \Selector196~0_combout\);

-- Location: LCCOMB_X13_Y4_N24
\Selector196~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector196~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector196~0_combout\) # ((\RX~258_combout\ & RZ(2))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(2),
	datad => \Selector196~0_combout\,
	combout => \Selector196~1_combout\);

-- Location: LCFF_X13_Y4_N25
\RZ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector196~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(2));

-- Location: LCCOMB_X15_Y4_N0
\Selector197~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector197~0_combout\ = (\LessThan0~126_combout\ & ((RZ(2)))) # (!\LessThan0~126_combout\ & (\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~4_combout\,
	datac => RZ(2),
	datad => \LessThan0~126_combout\,
	combout => \Selector197~0_combout\);

-- Location: LCCOMB_X15_Y4_N8
\Selector197~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector197~1_combout\ = (\RX~258_combout\ & ((RZ(1)) # ((\current_state.iter_state~regout\ & \Selector197~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector197~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(1),
	datad => \Selector197~0_combout\,
	combout => \Selector197~1_combout\);

-- Location: LCFF_X15_Y4_N9
\RZ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector197~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(1));

-- Location: LCCOMB_X15_Y4_N12
\Selector198~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector198~0_combout\ = (\LessThan0~126_combout\ & ((RZ(1)))) # (!\LessThan0~126_combout\ & (\Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => RZ(1),
	datad => \LessThan0~126_combout\,
	combout => \Selector198~0_combout\);

-- Location: LCCOMB_X15_Y4_N6
\Selector198~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector198~1_combout\ = (\RX~258_combout\ & ((RZ(0)) # ((\current_state.iter_state~regout\ & \Selector198~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector198~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(0),
	datad => \Selector198~0_combout\,
	combout => \Selector198~1_combout\);

-- Location: LCFF_X15_Y4_N7
\RZ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector198~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(0));

-- Location: LCCOMB_X15_Y4_N20
\result[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~reg0feeder_combout\ = RZ(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(0),
	combout => \result[0]~reg0feeder_combout\);

-- Location: LCCOMB_X15_Y4_N24
\done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\current_state.wait_state~regout\ & !\current_state.iter_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.wait_state~regout\,
	datad => \current_state.iter_state~regout\,
	combout => \done~0_combout\);

-- Location: LCFF_X15_Y4_N21
\result[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[0]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[0]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N16
\result[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]~32_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[0]~32_combout\);

-- Location: LCFF_X18_Y4_N17
\result[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[0]~32_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[0]~en_regout\);

-- Location: LCFF_X15_Y4_N27
\result[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(1),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[1]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N16
\result[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[1]~33_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[1]~33_combout\);

-- Location: LCFF_X27_Y4_N17
\result[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[1]~33_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[1]~en_regout\);

-- Location: LCFF_X15_Y4_N1
\result[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(2),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[2]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N10
\result[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[2]~34_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[2]~34_combout\);

-- Location: LCFF_X27_Y4_N11
\result[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[2]~34_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[2]~en_regout\);

-- Location: LCCOMB_X13_Y4_N16
\result[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[3]~reg0feeder_combout\ = RZ(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(3),
	combout => \result[3]~reg0feeder_combout\);

-- Location: LCFF_X13_Y4_N17
\result[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[3]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[3]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N4
\result[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[3]~35_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[3]~35_combout\);

-- Location: LCFF_X27_Y4_N5
\result[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[3]~35_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[3]~en_regout\);

-- Location: LCCOMB_X13_Y4_N18
\result[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[4]~reg0feeder_combout\ = RZ(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(4),
	combout => \result[4]~reg0feeder_combout\);

-- Location: LCFF_X13_Y4_N19
\result[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[4]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[4]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N6
\result[4]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[4]~36_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[4]~36_combout\);

-- Location: LCFF_X27_Y4_N7
\result[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[4]~36_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[4]~en_regout\);

-- Location: LCCOMB_X13_Y4_N8
\result[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[5]~reg0feeder_combout\ = RZ(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(5),
	combout => \result[5]~reg0feeder_combout\);

-- Location: LCFF_X13_Y4_N9
\result[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[5]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[5]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N10
\result[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[5]~37_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[5]~37_combout\);

-- Location: LCFF_X18_Y4_N11
\result[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[5]~37_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[5]~en_regout\);

-- Location: LCFF_X14_Y4_N9
\result[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(6),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[6]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N12
\result[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[6]~38_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[6]~38_combout\);

-- Location: LCFF_X27_Y4_N13
\result[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[6]~38_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[6]~en_regout\);

-- Location: LCFF_X14_Y4_N11
\result[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(7),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[7]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N8
\result[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[7]~39_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[7]~39_combout\);

-- Location: LCFF_X18_Y4_N9
\result[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[7]~39_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[7]~en_regout\);

-- Location: LCCOMB_X14_Y4_N16
\result[8]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[8]~reg0feeder_combout\ = RZ(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(8),
	combout => \result[8]~reg0feeder_combout\);

-- Location: LCFF_X14_Y4_N17
\result[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[8]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[8]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N30
\result[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[8]~40_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[8]~40_combout\);

-- Location: LCFF_X18_Y4_N31
\result[8]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[8]~40_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[8]~en_regout\);

-- Location: LCFF_X14_Y4_N19
\result[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(9),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[9]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N22
\result[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[9]~41_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[9]~41_combout\);

-- Location: LCFF_X27_Y4_N23
\result[9]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[9]~41_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[9]~en_regout\);

-- Location: LCCOMB_X15_Y9_N28
\Selector188~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector188~0_combout\ = (\LessThan0~126_combout\ & (\Add3~22_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~22_combout\,
	datac => \Add2~22_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector188~0_combout\);

-- Location: LCCOMB_X15_Y9_N16
\Selector188~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector188~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector188~0_combout\) # ((\RX~258_combout\ & RZ(10))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(10),
	datad => \Selector188~0_combout\,
	combout => \Selector188~1_combout\);

-- Location: LCFF_X15_Y9_N17
\RZ[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector188~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(10));

-- Location: LCFF_X15_Y9_N1
\result[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(10),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[10]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N4
\result[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[10]~42_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[10]~42_combout\);

-- Location: LCFF_X18_Y4_N5
\result[10]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[10]~42_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[10]~en_regout\);

-- Location: LCFF_X14_Y8_N11
\result[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(11),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[11]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N18
\result[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[11]~43_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[11]~43_combout\);

-- Location: LCFF_X18_Y4_N19
\result[11]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[11]~43_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[11]~en_regout\);

-- Location: LCCOMB_X15_Y8_N18
\Selector186~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector186~0_combout\ = (\LessThan0~126_combout\ & (\Add3~26_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~26_combout\,
	datac => \Add2~26_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector186~0_combout\);

-- Location: LCCOMB_X15_Y8_N6
\Selector186~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector186~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector186~0_combout\) # ((\RX~258_combout\ & RZ(12))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(12),
	datad => \Selector186~0_combout\,
	combout => \Selector186~1_combout\);

-- Location: LCFF_X15_Y8_N7
\RZ[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector186~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(12));

-- Location: LCCOMB_X15_Y8_N16
\result[12]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[12]~reg0feeder_combout\ = RZ(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(12),
	combout => \result[12]~reg0feeder_combout\);

-- Location: LCFF_X15_Y8_N17
\result[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[12]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[12]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N20
\result[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[12]~44_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[12]~44_combout\);

-- Location: LCFF_X18_Y4_N21
\result[12]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[12]~44_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[12]~en_regout\);

-- Location: LCCOMB_X14_Y9_N22
\Selector185~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector185~0_combout\ = (\LessThan0~126_combout\ & (\Add3~28_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~28_combout\,
	datac => \Add2~28_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector185~0_combout\);

-- Location: LCCOMB_X14_Y9_N16
\Selector185~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector185~1_combout\ = (\RX~258_combout\ & ((RZ(13)) # ((\current_state.iter_state~regout\ & \Selector185~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector185~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(13),
	datad => \Selector185~0_combout\,
	combout => \Selector185~1_combout\);

-- Location: LCFF_X14_Y9_N17
\RZ[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector185~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(13));

-- Location: LCFF_X14_Y9_N21
\result[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(13),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[13]~reg0_regout\);

-- Location: LCCOMB_X27_Y5_N0
\result[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[13]~45_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[13]~45_combout\);

-- Location: LCFF_X27_Y5_N1
\result[13]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[13]~45_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[13]~en_regout\);

-- Location: LCCOMB_X15_Y8_N28
\Selector184~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector184~0_combout\ = (\LessThan0~126_combout\ & (\Add3~30_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~30_combout\,
	datac => \Add2~30_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector184~0_combout\);

-- Location: LCCOMB_X15_Y8_N4
\Selector184~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector184~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector184~0_combout\) # ((\RX~258_combout\ & RZ(14))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(14),
	datad => \Selector184~0_combout\,
	combout => \Selector184~1_combout\);

-- Location: LCFF_X15_Y8_N5
\RZ[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector184~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(14));

-- Location: LCFF_X15_Y8_N23
\result[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(14),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[14]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N14
\result[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[14]~46_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[14]~46_combout\);

-- Location: LCFF_X18_Y4_N15
\result[14]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[14]~46_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[14]~en_regout\);

-- Location: LCFF_X14_Y8_N23
\result[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(15),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[15]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N24
\result[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[15]~47_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[15]~47_combout\);

-- Location: LCFF_X27_Y4_N25
\result[15]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[15]~47_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[15]~en_regout\);

-- Location: LCCOMB_X15_Y9_N12
\Selector182~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector182~0_combout\ = (\LessThan0~126_combout\ & (\Add3~34_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~34_combout\,
	datac => \Add2~34_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector182~0_combout\);

-- Location: LCCOMB_X15_Y9_N20
\Selector182~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector182~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector182~0_combout\) # ((\RX~258_combout\ & RZ(16))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(16),
	datad => \Selector182~0_combout\,
	combout => \Selector182~1_combout\);

-- Location: LCFF_X15_Y9_N21
\RZ[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector182~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(16));

-- Location: LCCOMB_X27_Y5_N6
\result[16]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[16]~reg0feeder_combout\ = RZ(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(16),
	combout => \result[16]~reg0feeder_combout\);

-- Location: LCFF_X27_Y5_N7
\result[16]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[16]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[16]~reg0_regout\);

-- Location: LCCOMB_X27_Y5_N12
\result[16]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[16]~48_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[16]~48_combout\);

-- Location: LCFF_X27_Y5_N13
\result[16]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[16]~48_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[16]~en_regout\);

-- Location: LCFF_X14_Y9_N11
\result[17]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(17),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[17]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N12
\result[17]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[17]~49_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[17]~49_combout\);

-- Location: LCFF_X18_Y4_N13
\result[17]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[17]~49_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[17]~en_regout\);

-- Location: LCCOMB_X12_Y7_N26
\Selector180~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector180~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~38_combout\))) # (!\LessThan0~126_combout\ & (\Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~38_combout\,
	datac => \LessThan0~126_combout\,
	datad => \Add3~38_combout\,
	combout => \Selector180~0_combout\);

-- Location: LCCOMB_X12_Y7_N12
\Selector180~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector180~1_combout\ = (\RX~258_combout\ & ((RZ(18)) # ((\current_state.iter_state~regout\ & \Selector180~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector180~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(18),
	datad => \Selector180~0_combout\,
	combout => \Selector180~1_combout\);

-- Location: LCFF_X12_Y7_N13
\RZ[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector180~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(18));

-- Location: LCFF_X12_Y7_N29
\result[18]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(18),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[18]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N2
\result[18]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[18]~50_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[18]~50_combout\);

-- Location: LCFF_X18_Y4_N3
\result[18]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[18]~50_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[18]~en_regout\);

-- Location: LCCOMB_X15_Y9_N10
\result[19]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[19]~reg0feeder_combout\ = RZ(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(19),
	combout => \result[19]~reg0feeder_combout\);

-- Location: LCFF_X15_Y9_N11
\result[19]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[19]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[19]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N28
\result[19]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[19]~51_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[19]~51_combout\);

-- Location: LCFF_X18_Y4_N29
\result[19]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[19]~51_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[19]~en_regout\);

-- Location: LCFF_X27_Y5_N15
\result[20]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(20),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[20]~reg0_regout\);

-- Location: LCCOMB_X27_Y5_N4
\result[20]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[20]~52_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[20]~52_combout\);

-- Location: LCFF_X27_Y5_N5
\result[20]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[20]~52_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[20]~en_regout\);

-- Location: LCCOMB_X13_Y4_N30
\Selector177~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector177~0_combout\ = (\LessThan0~126_combout\ & (\Add3~44_combout\)) # (!\LessThan0~126_combout\ & ((\Add2~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~44_combout\,
	datac => \LessThan0~126_combout\,
	datad => \Add2~44_combout\,
	combout => \Selector177~0_combout\);

-- Location: LCCOMB_X13_Y4_N4
\Selector177~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector177~1_combout\ = (\current_state.iter_state~regout\ & ((\Selector177~0_combout\) # ((\RX~258_combout\ & RZ(21))))) # (!\current_state.iter_state~regout\ & (\RX~258_combout\ & (RZ(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.iter_state~regout\,
	datab => \RX~258_combout\,
	datac => RZ(21),
	datad => \Selector177~0_combout\,
	combout => \Selector177~1_combout\);

-- Location: LCFF_X13_Y4_N5
\RZ[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector177~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(21));

-- Location: LCFF_X13_Y4_N3
\result[21]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(21),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[21]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N26
\result[21]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[21]~53_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[21]~53_combout\);

-- Location: LCFF_X18_Y4_N27
\result[21]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[21]~53_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[21]~en_regout\);

-- Location: LCCOMB_X15_Y8_N24
\result[22]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[22]~reg0feeder_combout\ = RZ(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(22),
	combout => \result[22]~reg0feeder_combout\);

-- Location: LCFF_X15_Y8_N25
\result[22]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[22]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[22]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N2
\result[22]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[22]~54_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[22]~54_combout\);

-- Location: LCFF_X27_Y4_N3
\result[22]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[22]~54_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[22]~en_regout\);

-- Location: LCCOMB_X27_Y5_N2
\result[23]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[23]~reg0feeder_combout\ = RZ(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(23),
	combout => \result[23]~reg0feeder_combout\);

-- Location: LCFF_X27_Y5_N3
\result[23]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[23]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[23]~reg0_regout\);

-- Location: LCCOMB_X27_Y5_N20
\result[23]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[23]~55_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[23]~55_combout\);

-- Location: LCFF_X27_Y5_N21
\result[23]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[23]~55_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[23]~en_regout\);

-- Location: LCCOMB_X12_Y7_N2
\Selector174~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector174~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~50_combout\))) # (!\LessThan0~126_combout\ & (\Add2~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~50_combout\,
	datac => \LessThan0~126_combout\,
	datad => \Add3~50_combout\,
	combout => \Selector174~0_combout\);

-- Location: LCCOMB_X12_Y7_N22
\Selector174~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector174~1_combout\ = (\RX~258_combout\ & ((RZ(24)) # ((\current_state.iter_state~regout\ & \Selector174~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector174~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(24),
	datad => \Selector174~0_combout\,
	combout => \Selector174~1_combout\);

-- Location: LCFF_X12_Y7_N23
\RZ[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector174~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(24));

-- Location: LCCOMB_X12_Y7_N4
\result[24]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[24]~reg0feeder_combout\ = RZ(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(24),
	combout => \result[24]~reg0feeder_combout\);

-- Location: LCFF_X12_Y7_N5
\result[24]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[24]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[24]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N24
\result[24]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[24]~56_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[24]~56_combout\);

-- Location: LCFF_X18_Y4_N25
\result[24]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[24]~56_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[24]~en_regout\);

-- Location: LCCOMB_X15_Y4_N22
\result[25]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[25]~reg0feeder_combout\ = RZ(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(25),
	combout => \result[25]~reg0feeder_combout\);

-- Location: LCFF_X15_Y4_N23
\result[25]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[25]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[25]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N6
\result[25]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[25]~57_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[25]~57_combout\);

-- Location: LCFF_X18_Y4_N7
\result[25]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[25]~57_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[25]~en_regout\);

-- Location: LCCOMB_X12_Y7_N18
\Selector172~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector172~0_combout\ = (\LessThan0~126_combout\ & ((\Add3~54_combout\))) # (!\LessThan0~126_combout\ & (\Add2~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~54_combout\,
	datac => \LessThan0~126_combout\,
	datad => \Add3~54_combout\,
	combout => \Selector172~0_combout\);

-- Location: LCCOMB_X12_Y7_N8
\Selector172~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector172~1_combout\ = (\RX~258_combout\ & ((RZ(26)) # ((\current_state.iter_state~regout\ & \Selector172~0_combout\)))) # (!\RX~258_combout\ & (\current_state.iter_state~regout\ & ((\Selector172~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~258_combout\,
	datab => \current_state.iter_state~regout\,
	datac => RZ(26),
	datad => \Selector172~0_combout\,
	combout => \Selector172~1_combout\);

-- Location: LCFF_X12_Y7_N9
\RZ[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector172~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(26));

-- Location: LCFF_X15_Y4_N25
\result[26]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(26),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[26]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N0
\result[26]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[26]~58_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[26]~58_combout\);

-- Location: LCFF_X18_Y4_N1
\result[26]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[26]~58_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[26]~en_regout\);

-- Location: LCCOMB_X27_Y5_N26
\result[27]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[27]~reg0feeder_combout\ = RZ(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(27),
	combout => \result[27]~reg0feeder_combout\);

-- Location: LCFF_X27_Y5_N27
\result[27]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[27]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[27]~reg0_regout\);

-- Location: LCCOMB_X27_Y5_N8
\result[27]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[27]~59_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[27]~59_combout\);

-- Location: LCFF_X27_Y5_N9
\result[27]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[27]~59_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[27]~en_regout\);

-- Location: LCCOMB_X14_Y4_N4
\result[28]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[28]~reg0feeder_combout\ = RZ(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RZ(28),
	combout => \result[28]~reg0feeder_combout\);

-- Location: LCFF_X14_Y4_N5
\result[28]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[28]~reg0feeder_combout\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[28]~reg0_regout\);

-- Location: LCCOMB_X18_Y4_N22
\result[28]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[28]~60_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[28]~60_combout\);

-- Location: LCFF_X18_Y4_N23
\result[28]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[28]~60_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[28]~en_regout\);

-- Location: LCFF_X14_Y9_N9
\result[29]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(29),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[29]~reg0_regout\);

-- Location: LCCOMB_X27_Y5_N22
\result[29]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[29]~61_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[29]~61_combout\);

-- Location: LCFF_X27_Y5_N23
\result[29]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[29]~61_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[29]~en_regout\);

-- Location: LCFF_X15_Y4_N15
\result[30]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(30),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[30]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N8
\result[30]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[30]~62_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[30]~62_combout\);

-- Location: LCFF_X27_Y4_N9
\result[30]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[30]~62_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[30]~en_regout\);

-- Location: LCCOMB_X15_Y4_N28
\Selector167~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector167~2_combout\ = (\current_state.iter_state~regout\ & ((\LessThan0~126_combout\ & ((\Add3~64_combout\))) # (!\LessThan0~126_combout\ & (\Add2~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~64_combout\,
	datab => \current_state.iter_state~regout\,
	datac => \Add3~64_combout\,
	datad => \LessThan0~126_combout\,
	combout => \Selector167~2_combout\);

-- Location: LCCOMB_X15_Y4_N4
\Selector167~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector167~3_combout\ = (\Selector167~2_combout\) # ((RZ(31) & ((\current_state.end_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.end_state~regout\,
	datab => \current_state.wait_state~regout\,
	datac => RZ(31),
	datad => \Selector167~2_combout\,
	combout => \Selector167~3_combout\);

-- Location: LCFF_X15_Y4_N5
\RZ[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector167~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RZ(31));

-- Location: LCFF_X15_Y4_N17
\result[31]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => RZ(31),
	sload => VCC,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[31]~reg0_regout\);

-- Location: LCCOMB_X27_Y4_N18
\result[31]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[31]~63_combout\ = !\current_state.init_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.init_state~regout\,
	combout => \result[31]~63_combout\);

-- Location: LCFF_X27_Y4_N19
\result[31]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \result[31]~63_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \result[31]~en_regout\);

-- Location: LCCOMB_X19_Y4_N0
\Selector199~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector199~0_combout\ = (\current_state.end_state~regout\) # ((\done~reg0_regout\ & ((\current_state.iter_state~regout\) # (!\current_state.wait_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.end_state~regout\,
	datab => \current_state.iter_state~regout\,
	datac => \done~reg0_regout\,
	datad => \current_state.wait_state~regout\,
	combout => \Selector199~0_combout\);

-- Location: LCFF_X19_Y4_N1
\done~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector199~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done~reg0_regout\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[0]~reg0_regout\,
	oe => \result[0]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(0));

-- Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[1]~reg0_regout\,
	oe => \result[1]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(1));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[2]~reg0_regout\,
	oe => \result[2]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(2));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[3]~reg0_regout\,
	oe => \result[3]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(3));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[4]~reg0_regout\,
	oe => \result[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(4));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[5]~reg0_regout\,
	oe => \result[5]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(5));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[6]~reg0_regout\,
	oe => \result[6]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(6));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[7]~reg0_regout\,
	oe => \result[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[8]~reg0_regout\,
	oe => \result[8]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(8));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[9]~reg0_regout\,
	oe => \result[9]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(9));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[10]~reg0_regout\,
	oe => \result[10]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(10));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[11]~reg0_regout\,
	oe => \result[11]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(11));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[12]~reg0_regout\,
	oe => \result[12]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(12));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[13]~reg0_regout\,
	oe => \result[13]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(13));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[14]~reg0_regout\,
	oe => \result[14]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(14));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[15]~reg0_regout\,
	oe => \result[15]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(15));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[16]~reg0_regout\,
	oe => \result[16]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(16));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[17]~reg0_regout\,
	oe => \result[17]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(17));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[18]~reg0_regout\,
	oe => \result[18]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(18));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[19]~reg0_regout\,
	oe => \result[19]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(19));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[20]~reg0_regout\,
	oe => \result[20]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(20));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[21]~reg0_regout\,
	oe => \result[21]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(21));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[22]~reg0_regout\,
	oe => \result[22]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(22));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[23]~reg0_regout\,
	oe => \result[23]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(23));

-- Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[24]~reg0_regout\,
	oe => \result[24]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(24));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[25]~reg0_regout\,
	oe => \result[25]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(25));

-- Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[26]~reg0_regout\,
	oe => \result[26]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(26));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[27]~reg0_regout\,
	oe => \result[27]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(27));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[28]~reg0_regout\,
	oe => \result[28]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(28));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[29]~reg0_regout\,
	oe => \result[29]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(29));

-- Location: PIN_L11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[30]~reg0_regout\,
	oe => \result[30]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(30));

-- Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \result[31]~reg0_regout\,
	oe => \result[31]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_result(31));

-- Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\done~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \done~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_done);
END structure;


