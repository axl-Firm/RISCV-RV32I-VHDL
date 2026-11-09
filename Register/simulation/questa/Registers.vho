-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "11/09/2026 18:43:18"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Processor IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	pgr_valid : IN std_logic;
	start_exe : IN std_logic;
	next_PC : OUT std_logic_vector(31 DOWNTO 0);
	out_PC : OUT std_logic_vector(31 DOWNTO 0);
	instruction_in : IN std_logic_vector(31 DOWNTO 0);
	instruction_out : OUT std_logic_vector(31 DOWNTO 0);
	end_instr : OUT std_logic;
	prog_addr : IN std_logic_vector(3 DOWNTO 0)
	);
END Processor;

-- Design Ports Information
-- next_PC[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[7]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[8]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[10]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[11]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[12]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[13]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[15]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[16]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[17]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[18]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[19]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[20]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[21]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[22]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[23]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[24]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[25]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[26]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[27]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[28]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[30]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[31]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[6]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[8]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[9]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[10]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[11]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[13]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[14]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[15]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[16]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[17]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[18]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[19]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[20]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[21]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[22]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[23]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[24]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[25]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[26]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[27]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[28]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[29]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[30]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[31]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[0]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[2]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[5]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[8]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[9]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[12]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[13]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[16]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[17]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[18]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[19]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[20]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[22]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[23]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[24]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[25]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[26]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[27]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[28]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[29]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[30]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[31]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_instr	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prog_addr[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prog_addr[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prog_addr[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prog_addr[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_exe	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pgr_valid	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[6]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[8]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[10]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[11]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[12]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[13]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[14]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[16]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[17]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[18]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[19]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[20]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[21]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[22]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[23]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[24]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[25]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[26]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[27]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[28]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[29]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[30]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[31]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pgr_valid : std_logic;
SIGNAL ww_start_exe : std_logic;
SIGNAL ww_next_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_out_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_end_instr : std_logic;
SIGNAL ww_prog_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \next_PC[0]~output_o\ : std_logic;
SIGNAL \next_PC[1]~output_o\ : std_logic;
SIGNAL \next_PC[2]~output_o\ : std_logic;
SIGNAL \next_PC[3]~output_o\ : std_logic;
SIGNAL \next_PC[4]~output_o\ : std_logic;
SIGNAL \next_PC[5]~output_o\ : std_logic;
SIGNAL \next_PC[6]~output_o\ : std_logic;
SIGNAL \next_PC[7]~output_o\ : std_logic;
SIGNAL \next_PC[8]~output_o\ : std_logic;
SIGNAL \next_PC[9]~output_o\ : std_logic;
SIGNAL \next_PC[10]~output_o\ : std_logic;
SIGNAL \next_PC[11]~output_o\ : std_logic;
SIGNAL \next_PC[12]~output_o\ : std_logic;
SIGNAL \next_PC[13]~output_o\ : std_logic;
SIGNAL \next_PC[14]~output_o\ : std_logic;
SIGNAL \next_PC[15]~output_o\ : std_logic;
SIGNAL \next_PC[16]~output_o\ : std_logic;
SIGNAL \next_PC[17]~output_o\ : std_logic;
SIGNAL \next_PC[18]~output_o\ : std_logic;
SIGNAL \next_PC[19]~output_o\ : std_logic;
SIGNAL \next_PC[20]~output_o\ : std_logic;
SIGNAL \next_PC[21]~output_o\ : std_logic;
SIGNAL \next_PC[22]~output_o\ : std_logic;
SIGNAL \next_PC[23]~output_o\ : std_logic;
SIGNAL \next_PC[24]~output_o\ : std_logic;
SIGNAL \next_PC[25]~output_o\ : std_logic;
SIGNAL \next_PC[26]~output_o\ : std_logic;
SIGNAL \next_PC[27]~output_o\ : std_logic;
SIGNAL \next_PC[28]~output_o\ : std_logic;
SIGNAL \next_PC[29]~output_o\ : std_logic;
SIGNAL \next_PC[30]~output_o\ : std_logic;
SIGNAL \next_PC[31]~output_o\ : std_logic;
SIGNAL \out_PC[0]~output_o\ : std_logic;
SIGNAL \out_PC[1]~output_o\ : std_logic;
SIGNAL \out_PC[2]~output_o\ : std_logic;
SIGNAL \out_PC[3]~output_o\ : std_logic;
SIGNAL \out_PC[4]~output_o\ : std_logic;
SIGNAL \out_PC[5]~output_o\ : std_logic;
SIGNAL \out_PC[6]~output_o\ : std_logic;
SIGNAL \out_PC[7]~output_o\ : std_logic;
SIGNAL \out_PC[8]~output_o\ : std_logic;
SIGNAL \out_PC[9]~output_o\ : std_logic;
SIGNAL \out_PC[10]~output_o\ : std_logic;
SIGNAL \out_PC[11]~output_o\ : std_logic;
SIGNAL \out_PC[12]~output_o\ : std_logic;
SIGNAL \out_PC[13]~output_o\ : std_logic;
SIGNAL \out_PC[14]~output_o\ : std_logic;
SIGNAL \out_PC[15]~output_o\ : std_logic;
SIGNAL \out_PC[16]~output_o\ : std_logic;
SIGNAL \out_PC[17]~output_o\ : std_logic;
SIGNAL \out_PC[18]~output_o\ : std_logic;
SIGNAL \out_PC[19]~output_o\ : std_logic;
SIGNAL \out_PC[20]~output_o\ : std_logic;
SIGNAL \out_PC[21]~output_o\ : std_logic;
SIGNAL \out_PC[22]~output_o\ : std_logic;
SIGNAL \out_PC[23]~output_o\ : std_logic;
SIGNAL \out_PC[24]~output_o\ : std_logic;
SIGNAL \out_PC[25]~output_o\ : std_logic;
SIGNAL \out_PC[26]~output_o\ : std_logic;
SIGNAL \out_PC[27]~output_o\ : std_logic;
SIGNAL \out_PC[28]~output_o\ : std_logic;
SIGNAL \out_PC[29]~output_o\ : std_logic;
SIGNAL \out_PC[30]~output_o\ : std_logic;
SIGNAL \out_PC[31]~output_o\ : std_logic;
SIGNAL \instruction_out[0]~output_o\ : std_logic;
SIGNAL \instruction_out[1]~output_o\ : std_logic;
SIGNAL \instruction_out[2]~output_o\ : std_logic;
SIGNAL \instruction_out[3]~output_o\ : std_logic;
SIGNAL \instruction_out[4]~output_o\ : std_logic;
SIGNAL \instruction_out[5]~output_o\ : std_logic;
SIGNAL \instruction_out[6]~output_o\ : std_logic;
SIGNAL \instruction_out[7]~output_o\ : std_logic;
SIGNAL \instruction_out[8]~output_o\ : std_logic;
SIGNAL \instruction_out[9]~output_o\ : std_logic;
SIGNAL \instruction_out[10]~output_o\ : std_logic;
SIGNAL \instruction_out[11]~output_o\ : std_logic;
SIGNAL \instruction_out[12]~output_o\ : std_logic;
SIGNAL \instruction_out[13]~output_o\ : std_logic;
SIGNAL \instruction_out[14]~output_o\ : std_logic;
SIGNAL \instruction_out[15]~output_o\ : std_logic;
SIGNAL \instruction_out[16]~output_o\ : std_logic;
SIGNAL \instruction_out[17]~output_o\ : std_logic;
SIGNAL \instruction_out[18]~output_o\ : std_logic;
SIGNAL \instruction_out[19]~output_o\ : std_logic;
SIGNAL \instruction_out[20]~output_o\ : std_logic;
SIGNAL \instruction_out[21]~output_o\ : std_logic;
SIGNAL \instruction_out[22]~output_o\ : std_logic;
SIGNAL \instruction_out[23]~output_o\ : std_logic;
SIGNAL \instruction_out[24]~output_o\ : std_logic;
SIGNAL \instruction_out[25]~output_o\ : std_logic;
SIGNAL \instruction_out[26]~output_o\ : std_logic;
SIGNAL \instruction_out[27]~output_o\ : std_logic;
SIGNAL \instruction_out[28]~output_o\ : std_logic;
SIGNAL \instruction_out[29]~output_o\ : std_logic;
SIGNAL \instruction_out[30]~output_o\ : std_logic;
SIGNAL \instruction_out[31]~output_o\ : std_logic;
SIGNAL \end_instr~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \start_exe~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~870_combout\ : std_logic;
SIGNAL \sequenceur|etat.CHARGEMENT_PGR~feeder_combout\ : std_logic;
SIGNAL \sequenceur|etat.CHARGEMENT_PGR~q\ : std_logic;
SIGNAL \sequenceur|Selector0~0_combout\ : std_logic;
SIGNAL \sequenceur|etat.CHARG_IR~q\ : std_logic;
SIGNAL \sequenceur|etat.LECTURE_REG~feeder_combout\ : std_logic;
SIGNAL \sequenceur|etat.LECTURE_REG~q\ : std_logic;
SIGNAL \sequenceur|etat.ECRITURE_PC~q\ : std_logic;
SIGNAL \next_PC_in[2]~0_combout\ : std_logic;
SIGNAL \next_PC_in[2]~1\ : std_logic;
SIGNAL \next_PC_in[3]~2_combout\ : std_logic;
SIGNAL \next_PC_in[3]~3\ : std_logic;
SIGNAL \next_PC_in[4]~4_combout\ : std_logic;
SIGNAL \next_PC_in[4]~5\ : std_logic;
SIGNAL \next_PC_in[5]~6_combout\ : std_logic;
SIGNAL \next_PC_in[5]~7\ : std_logic;
SIGNAL \next_PC_in[6]~8_combout\ : std_logic;
SIGNAL \next_PC_in[6]~9\ : std_logic;
SIGNAL \next_PC_in[7]~10_combout\ : std_logic;
SIGNAL \next_PC_in[7]~11\ : std_logic;
SIGNAL \next_PC_in[8]~12_combout\ : std_logic;
SIGNAL \next_PC_in[8]~13\ : std_logic;
SIGNAL \next_PC_in[9]~14_combout\ : std_logic;
SIGNAL \next_PC_in[9]~15\ : std_logic;
SIGNAL \next_PC_in[10]~16_combout\ : std_logic;
SIGNAL \next_PC_in[10]~17\ : std_logic;
SIGNAL \next_PC_in[11]~18_combout\ : std_logic;
SIGNAL \next_PC_in[11]~19\ : std_logic;
SIGNAL \next_PC_in[12]~20_combout\ : std_logic;
SIGNAL \next_PC_in[12]~21\ : std_logic;
SIGNAL \next_PC_in[13]~22_combout\ : std_logic;
SIGNAL \next_PC_in[13]~23\ : std_logic;
SIGNAL \next_PC_in[14]~24_combout\ : std_logic;
SIGNAL \next_PC_in[14]~25\ : std_logic;
SIGNAL \next_PC_in[15]~26_combout\ : std_logic;
SIGNAL \next_PC_in[15]~27\ : std_logic;
SIGNAL \next_PC_in[16]~28_combout\ : std_logic;
SIGNAL \Program_counter|PC_1|memo[17]~feeder_combout\ : std_logic;
SIGNAL \next_PC_in[16]~29\ : std_logic;
SIGNAL \next_PC_in[17]~30_combout\ : std_logic;
SIGNAL \next_PC_in[17]~31\ : std_logic;
SIGNAL \next_PC_in[18]~32_combout\ : std_logic;
SIGNAL \next_PC_in[18]~33\ : std_logic;
SIGNAL \next_PC_in[19]~34_combout\ : std_logic;
SIGNAL \next_PC_in[19]~35\ : std_logic;
SIGNAL \next_PC_in[20]~36_combout\ : std_logic;
SIGNAL \next_PC_in[20]~37\ : std_logic;
SIGNAL \next_PC_in[21]~38_combout\ : std_logic;
SIGNAL \next_PC_in[21]~39\ : std_logic;
SIGNAL \next_PC_in[22]~40_combout\ : std_logic;
SIGNAL \next_PC_in[22]~41\ : std_logic;
SIGNAL \next_PC_in[23]~42_combout\ : std_logic;
SIGNAL \next_PC_in[23]~43\ : std_logic;
SIGNAL \next_PC_in[24]~44_combout\ : std_logic;
SIGNAL \next_PC_in[24]~45\ : std_logic;
SIGNAL \next_PC_in[25]~46_combout\ : std_logic;
SIGNAL \next_PC_in[25]~47\ : std_logic;
SIGNAL \next_PC_in[26]~48_combout\ : std_logic;
SIGNAL \next_PC_in[26]~49\ : std_logic;
SIGNAL \next_PC_in[27]~50_combout\ : std_logic;
SIGNAL \next_PC_in[27]~51\ : std_logic;
SIGNAL \next_PC_in[28]~52_combout\ : std_logic;
SIGNAL \next_PC_in[28]~53\ : std_logic;
SIGNAL \next_PC_in[29]~54_combout\ : std_logic;
SIGNAL \next_PC_in[29]~55\ : std_logic;
SIGNAL \next_PC_in[30]~56_combout\ : std_logic;
SIGNAL \next_PC_in[30]~57\ : std_logic;
SIGNAL \next_PC_in[31]~58_combout\ : std_logic;
SIGNAL \prog_addr[0]~input_o\ : std_logic;
SIGNAL \addr_mem[0]~1_combout\ : std_logic;
SIGNAL \instruction_in[0]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~453feeder_combout\ : std_logic;
SIGNAL \pgr_valid~input_o\ : std_logic;
SIGNAL \prog_addr[1]~input_o\ : std_logic;
SIGNAL \addr_mem[1]~0_combout\ : std_logic;
SIGNAL \prog_addr[2]~input_o\ : std_logic;
SIGNAL \addr_mem[2]~3_combout\ : std_logic;
SIGNAL \prog_addr[3]~input_o\ : std_logic;
SIGNAL \addr_mem[3]~2_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~893_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~894_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~453_q\ : std_logic;
SIGNAL \Instruction_memory|memo~899_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~900_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~517_q\ : std_logic;
SIGNAL \Instruction_memory|memo~485feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~895_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~896_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~485_q\ : std_logic;
SIGNAL \Instruction_memory|memo~897_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~898_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~421_q\ : std_logic;
SIGNAL \Instruction_memory|memo~556_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~557_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~197feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~878_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~879_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~197_q\ : std_logic;
SIGNAL \Instruction_memory|memo~884_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~885_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~261_q\ : std_logic;
SIGNAL \Instruction_memory|memo~229feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~880_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~881_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~229_q\ : std_logic;
SIGNAL \Instruction_memory|memo~882_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~883_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~165_q\ : std_logic;
SIGNAL \Instruction_memory|memo~551_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~552_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~101feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~886_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~887_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~101_q\ : std_logic;
SIGNAL \Instruction_memory|memo~888_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~892_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~133_q\ : std_logic;
SIGNAL \Instruction_memory|memo~889_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~69_q\ : std_logic;
SIGNAL \Instruction_memory|memo~890_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~891_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~37_q\ : std_logic;
SIGNAL \Instruction_memory|memo~553_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~554_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~555_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~876_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~877_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~389_q\ : std_logic;
SIGNAL \Instruction_memory|memo~869_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~871_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~357_q\ : std_logic;
SIGNAL \Instruction_memory|memo~325feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~872_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~873_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~325_q\ : std_logic;
SIGNAL \Instruction_memory|memo~874_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~875_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~293_q\ : std_logic;
SIGNAL \Instruction_memory|memo~549_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~550_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~558_combout\ : std_logic;
SIGNAL \instruction_in[1]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~230_q\ : std_logic;
SIGNAL \Instruction_memory|memo~486feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~486_q\ : std_logic;
SIGNAL \Instruction_memory|memo~102_q\ : std_logic;
SIGNAL \Instruction_memory|memo~358feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~358_q\ : std_logic;
SIGNAL \Instruction_memory|memo~559_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~560_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~390feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~390_q\ : std_logic;
SIGNAL \Instruction_memory|memo~518_q\ : std_logic;
SIGNAL \Instruction_memory|memo~262_q\ : std_logic;
SIGNAL \Instruction_memory|memo~134_q\ : std_logic;
SIGNAL \Instruction_memory|memo~566_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~567_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~166feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~166_q\ : std_logic;
SIGNAL \Instruction_memory|memo~422_q\ : std_logic;
SIGNAL \Instruction_memory|memo~38_q\ : std_logic;
SIGNAL \Instruction_memory|memo~294feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~294_q\ : std_logic;
SIGNAL \Instruction_memory|memo~563_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~564_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~326feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~326_q\ : std_logic;
SIGNAL \Instruction_memory|memo~454_q\ : std_logic;
SIGNAL \Instruction_memory|memo~198_q\ : std_logic;
SIGNAL \Instruction_memory|memo~70_q\ : std_logic;
SIGNAL \Instruction_memory|memo~561_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~562_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~565_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~568_combout\ : std_logic;
SIGNAL \instruction_in[2]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~263_q\ : std_logic;
SIGNAL \Instruction_memory|memo~231_q\ : std_logic;
SIGNAL \Instruction_memory|memo~199_q\ : std_logic;
SIGNAL \Instruction_memory|memo~167_q\ : std_logic;
SIGNAL \Instruction_memory|memo~569_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~570_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~487_q\ : std_logic;
SIGNAL \Instruction_memory|memo~519_q\ : std_logic;
SIGNAL \Instruction_memory|memo~455feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~455_q\ : std_logic;
SIGNAL \Instruction_memory|memo~423_q\ : std_logic;
SIGNAL \Instruction_memory|memo~576_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~577_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~71feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~71_q\ : std_logic;
SIGNAL \Instruction_memory|memo~135_q\ : std_logic;
SIGNAL \Instruction_memory|memo~103_q\ : std_logic;
SIGNAL \Instruction_memory|memo~39_q\ : std_logic;
SIGNAL \Instruction_memory|memo~573_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~574_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~327feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~327_q\ : std_logic;
SIGNAL \Instruction_memory|memo~391_q\ : std_logic;
SIGNAL \Instruction_memory|memo~359_q\ : std_logic;
SIGNAL \Instruction_memory|memo~295_q\ : std_logic;
SIGNAL \Instruction_memory|memo~571_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~572_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~575_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~578_combout\ : std_logic;
SIGNAL \instruction_in[3]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~328feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~328_q\ : std_logic;
SIGNAL \Instruction_memory|memo~72_q\ : std_logic;
SIGNAL \Instruction_memory|memo~579_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~456_q\ : std_logic;
SIGNAL \Instruction_memory|memo~200_q\ : std_logic;
SIGNAL \Instruction_memory|memo~580_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~264feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~264_q\ : std_logic;
SIGNAL \Instruction_memory|memo~520_q\ : std_logic;
SIGNAL \Instruction_memory|memo~392feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~392_q\ : std_logic;
SIGNAL \Instruction_memory|memo~136_q\ : std_logic;
SIGNAL \Instruction_memory|memo~586_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~587_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~296feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~296_q\ : std_logic;
SIGNAL \Instruction_memory|memo~424_q\ : std_logic;
SIGNAL \Instruction_memory|memo~168_q\ : std_logic;
SIGNAL \Instruction_memory|memo~40_q\ : std_logic;
SIGNAL \Instruction_memory|memo~583_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~584_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~360feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~360_q\ : std_logic;
SIGNAL \Instruction_memory|memo~488_q\ : std_logic;
SIGNAL \Instruction_memory|memo~232_q\ : std_logic;
SIGNAL \Instruction_memory|memo~104_q\ : std_logic;
SIGNAL \Instruction_memory|memo~581_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~582_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~585_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~588_combout\ : std_logic;
SIGNAL \instruction_in[4]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~457feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~457_q\ : std_logic;
SIGNAL \Instruction_memory|memo~521_q\ : std_logic;
SIGNAL \Instruction_memory|memo~489_q\ : std_logic;
SIGNAL \Instruction_memory|memo~425_q\ : std_logic;
SIGNAL \Instruction_memory|memo~596_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~597_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~201feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~201_q\ : std_logic;
SIGNAL \Instruction_memory|memo~233feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~233_q\ : std_logic;
SIGNAL \Instruction_memory|memo~169_q\ : std_logic;
SIGNAL \Instruction_memory|memo~591_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~265_q\ : std_logic;
SIGNAL \Instruction_memory|memo~592_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~105feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~105_q\ : std_logic;
SIGNAL \Instruction_memory|memo~137_q\ : std_logic;
SIGNAL \Instruction_memory|memo~73_q\ : std_logic;
SIGNAL \Instruction_memory|memo~41_q\ : std_logic;
SIGNAL \Instruction_memory|memo~593_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~594_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~595_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~393_q\ : std_logic;
SIGNAL \Instruction_memory|memo~361_q\ : std_logic;
SIGNAL \Instruction_memory|memo~329feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~329_q\ : std_logic;
SIGNAL \Instruction_memory|memo~297_q\ : std_logic;
SIGNAL \Instruction_memory|memo~589_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~590_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~598_combout\ : std_logic;
SIGNAL \instruction_in[5]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~234feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~234_q\ : std_logic;
SIGNAL \Instruction_memory|memo~490_q\ : std_logic;
SIGNAL \Instruction_memory|memo~362_q\ : std_logic;
SIGNAL \Instruction_memory|memo~106_q\ : std_logic;
SIGNAL \Instruction_memory|memo~599_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~600_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~330feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~330_q\ : std_logic;
SIGNAL \Instruction_memory|memo~458_q\ : std_logic;
SIGNAL \Instruction_memory|memo~202feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~202_q\ : std_logic;
SIGNAL \Instruction_memory|memo~74_q\ : std_logic;
SIGNAL \Instruction_memory|memo~601_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~602_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~170feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~170_q\ : std_logic;
SIGNAL \Instruction_memory|memo~426_q\ : std_logic;
SIGNAL \Instruction_memory|memo~42_q\ : std_logic;
SIGNAL \Instruction_memory|memo~298feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~298_q\ : std_logic;
SIGNAL \Instruction_memory|memo~603_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~604_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~605_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~266feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~266_q\ : std_logic;
SIGNAL \Instruction_memory|memo~138_q\ : std_logic;
SIGNAL \Instruction_memory|memo~606_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~394feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~394_q\ : std_logic;
SIGNAL \Instruction_memory|memo~522_q\ : std_logic;
SIGNAL \Instruction_memory|memo~607_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~608_combout\ : std_logic;
SIGNAL \instruction_in[6]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~267_q\ : std_logic;
SIGNAL \Instruction_memory|memo~235_q\ : std_logic;
SIGNAL \Instruction_memory|memo~203_q\ : std_logic;
SIGNAL \Instruction_memory|memo~171_q\ : std_logic;
SIGNAL \Instruction_memory|memo~609_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~610_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~75_q\ : std_logic;
SIGNAL \Instruction_memory|memo~139_q\ : std_logic;
SIGNAL \Instruction_memory|memo~107_q\ : std_logic;
SIGNAL \Instruction_memory|memo~43_q\ : std_logic;
SIGNAL \Instruction_memory|memo~613_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~614_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~331_q\ : std_logic;
SIGNAL \Instruction_memory|memo~395_q\ : std_logic;
SIGNAL \Instruction_memory|memo~363_q\ : std_logic;
SIGNAL \Instruction_memory|memo~299_q\ : std_logic;
SIGNAL \Instruction_memory|memo~611_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~612_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~615_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~491feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~491_q\ : std_logic;
SIGNAL \Instruction_memory|memo~523_q\ : std_logic;
SIGNAL \Instruction_memory|memo~459_q\ : std_logic;
SIGNAL \Instruction_memory|memo~427_q\ : std_logic;
SIGNAL \Instruction_memory|memo~616_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~617_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~618_combout\ : std_logic;
SIGNAL \instruction_in[7]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~460_q\ : std_logic;
SIGNAL \Instruction_memory|memo~204_q\ : std_logic;
SIGNAL \Instruction_memory|memo~332_q\ : std_logic;
SIGNAL \Instruction_memory|memo~76_q\ : std_logic;
SIGNAL \Instruction_memory|memo~619_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~620_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~268_q\ : std_logic;
SIGNAL \Instruction_memory|memo~524_q\ : std_logic;
SIGNAL \Instruction_memory|memo~396_q\ : std_logic;
SIGNAL \Instruction_memory|memo~140_q\ : std_logic;
SIGNAL \Instruction_memory|memo~626_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~627_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~300feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~300_q\ : std_logic;
SIGNAL \Instruction_memory|memo~428_q\ : std_logic;
SIGNAL \Instruction_memory|memo~172feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~172_q\ : std_logic;
SIGNAL \Instruction_memory|memo~44_q\ : std_logic;
SIGNAL \Instruction_memory|memo~623_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~624_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~364_q\ : std_logic;
SIGNAL \Instruction_memory|memo~492_q\ : std_logic;
SIGNAL \Instruction_memory|memo~236feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~236_q\ : std_logic;
SIGNAL \Instruction_memory|memo~108_q\ : std_logic;
SIGNAL \Instruction_memory|memo~621_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~622_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~625_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~628_combout\ : std_logic;
SIGNAL \instruction_in[8]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~397_q\ : std_logic;
SIGNAL \Instruction_memory|memo~365_q\ : std_logic;
SIGNAL \Instruction_memory|memo~333feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~333_q\ : std_logic;
SIGNAL \Instruction_memory|memo~301_q\ : std_logic;
SIGNAL \Instruction_memory|memo~629_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~630_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~461feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~461_q\ : std_logic;
SIGNAL \Instruction_memory|memo~525_q\ : std_logic;
SIGNAL \Instruction_memory|memo~493feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~493_q\ : std_logic;
SIGNAL \Instruction_memory|memo~429_q\ : std_logic;
SIGNAL \Instruction_memory|memo~636_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~637_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~109feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~109_q\ : std_logic;
SIGNAL \Instruction_memory|memo~141_q\ : std_logic;
SIGNAL \Instruction_memory|memo~77feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~77_q\ : std_logic;
SIGNAL \Instruction_memory|memo~45_q\ : std_logic;
SIGNAL \Instruction_memory|memo~633_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~634_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~205_q\ : std_logic;
SIGNAL \Instruction_memory|memo~269_q\ : std_logic;
SIGNAL \Instruction_memory|memo~237feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~237_q\ : std_logic;
SIGNAL \Instruction_memory|memo~173_q\ : std_logic;
SIGNAL \Instruction_memory|memo~631_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~632_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~635_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~638_combout\ : std_logic;
SIGNAL \instruction_in[9]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~398feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~398_q\ : std_logic;
SIGNAL \Instruction_memory|memo~526_q\ : std_logic;
SIGNAL \Instruction_memory|memo~270feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~270_q\ : std_logic;
SIGNAL \Instruction_memory|memo~142_q\ : std_logic;
SIGNAL \Instruction_memory|memo~646_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~647_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~494_q\ : std_logic;
SIGNAL \Instruction_memory|memo~238_q\ : std_logic;
SIGNAL \Instruction_memory|memo~366_q\ : std_logic;
SIGNAL \Instruction_memory|memo~110_q\ : std_logic;
SIGNAL \Instruction_memory|memo~639_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~640_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~174feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~174_q\ : std_logic;
SIGNAL \Instruction_memory|memo~430_q\ : std_logic;
SIGNAL \Instruction_memory|memo~302feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~302_q\ : std_logic;
SIGNAL \Instruction_memory|memo~46_q\ : std_logic;
SIGNAL \Instruction_memory|memo~643_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~644_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~334_q\ : std_logic;
SIGNAL \Instruction_memory|memo~462_q\ : std_logic;
SIGNAL \Instruction_memory|memo~206_q\ : std_logic;
SIGNAL \Instruction_memory|memo~78_q\ : std_logic;
SIGNAL \Instruction_memory|memo~641_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~642_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~645_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~648_combout\ : std_logic;
SIGNAL \instruction_in[10]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~271feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~271_q\ : std_logic;
SIGNAL \Instruction_memory|memo~239_q\ : std_logic;
SIGNAL \Instruction_memory|memo~207feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~207_q\ : std_logic;
SIGNAL \Instruction_memory|memo~175_q\ : std_logic;
SIGNAL \Instruction_memory|memo~649_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~650_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~495feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~495_q\ : std_logic;
SIGNAL \Instruction_memory|memo~527_q\ : std_logic;
SIGNAL \Instruction_memory|memo~463_q\ : std_logic;
SIGNAL \Instruction_memory|memo~431_q\ : std_logic;
SIGNAL \Instruction_memory|memo~656_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~657_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~111feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~111_q\ : std_logic;
SIGNAL \Instruction_memory|memo~47_q\ : std_logic;
SIGNAL \Instruction_memory|memo~653_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~143_q\ : std_logic;
SIGNAL \Instruction_memory|memo~79feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~79_q\ : std_logic;
SIGNAL \Instruction_memory|memo~654_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~335_q\ : std_logic;
SIGNAL \Instruction_memory|memo~399_q\ : std_logic;
SIGNAL \Instruction_memory|memo~367_q\ : std_logic;
SIGNAL \Instruction_memory|memo~303_q\ : std_logic;
SIGNAL \Instruction_memory|memo~651_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~652_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~655_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~658_combout\ : std_logic;
SIGNAL \instruction_in[11]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~272_q\ : std_logic;
SIGNAL \Instruction_memory|memo~528_q\ : std_logic;
SIGNAL \Instruction_memory|memo~400feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~400_q\ : std_logic;
SIGNAL \Instruction_memory|memo~144_q\ : std_logic;
SIGNAL \Instruction_memory|memo~666_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~667_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~464_q\ : std_logic;
SIGNAL \Instruction_memory|memo~208_q\ : std_logic;
SIGNAL \Instruction_memory|memo~336_q\ : std_logic;
SIGNAL \Instruction_memory|memo~80_q\ : std_logic;
SIGNAL \Instruction_memory|memo~659_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~660_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~304feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~304_q\ : std_logic;
SIGNAL \Instruction_memory|memo~432_q\ : std_logic;
SIGNAL \Instruction_memory|memo~176feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~176_q\ : std_logic;
SIGNAL \Instruction_memory|memo~48_q\ : std_logic;
SIGNAL \Instruction_memory|memo~663_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~664_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~368_q\ : std_logic;
SIGNAL \Instruction_memory|memo~496_q\ : std_logic;
SIGNAL \Instruction_memory|memo~240feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~240_q\ : std_logic;
SIGNAL \Instruction_memory|memo~112_q\ : std_logic;
SIGNAL \Instruction_memory|memo~661_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~662_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~665_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~668_combout\ : std_logic;
SIGNAL \instruction_in[12]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~465_q\ : std_logic;
SIGNAL \Instruction_memory|memo~529_q\ : std_logic;
SIGNAL \Instruction_memory|memo~433_q\ : std_logic;
SIGNAL \Instruction_memory|memo~497feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~497_q\ : std_logic;
SIGNAL \Instruction_memory|memo~676_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~677_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~401_q\ : std_logic;
SIGNAL \Instruction_memory|memo~369_q\ : std_logic;
SIGNAL \Instruction_memory|memo~337_q\ : std_logic;
SIGNAL \Instruction_memory|memo~305_q\ : std_logic;
SIGNAL \Instruction_memory|memo~669_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~670_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~209feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~209_q\ : std_logic;
SIGNAL \Instruction_memory|memo~273_q\ : std_logic;
SIGNAL \Instruction_memory|memo~241_q\ : std_logic;
SIGNAL \Instruction_memory|memo~177_q\ : std_logic;
SIGNAL \Instruction_memory|memo~671_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~672_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~113feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~113_q\ : std_logic;
SIGNAL \Instruction_memory|memo~145_q\ : std_logic;
SIGNAL \Instruction_memory|memo~81_q\ : std_logic;
SIGNAL \Instruction_memory|memo~49_q\ : std_logic;
SIGNAL \Instruction_memory|memo~673_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~674_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~675_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~678_combout\ : std_logic;
SIGNAL \instruction_in[13]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~498feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~498_q\ : std_logic;
SIGNAL \Instruction_memory|memo~242_q\ : std_logic;
SIGNAL \Instruction_memory|memo~370_q\ : std_logic;
SIGNAL \Instruction_memory|memo~114_q\ : std_logic;
SIGNAL \Instruction_memory|memo~679_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~680_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~402_q\ : std_logic;
SIGNAL \Instruction_memory|memo~530_q\ : std_logic;
SIGNAL \Instruction_memory|memo~274_q\ : std_logic;
SIGNAL \Instruction_memory|memo~146_q\ : std_logic;
SIGNAL \Instruction_memory|memo~686_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~687_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~210feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~210_q\ : std_logic;
SIGNAL \Instruction_memory|memo~82_q\ : std_logic;
SIGNAL \Instruction_memory|memo~681_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~338_q\ : std_logic;
SIGNAL \Instruction_memory|memo~466_q\ : std_logic;
SIGNAL \Instruction_memory|memo~682_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~178_q\ : std_logic;
SIGNAL \Instruction_memory|memo~434_q\ : std_logic;
SIGNAL \Instruction_memory|memo~306_q\ : std_logic;
SIGNAL \Instruction_memory|memo~50_q\ : std_logic;
SIGNAL \Instruction_memory|memo~683_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~684_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~685_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~688_combout\ : std_logic;
SIGNAL \instruction_in[14]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~499_q\ : std_logic;
SIGNAL \Instruction_memory|memo~531_q\ : std_logic;
SIGNAL \Instruction_memory|memo~467feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~467_q\ : std_logic;
SIGNAL \Instruction_memory|memo~435_q\ : std_logic;
SIGNAL \Instruction_memory|memo~696_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~697_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~83feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~83_q\ : std_logic;
SIGNAL \Instruction_memory|memo~147_q\ : std_logic;
SIGNAL \Instruction_memory|memo~115feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~115_q\ : std_logic;
SIGNAL \Instruction_memory|memo~51_q\ : std_logic;
SIGNAL \Instruction_memory|memo~693_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~694_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~339_q\ : std_logic;
SIGNAL \Instruction_memory|memo~403_q\ : std_logic;
SIGNAL \Instruction_memory|memo~371_q\ : std_logic;
SIGNAL \Instruction_memory|memo~307_q\ : std_logic;
SIGNAL \Instruction_memory|memo~691_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~692_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~695_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~275_q\ : std_logic;
SIGNAL \Instruction_memory|memo~243_q\ : std_logic;
SIGNAL \Instruction_memory|memo~211_q\ : std_logic;
SIGNAL \Instruction_memory|memo~179_q\ : std_logic;
SIGNAL \Instruction_memory|memo~689_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~690_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~698_combout\ : std_logic;
SIGNAL \instruction_in[15]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~276feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~276_q\ : std_logic;
SIGNAL \Instruction_memory|memo~532_q\ : std_logic;
SIGNAL \Instruction_memory|memo~404_q\ : std_logic;
SIGNAL \Instruction_memory|memo~148_q\ : std_logic;
SIGNAL \Instruction_memory|memo~706_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~707_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~468feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~468_q\ : std_logic;
SIGNAL \Instruction_memory|memo~212_q\ : std_logic;
SIGNAL \Instruction_memory|memo~340feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~340_q\ : std_logic;
SIGNAL \Instruction_memory|memo~84_q\ : std_logic;
SIGNAL \Instruction_memory|memo~699_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~700_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~308_q\ : std_logic;
SIGNAL \Instruction_memory|memo~436_q\ : std_logic;
SIGNAL \Instruction_memory|memo~180feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~180_q\ : std_logic;
SIGNAL \Instruction_memory|memo~52_q\ : std_logic;
SIGNAL \Instruction_memory|memo~703_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~704_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~372feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~372_q\ : std_logic;
SIGNAL \Instruction_memory|memo~500_q\ : std_logic;
SIGNAL \Instruction_memory|memo~244feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~244_q\ : std_logic;
SIGNAL \Instruction_memory|memo~116_q\ : std_logic;
SIGNAL \Instruction_memory|memo~701_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~702_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~705_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~708_combout\ : std_logic;
SIGNAL \instruction_in[16]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~469feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~469_q\ : std_logic;
SIGNAL \Instruction_memory|memo~533_q\ : std_logic;
SIGNAL \Instruction_memory|memo~501_q\ : std_logic;
SIGNAL \Instruction_memory|memo~437_q\ : std_logic;
SIGNAL \Instruction_memory|memo~716_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~717_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~405_q\ : std_logic;
SIGNAL \Instruction_memory|memo~373_q\ : std_logic;
SIGNAL \Instruction_memory|memo~341_q\ : std_logic;
SIGNAL \Instruction_memory|memo~309_q\ : std_logic;
SIGNAL \Instruction_memory|memo~709_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~710_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~213_q\ : std_logic;
SIGNAL \Instruction_memory|memo~277_q\ : std_logic;
SIGNAL \Instruction_memory|memo~245_q\ : std_logic;
SIGNAL \Instruction_memory|memo~181_q\ : std_logic;
SIGNAL \Instruction_memory|memo~711_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~712_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~117feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~117_q\ : std_logic;
SIGNAL \Instruction_memory|memo~149_q\ : std_logic;
SIGNAL \Instruction_memory|memo~85_q\ : std_logic;
SIGNAL \Instruction_memory|memo~53_q\ : std_logic;
SIGNAL \Instruction_memory|memo~713_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~714_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~715_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~718_combout\ : std_logic;
SIGNAL \instruction_in[17]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~406feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~406_q\ : std_logic;
SIGNAL \Instruction_memory|memo~534_q\ : std_logic;
SIGNAL \Instruction_memory|memo~278_q\ : std_logic;
SIGNAL \Instruction_memory|memo~150_q\ : std_logic;
SIGNAL \Instruction_memory|memo~726_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~727_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~502_q\ : std_logic;
SIGNAL \Instruction_memory|memo~246_q\ : std_logic;
SIGNAL \Instruction_memory|memo~118_q\ : std_logic;
SIGNAL \Instruction_memory|memo~374_q\ : std_logic;
SIGNAL \Instruction_memory|memo~719_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~720_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~182feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~182_q\ : std_logic;
SIGNAL \Instruction_memory|memo~438_q\ : std_logic;
SIGNAL \Instruction_memory|memo~310feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~310_q\ : std_logic;
SIGNAL \Instruction_memory|memo~54_q\ : std_logic;
SIGNAL \Instruction_memory|memo~723_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~724_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~342_q\ : std_logic;
SIGNAL \Instruction_memory|memo~470_q\ : std_logic;
SIGNAL \Instruction_memory|memo~214_q\ : std_logic;
SIGNAL \Instruction_memory|memo~86_q\ : std_logic;
SIGNAL \Instruction_memory|memo~721_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~722_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~725_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~728_combout\ : std_logic;
SIGNAL \instruction_in[18]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~503feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~503_q\ : std_logic;
SIGNAL \Instruction_memory|memo~535_q\ : std_logic;
SIGNAL \Instruction_memory|memo~471_q\ : std_logic;
SIGNAL \Instruction_memory|memo~439_q\ : std_logic;
SIGNAL \Instruction_memory|memo~736_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~737_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~343_q\ : std_logic;
SIGNAL \Instruction_memory|memo~407_q\ : std_logic;
SIGNAL \Instruction_memory|memo~375_q\ : std_logic;
SIGNAL \Instruction_memory|memo~311_q\ : std_logic;
SIGNAL \Instruction_memory|memo~731_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~732_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~87feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~87_q\ : std_logic;
SIGNAL \Instruction_memory|memo~151_q\ : std_logic;
SIGNAL \Instruction_memory|memo~119_q\ : std_logic;
SIGNAL \Instruction_memory|memo~55_q\ : std_logic;
SIGNAL \Instruction_memory|memo~733_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~734_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~735_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~279feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~279_q\ : std_logic;
SIGNAL \Instruction_memory|memo~247_q\ : std_logic;
SIGNAL \Instruction_memory|memo~215_q\ : std_logic;
SIGNAL \Instruction_memory|memo~183_q\ : std_logic;
SIGNAL \Instruction_memory|memo~729_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~730_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~738_combout\ : std_logic;
SIGNAL \instruction_in[19]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~280feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~280_q\ : std_logic;
SIGNAL \Instruction_memory|memo~536_q\ : std_logic;
SIGNAL \Instruction_memory|memo~152_q\ : std_logic;
SIGNAL \Instruction_memory|memo~408_q\ : std_logic;
SIGNAL \Instruction_memory|memo~746_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~747_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~472feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~472_q\ : std_logic;
SIGNAL \Instruction_memory|memo~216_q\ : std_logic;
SIGNAL \Instruction_memory|memo~344feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~344_q\ : std_logic;
SIGNAL \Instruction_memory|memo~88_q\ : std_logic;
SIGNAL \Instruction_memory|memo~739_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~740_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~312_q\ : std_logic;
SIGNAL \Instruction_memory|memo~440_q\ : std_logic;
SIGNAL \Instruction_memory|memo~184_q\ : std_logic;
SIGNAL \Instruction_memory|memo~56_q\ : std_logic;
SIGNAL \Instruction_memory|memo~743_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~744_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~376feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~376_q\ : std_logic;
SIGNAL \Instruction_memory|memo~504_q\ : std_logic;
SIGNAL \Instruction_memory|memo~248_q\ : std_logic;
SIGNAL \Instruction_memory|memo~120_q\ : std_logic;
SIGNAL \Instruction_memory|memo~741_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~742_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~745_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~748_combout\ : std_logic;
SIGNAL \instruction_in[20]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~377feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~377_q\ : std_logic;
SIGNAL \Instruction_memory|memo~345feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~345_q\ : std_logic;
SIGNAL \Instruction_memory|memo~313_q\ : std_logic;
SIGNAL \Instruction_memory|memo~749_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~409_q\ : std_logic;
SIGNAL \Instruction_memory|memo~750_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~473_q\ : std_logic;
SIGNAL \Instruction_memory|memo~537_q\ : std_logic;
SIGNAL \Instruction_memory|memo~505feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~505_q\ : std_logic;
SIGNAL \Instruction_memory|memo~441_q\ : std_logic;
SIGNAL \Instruction_memory|memo~756_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~757_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~217_q\ : std_logic;
SIGNAL \Instruction_memory|memo~281_q\ : std_logic;
SIGNAL \Instruction_memory|memo~249_q\ : std_logic;
SIGNAL \Instruction_memory|memo~185_q\ : std_logic;
SIGNAL \Instruction_memory|memo~751_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~752_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~121feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~121_q\ : std_logic;
SIGNAL \Instruction_memory|memo~153_q\ : std_logic;
SIGNAL \Instruction_memory|memo~89feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~89_q\ : std_logic;
SIGNAL \Instruction_memory|memo~57_q\ : std_logic;
SIGNAL \Instruction_memory|memo~753_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~754_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~755_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~758_combout\ : std_logic;
SIGNAL \instruction_in[21]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~410_q\ : std_logic;
SIGNAL \Instruction_memory|memo~538_q\ : std_logic;
SIGNAL \Instruction_memory|memo~282_q\ : std_logic;
SIGNAL \Instruction_memory|memo~154_q\ : std_logic;
SIGNAL \Instruction_memory|memo~766_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~767_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~506feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~506_q\ : std_logic;
SIGNAL \Instruction_memory|memo~250_q\ : std_logic;
SIGNAL \Instruction_memory|memo~122_q\ : std_logic;
SIGNAL \Instruction_memory|memo~378feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~378_q\ : std_logic;
SIGNAL \Instruction_memory|memo~759_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~760_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~186_q\ : std_logic;
SIGNAL \Instruction_memory|memo~442_q\ : std_logic;
SIGNAL \Instruction_memory|memo~58_q\ : std_logic;
SIGNAL \Instruction_memory|memo~314feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~314_q\ : std_logic;
SIGNAL \Instruction_memory|memo~763_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~764_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~346_q\ : std_logic;
SIGNAL \Instruction_memory|memo~474_q\ : std_logic;
SIGNAL \Instruction_memory|memo~218feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~218_q\ : std_logic;
SIGNAL \Instruction_memory|memo~90_q\ : std_logic;
SIGNAL \Instruction_memory|memo~761_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~762_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~765_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~768_combout\ : std_logic;
SIGNAL \instruction_in[22]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~507feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~507_q\ : std_logic;
SIGNAL \Instruction_memory|memo~539_q\ : std_logic;
SIGNAL \Instruction_memory|memo~475_q\ : std_logic;
SIGNAL \Instruction_memory|memo~443_q\ : std_logic;
SIGNAL \Instruction_memory|memo~776_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~777_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~91feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~91_q\ : std_logic;
SIGNAL \Instruction_memory|memo~155_q\ : std_logic;
SIGNAL \Instruction_memory|memo~123feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~123_q\ : std_logic;
SIGNAL \Instruction_memory|memo~59_q\ : std_logic;
SIGNAL \Instruction_memory|memo~773_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~774_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~347feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~347_q\ : std_logic;
SIGNAL \Instruction_memory|memo~411_q\ : std_logic;
SIGNAL \Instruction_memory|memo~379feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~379_q\ : std_logic;
SIGNAL \Instruction_memory|memo~315_q\ : std_logic;
SIGNAL \Instruction_memory|memo~771_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~772_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~775_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~283_q\ : std_logic;
SIGNAL \Instruction_memory|memo~251_q\ : std_logic;
SIGNAL \Instruction_memory|memo~219_q\ : std_logic;
SIGNAL \Instruction_memory|memo~187_q\ : std_logic;
SIGNAL \Instruction_memory|memo~769_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~770_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~778_combout\ : std_logic;
SIGNAL \instruction_in[23]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~476feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~476_q\ : std_logic;
SIGNAL \Instruction_memory|memo~220_q\ : std_logic;
SIGNAL \Instruction_memory|memo~348_q\ : std_logic;
SIGNAL \Instruction_memory|memo~92_q\ : std_logic;
SIGNAL \Instruction_memory|memo~779_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~780_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~60_q\ : std_logic;
SIGNAL \Instruction_memory|memo~188feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~188_q\ : std_logic;
SIGNAL \Instruction_memory|memo~783_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~316feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~316_q\ : std_logic;
SIGNAL \Instruction_memory|memo~444_q\ : std_logic;
SIGNAL \Instruction_memory|memo~784_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~380_q\ : std_logic;
SIGNAL \Instruction_memory|memo~508_q\ : std_logic;
SIGNAL \Instruction_memory|memo~252_q\ : std_logic;
SIGNAL \Instruction_memory|memo~124_q\ : std_logic;
SIGNAL \Instruction_memory|memo~781_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~782_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~785_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~284_q\ : std_logic;
SIGNAL \Instruction_memory|memo~540_q\ : std_logic;
SIGNAL \Instruction_memory|memo~412feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~412_q\ : std_logic;
SIGNAL \Instruction_memory|memo~156_q\ : std_logic;
SIGNAL \Instruction_memory|memo~786_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~787_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~788_combout\ : std_logic;
SIGNAL \instruction_in[24]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~413feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~413_q\ : std_logic;
SIGNAL \Instruction_memory|memo~381_q\ : std_logic;
SIGNAL \Instruction_memory|memo~349feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~349_q\ : std_logic;
SIGNAL \Instruction_memory|memo~317_q\ : std_logic;
SIGNAL \Instruction_memory|memo~789_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~790_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~125_q\ : std_logic;
SIGNAL \Instruction_memory|memo~157_q\ : std_logic;
SIGNAL \Instruction_memory|memo~61_q\ : std_logic;
SIGNAL \Instruction_memory|memo~93feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~93_q\ : std_logic;
SIGNAL \Instruction_memory|memo~793_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~794_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~221_q\ : std_logic;
SIGNAL \Instruction_memory|memo~285_q\ : std_logic;
SIGNAL \Instruction_memory|memo~253_q\ : std_logic;
SIGNAL \Instruction_memory|memo~189_q\ : std_logic;
SIGNAL \Instruction_memory|memo~791_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~792_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~795_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~477feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~477_q\ : std_logic;
SIGNAL \Instruction_memory|memo~541_q\ : std_logic;
SIGNAL \Instruction_memory|memo~509feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~509_q\ : std_logic;
SIGNAL \Instruction_memory|memo~445_q\ : std_logic;
SIGNAL \Instruction_memory|memo~796_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~797_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~798_combout\ : std_logic;
SIGNAL \instruction_in[25]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~190_q\ : std_logic;
SIGNAL \Instruction_memory|memo~446_q\ : std_logic;
SIGNAL \Instruction_memory|memo~318_q\ : std_logic;
SIGNAL \Instruction_memory|memo~62_q\ : std_logic;
SIGNAL \Instruction_memory|memo~803_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~804_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~350feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~350_q\ : std_logic;
SIGNAL \Instruction_memory|memo~478_q\ : std_logic;
SIGNAL \Instruction_memory|memo~222feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~222_q\ : std_logic;
SIGNAL \Instruction_memory|memo~94_q\ : std_logic;
SIGNAL \Instruction_memory|memo~801_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~802_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~805_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~510_q\ : std_logic;
SIGNAL \Instruction_memory|memo~254_q\ : std_logic;
SIGNAL \Instruction_memory|memo~382_q\ : std_logic;
SIGNAL \Instruction_memory|memo~126_q\ : std_logic;
SIGNAL \Instruction_memory|memo~799_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~800_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~414_q\ : std_logic;
SIGNAL \Instruction_memory|memo~158_q\ : std_logic;
SIGNAL \Instruction_memory|memo~286feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~286_q\ : std_logic;
SIGNAL \Instruction_memory|memo~806_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~542_q\ : std_logic;
SIGNAL \Instruction_memory|memo~807_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~808_combout\ : std_logic;
SIGNAL \instruction_in[26]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~511_q\ : std_logic;
SIGNAL \Instruction_memory|memo~543_q\ : std_logic;
SIGNAL \Instruction_memory|memo~479_q\ : std_logic;
SIGNAL \Instruction_memory|memo~447_q\ : std_logic;
SIGNAL \Instruction_memory|memo~816_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~817_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~287_q\ : std_logic;
SIGNAL \Instruction_memory|memo~255_q\ : std_logic;
SIGNAL \Instruction_memory|memo~223_q\ : std_logic;
SIGNAL \Instruction_memory|memo~191_q\ : std_logic;
SIGNAL \Instruction_memory|memo~809_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~810_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~351feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~351_q\ : std_logic;
SIGNAL \Instruction_memory|memo~415_q\ : std_logic;
SIGNAL \Instruction_memory|memo~383feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~383_q\ : std_logic;
SIGNAL \Instruction_memory|memo~319_q\ : std_logic;
SIGNAL \Instruction_memory|memo~811_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~812_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~95_q\ : std_logic;
SIGNAL \Instruction_memory|memo~159_q\ : std_logic;
SIGNAL \Instruction_memory|memo~127_q\ : std_logic;
SIGNAL \Instruction_memory|memo~63_q\ : std_logic;
SIGNAL \Instruction_memory|memo~813_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~814_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~815_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~818_combout\ : std_logic;
SIGNAL \instruction_in[27]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~288_q\ : std_logic;
SIGNAL \Instruction_memory|memo~544_q\ : std_logic;
SIGNAL \Instruction_memory|memo~416_q\ : std_logic;
SIGNAL \Instruction_memory|memo~160_q\ : std_logic;
SIGNAL \Instruction_memory|memo~826_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~827_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~480_q\ : std_logic;
SIGNAL \Instruction_memory|memo~224_q\ : std_logic;
SIGNAL \Instruction_memory|memo~352_q\ : std_logic;
SIGNAL \Instruction_memory|memo~96_q\ : std_logic;
SIGNAL \Instruction_memory|memo~819_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~820_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~320feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~320_q\ : std_logic;
SIGNAL \Instruction_memory|memo~448_q\ : std_logic;
SIGNAL \Instruction_memory|memo~192_q\ : std_logic;
SIGNAL \Instruction_memory|memo~64_q\ : std_logic;
SIGNAL \Instruction_memory|memo~823_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~824_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~384_q\ : std_logic;
SIGNAL \Instruction_memory|memo~512_q\ : std_logic;
SIGNAL \Instruction_memory|memo~256_q\ : std_logic;
SIGNAL \Instruction_memory|memo~128_q\ : std_logic;
SIGNAL \Instruction_memory|memo~821_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~822_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~825_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~828_combout\ : std_logic;
SIGNAL \instruction_in[28]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~417_q\ : std_logic;
SIGNAL \Instruction_memory|memo~385_q\ : std_logic;
SIGNAL \Instruction_memory|memo~321_q\ : std_logic;
SIGNAL \Instruction_memory|memo~353feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~353_q\ : std_logic;
SIGNAL \Instruction_memory|memo~829_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~830_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~481_q\ : std_logic;
SIGNAL \Instruction_memory|memo~545_q\ : std_logic;
SIGNAL \Instruction_memory|memo~513feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~513_q\ : std_logic;
SIGNAL \Instruction_memory|memo~449_q\ : std_logic;
SIGNAL \Instruction_memory|memo~836_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~837_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~225_q\ : std_logic;
SIGNAL \Instruction_memory|memo~289_q\ : std_logic;
SIGNAL \Instruction_memory|memo~257feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~257_q\ : std_logic;
SIGNAL \Instruction_memory|memo~193_q\ : std_logic;
SIGNAL \Instruction_memory|memo~831_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~832_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~129_q\ : std_logic;
SIGNAL \Instruction_memory|memo~161_q\ : std_logic;
SIGNAL \Instruction_memory|memo~97_q\ : std_logic;
SIGNAL \Instruction_memory|memo~65_q\ : std_logic;
SIGNAL \Instruction_memory|memo~833_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~834_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~835_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~838_combout\ : std_logic;
SIGNAL \instruction_in[29]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~418feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~418_q\ : std_logic;
SIGNAL \Instruction_memory|memo~546_q\ : std_logic;
SIGNAL \Instruction_memory|memo~290feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~290_q\ : std_logic;
SIGNAL \Instruction_memory|memo~162_q\ : std_logic;
SIGNAL \Instruction_memory|memo~846_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~847_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~514_q\ : std_logic;
SIGNAL \Instruction_memory|memo~258_q\ : std_logic;
SIGNAL \Instruction_memory|memo~130_q\ : std_logic;
SIGNAL \Instruction_memory|memo~386_q\ : std_logic;
SIGNAL \Instruction_memory|memo~839_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~840_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~354feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~354_q\ : std_logic;
SIGNAL \Instruction_memory|memo~482_q\ : std_logic;
SIGNAL \Instruction_memory|memo~226_q\ : std_logic;
SIGNAL \Instruction_memory|memo~98_q\ : std_logic;
SIGNAL \Instruction_memory|memo~841_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~842_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~194feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~194_q\ : std_logic;
SIGNAL \Instruction_memory|memo~450_q\ : std_logic;
SIGNAL \Instruction_memory|memo~66_q\ : std_logic;
SIGNAL \Instruction_memory|memo~322_q\ : std_logic;
SIGNAL \Instruction_memory|memo~843_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~844_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~845_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~848_combout\ : std_logic;
SIGNAL \instruction_in[30]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~99feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~99_q\ : std_logic;
SIGNAL \Instruction_memory|memo~163_q\ : std_logic;
SIGNAL \Instruction_memory|memo~131_q\ : std_logic;
SIGNAL \Instruction_memory|memo~67_q\ : std_logic;
SIGNAL \Instruction_memory|memo~853_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~854_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~355feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~355_q\ : std_logic;
SIGNAL \Instruction_memory|memo~419_q\ : std_logic;
SIGNAL \Instruction_memory|memo~387_q\ : std_logic;
SIGNAL \Instruction_memory|memo~323_q\ : std_logic;
SIGNAL \Instruction_memory|memo~851_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~852_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~855_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~515feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~515_q\ : std_logic;
SIGNAL \Instruction_memory|memo~547_q\ : std_logic;
SIGNAL \Instruction_memory|memo~483_q\ : std_logic;
SIGNAL \Instruction_memory|memo~451_q\ : std_logic;
SIGNAL \Instruction_memory|memo~856_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~857_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~291feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~291_q\ : std_logic;
SIGNAL \Instruction_memory|memo~259_q\ : std_logic;
SIGNAL \Instruction_memory|memo~227feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~227_q\ : std_logic;
SIGNAL \Instruction_memory|memo~195_q\ : std_logic;
SIGNAL \Instruction_memory|memo~849_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~850_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~858_combout\ : std_logic;
SIGNAL \instruction_in[31]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo~292feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~292_q\ : std_logic;
SIGNAL \Instruction_memory|memo~548_q\ : std_logic;
SIGNAL \Instruction_memory|memo~420feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~420_q\ : std_logic;
SIGNAL \Instruction_memory|memo~164_q\ : std_logic;
SIGNAL \Instruction_memory|memo~866_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~867_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~484feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~484_q\ : std_logic;
SIGNAL \Instruction_memory|memo~228_q\ : std_logic;
SIGNAL \Instruction_memory|memo~356_q\ : std_logic;
SIGNAL \Instruction_memory|memo~100_q\ : std_logic;
SIGNAL \Instruction_memory|memo~859_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~860_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~324feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~324_q\ : std_logic;
SIGNAL \Instruction_memory|memo~452_q\ : std_logic;
SIGNAL \Instruction_memory|memo~196feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~196_q\ : std_logic;
SIGNAL \Instruction_memory|memo~68_q\ : std_logic;
SIGNAL \Instruction_memory|memo~863_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~864_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~388_q\ : std_logic;
SIGNAL \Instruction_memory|memo~516_q\ : std_logic;
SIGNAL \Instruction_memory|memo~260feeder_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~260_q\ : std_logic;
SIGNAL \Instruction_memory|memo~132_q\ : std_logic;
SIGNAL \Instruction_memory|memo~861_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~862_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~865_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~868_combout\ : std_logic;
SIGNAL \sequenceur|end_instr~q\ : std_logic;
SIGNAL \Instruction_register|Instruc_R|memo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Program_counter|PC_1|memo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_pgr_valid <= pgr_valid;
ww_start_exe <= start_exe;
next_PC <= ww_next_PC;
out_PC <= ww_out_PC;
ww_instruction_in <= instruction_in;
instruction_out <= ww_instruction_out;
end_instr <= ww_end_instr;
ww_prog_addr <= prog_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X16_Y0_N30
\next_PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \next_PC[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\next_PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \next_PC[1]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\next_PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[2]~0_combout\,
	devoe => ww_devoe,
	o => \next_PC[2]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\next_PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[3]~2_combout\,
	devoe => ww_devoe,
	o => \next_PC[3]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\next_PC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[4]~4_combout\,
	devoe => ww_devoe,
	o => \next_PC[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\next_PC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[5]~6_combout\,
	devoe => ww_devoe,
	o => \next_PC[5]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\next_PC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[6]~8_combout\,
	devoe => ww_devoe,
	o => \next_PC[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\next_PC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[7]~10_combout\,
	devoe => ww_devoe,
	o => \next_PC[7]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\next_PC[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[8]~12_combout\,
	devoe => ww_devoe,
	o => \next_PC[8]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\next_PC[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[9]~14_combout\,
	devoe => ww_devoe,
	o => \next_PC[9]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\next_PC[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[10]~16_combout\,
	devoe => ww_devoe,
	o => \next_PC[10]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\next_PC[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[11]~18_combout\,
	devoe => ww_devoe,
	o => \next_PC[11]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\next_PC[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[12]~20_combout\,
	devoe => ww_devoe,
	o => \next_PC[12]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\next_PC[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[13]~22_combout\,
	devoe => ww_devoe,
	o => \next_PC[13]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\next_PC[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[14]~24_combout\,
	devoe => ww_devoe,
	o => \next_PC[14]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\next_PC[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[15]~26_combout\,
	devoe => ww_devoe,
	o => \next_PC[15]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\next_PC[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[16]~28_combout\,
	devoe => ww_devoe,
	o => \next_PC[16]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\next_PC[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[17]~30_combout\,
	devoe => ww_devoe,
	o => \next_PC[17]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\next_PC[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[18]~32_combout\,
	devoe => ww_devoe,
	o => \next_PC[18]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\next_PC[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[19]~34_combout\,
	devoe => ww_devoe,
	o => \next_PC[19]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\next_PC[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[20]~36_combout\,
	devoe => ww_devoe,
	o => \next_PC[20]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\next_PC[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[21]~38_combout\,
	devoe => ww_devoe,
	o => \next_PC[21]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\next_PC[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[22]~40_combout\,
	devoe => ww_devoe,
	o => \next_PC[22]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\next_PC[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[23]~42_combout\,
	devoe => ww_devoe,
	o => \next_PC[23]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\next_PC[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[24]~44_combout\,
	devoe => ww_devoe,
	o => \next_PC[24]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\next_PC[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[25]~46_combout\,
	devoe => ww_devoe,
	o => \next_PC[25]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\next_PC[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[26]~48_combout\,
	devoe => ww_devoe,
	o => \next_PC[26]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\next_PC[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[27]~50_combout\,
	devoe => ww_devoe,
	o => \next_PC[27]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\next_PC[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[28]~52_combout\,
	devoe => ww_devoe,
	o => \next_PC[28]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\next_PC[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[29]~54_combout\,
	devoe => ww_devoe,
	o => \next_PC[29]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\next_PC[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[30]~56_combout\,
	devoe => ww_devoe,
	o => \next_PC[30]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\next_PC[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_PC_in[31]~58_combout\,
	devoe => ww_devoe,
	o => \next_PC[31]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\out_PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_PC[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\out_PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_PC[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\out_PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(2),
	devoe => ww_devoe,
	o => \out_PC[2]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\out_PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(3),
	devoe => ww_devoe,
	o => \out_PC[3]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\out_PC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(4),
	devoe => ww_devoe,
	o => \out_PC[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\out_PC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(5),
	devoe => ww_devoe,
	o => \out_PC[5]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\out_PC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(6),
	devoe => ww_devoe,
	o => \out_PC[6]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\out_PC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(7),
	devoe => ww_devoe,
	o => \out_PC[7]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\out_PC[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(8),
	devoe => ww_devoe,
	o => \out_PC[8]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\out_PC[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(9),
	devoe => ww_devoe,
	o => \out_PC[9]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\out_PC[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(10),
	devoe => ww_devoe,
	o => \out_PC[10]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\out_PC[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(11),
	devoe => ww_devoe,
	o => \out_PC[11]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\out_PC[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(12),
	devoe => ww_devoe,
	o => \out_PC[12]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\out_PC[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(13),
	devoe => ww_devoe,
	o => \out_PC[13]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\out_PC[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(14),
	devoe => ww_devoe,
	o => \out_PC[14]~output_o\);

-- Location: IOOBUF_X78_Y3_N16
\out_PC[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(15),
	devoe => ww_devoe,
	o => \out_PC[15]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\out_PC[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(16),
	devoe => ww_devoe,
	o => \out_PC[16]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\out_PC[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(17),
	devoe => ww_devoe,
	o => \out_PC[17]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\out_PC[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(18),
	devoe => ww_devoe,
	o => \out_PC[18]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\out_PC[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(19),
	devoe => ww_devoe,
	o => \out_PC[19]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\out_PC[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(20),
	devoe => ww_devoe,
	o => \out_PC[20]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\out_PC[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(21),
	devoe => ww_devoe,
	o => \out_PC[21]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\out_PC[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(22),
	devoe => ww_devoe,
	o => \out_PC[22]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\out_PC[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(23),
	devoe => ww_devoe,
	o => \out_PC[23]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\out_PC[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(24),
	devoe => ww_devoe,
	o => \out_PC[24]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\out_PC[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(25),
	devoe => ww_devoe,
	o => \out_PC[25]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\out_PC[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(26),
	devoe => ww_devoe,
	o => \out_PC[26]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\out_PC[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(27),
	devoe => ww_devoe,
	o => \out_PC[27]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\out_PC[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(28),
	devoe => ww_devoe,
	o => \out_PC[28]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\out_PC[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(29),
	devoe => ww_devoe,
	o => \out_PC[29]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\out_PC[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(30),
	devoe => ww_devoe,
	o => \out_PC[30]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\out_PC[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Program_counter|PC_1|memo\(31),
	devoe => ww_devoe,
	o => \out_PC[31]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\instruction_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(0),
	devoe => ww_devoe,
	o => \instruction_out[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\instruction_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(1),
	devoe => ww_devoe,
	o => \instruction_out[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\instruction_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(2),
	devoe => ww_devoe,
	o => \instruction_out[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\instruction_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(3),
	devoe => ww_devoe,
	o => \instruction_out[3]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\instruction_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(4),
	devoe => ww_devoe,
	o => \instruction_out[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\instruction_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(5),
	devoe => ww_devoe,
	o => \instruction_out[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\instruction_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(6),
	devoe => ww_devoe,
	o => \instruction_out[6]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\instruction_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(7),
	devoe => ww_devoe,
	o => \instruction_out[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\instruction_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(8),
	devoe => ww_devoe,
	o => \instruction_out[8]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\instruction_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(9),
	devoe => ww_devoe,
	o => \instruction_out[9]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\instruction_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(10),
	devoe => ww_devoe,
	o => \instruction_out[10]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\instruction_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(11),
	devoe => ww_devoe,
	o => \instruction_out[11]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\instruction_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(12),
	devoe => ww_devoe,
	o => \instruction_out[12]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\instruction_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(13),
	devoe => ww_devoe,
	o => \instruction_out[13]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\instruction_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(14),
	devoe => ww_devoe,
	o => \instruction_out[14]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\instruction_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(15),
	devoe => ww_devoe,
	o => \instruction_out[15]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\instruction_out[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(16),
	devoe => ww_devoe,
	o => \instruction_out[16]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\instruction_out[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(17),
	devoe => ww_devoe,
	o => \instruction_out[17]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\instruction_out[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(18),
	devoe => ww_devoe,
	o => \instruction_out[18]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\instruction_out[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(19),
	devoe => ww_devoe,
	o => \instruction_out[19]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\instruction_out[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(20),
	devoe => ww_devoe,
	o => \instruction_out[20]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\instruction_out[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(21),
	devoe => ww_devoe,
	o => \instruction_out[21]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\instruction_out[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(22),
	devoe => ww_devoe,
	o => \instruction_out[22]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\instruction_out[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(23),
	devoe => ww_devoe,
	o => \instruction_out[23]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\instruction_out[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(24),
	devoe => ww_devoe,
	o => \instruction_out[24]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\instruction_out[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(25),
	devoe => ww_devoe,
	o => \instruction_out[25]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\instruction_out[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(26),
	devoe => ww_devoe,
	o => \instruction_out[26]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\instruction_out[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(27),
	devoe => ww_devoe,
	o => \instruction_out[27]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\instruction_out[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(28),
	devoe => ww_devoe,
	o => \instruction_out[28]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\instruction_out[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(29),
	devoe => ww_devoe,
	o => \instruction_out[29]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\instruction_out[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(30),
	devoe => ww_devoe,
	o => \instruction_out[30]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\instruction_out[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_register|Instruc_R|memo\(31),
	devoe => ww_devoe,
	o => \instruction_out[31]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\end_instr~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sequenceur|end_instr~q\,
	devoe => ww_devoe,
	o => \end_instr~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y16_N1
\start_exe~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_exe,
	o => \start_exe~input_o\);

-- Location: LCCOMB_X74_Y32_N12
\Instruction_memory|memo~870\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~870_combout\ = (\start_exe~input_o\) # (\sequenceur|etat.CHARGEMENT_PGR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_exe~input_o\,
	datad => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \Instruction_memory|memo~870_combout\);

-- Location: LCCOMB_X74_Y32_N14
\sequenceur|etat.CHARGEMENT_PGR~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sequenceur|etat.CHARGEMENT_PGR~feeder_combout\ = \Instruction_memory|memo~870_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo~870_combout\,
	combout => \sequenceur|etat.CHARGEMENT_PGR~feeder_combout\);

-- Location: FF_X74_Y32_N15
\sequenceur|etat.CHARGEMENT_PGR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sequenceur|etat.CHARGEMENT_PGR~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequenceur|etat.CHARGEMENT_PGR~q\);

-- Location: LCCOMB_X74_Y32_N26
\sequenceur|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sequenceur|Selector0~0_combout\ = (\sequenceur|etat.ECRITURE_PC~q\) # ((!\sequenceur|etat.CHARGEMENT_PGR~q\ & \start_exe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sequenceur|etat.CHARGEMENT_PGR~q\,
	datac => \sequenceur|etat.ECRITURE_PC~q\,
	datad => \start_exe~input_o\,
	combout => \sequenceur|Selector0~0_combout\);

-- Location: FF_X74_Y32_N27
\sequenceur|etat.CHARG_IR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sequenceur|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequenceur|etat.CHARG_IR~q\);

-- Location: LCCOMB_X74_Y32_N30
\sequenceur|etat.LECTURE_REG~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sequenceur|etat.LECTURE_REG~feeder_combout\ = \sequenceur|etat.CHARG_IR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sequenceur|etat.CHARG_IR~q\,
	combout => \sequenceur|etat.LECTURE_REG~feeder_combout\);

-- Location: FF_X74_Y32_N31
\sequenceur|etat.LECTURE_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sequenceur|etat.LECTURE_REG~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequenceur|etat.LECTURE_REG~q\);

-- Location: FF_X74_Y32_N13
\sequenceur|etat.ECRITURE_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sequenceur|etat.LECTURE_REG~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequenceur|etat.ECRITURE_PC~q\);

-- Location: FF_X75_Y32_N3
\Program_counter|PC_1|memo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[2]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(2));

-- Location: LCCOMB_X75_Y32_N2
\next_PC_in[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[2]~0_combout\ = \Program_counter|PC_1|memo\(2) $ (VCC)
-- \next_PC_in[2]~1\ = CARRY(\Program_counter|PC_1|memo\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(2),
	datad => VCC,
	combout => \next_PC_in[2]~0_combout\,
	cout => \next_PC_in[2]~1\);

-- Location: FF_X75_Y32_N5
\Program_counter|PC_1|memo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[3]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(3));

-- Location: LCCOMB_X75_Y32_N4
\next_PC_in[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[3]~2_combout\ = (\Program_counter|PC_1|memo\(3) & (!\next_PC_in[2]~1\)) # (!\Program_counter|PC_1|memo\(3) & ((\next_PC_in[2]~1\) # (GND)))
-- \next_PC_in[3]~3\ = CARRY((!\next_PC_in[2]~1\) # (!\Program_counter|PC_1|memo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(3),
	datad => VCC,
	cin => \next_PC_in[2]~1\,
	combout => \next_PC_in[3]~2_combout\,
	cout => \next_PC_in[3]~3\);

-- Location: FF_X75_Y32_N7
\Program_counter|PC_1|memo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[4]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(4));

-- Location: LCCOMB_X75_Y32_N6
\next_PC_in[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[4]~4_combout\ = (\Program_counter|PC_1|memo\(4) & (\next_PC_in[3]~3\ $ (GND))) # (!\Program_counter|PC_1|memo\(4) & (!\next_PC_in[3]~3\ & VCC))
-- \next_PC_in[4]~5\ = CARRY((\Program_counter|PC_1|memo\(4) & !\next_PC_in[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(4),
	datad => VCC,
	cin => \next_PC_in[3]~3\,
	combout => \next_PC_in[4]~4_combout\,
	cout => \next_PC_in[4]~5\);

-- Location: FF_X75_Y32_N1
\Program_counter|PC_1|memo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \next_PC_in[5]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(5));

-- Location: LCCOMB_X75_Y32_N8
\next_PC_in[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[5]~6_combout\ = (\Program_counter|PC_1|memo\(5) & (!\next_PC_in[4]~5\)) # (!\Program_counter|PC_1|memo\(5) & ((\next_PC_in[4]~5\) # (GND)))
-- \next_PC_in[5]~7\ = CARRY((!\next_PC_in[4]~5\) # (!\Program_counter|PC_1|memo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(5),
	datad => VCC,
	cin => \next_PC_in[4]~5\,
	combout => \next_PC_in[5]~6_combout\,
	cout => \next_PC_in[5]~7\);

-- Location: FF_X75_Y32_N11
\Program_counter|PC_1|memo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[6]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(6));

-- Location: LCCOMB_X75_Y32_N10
\next_PC_in[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[6]~8_combout\ = (\Program_counter|PC_1|memo\(6) & (\next_PC_in[5]~7\ $ (GND))) # (!\Program_counter|PC_1|memo\(6) & (!\next_PC_in[5]~7\ & VCC))
-- \next_PC_in[6]~9\ = CARRY((\Program_counter|PC_1|memo\(6) & !\next_PC_in[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(6),
	datad => VCC,
	cin => \next_PC_in[5]~7\,
	combout => \next_PC_in[6]~8_combout\,
	cout => \next_PC_in[6]~9\);

-- Location: FF_X75_Y32_N13
\Program_counter|PC_1|memo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[7]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(7));

-- Location: LCCOMB_X75_Y32_N12
\next_PC_in[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[7]~10_combout\ = (\Program_counter|PC_1|memo\(7) & (!\next_PC_in[6]~9\)) # (!\Program_counter|PC_1|memo\(7) & ((\next_PC_in[6]~9\) # (GND)))
-- \next_PC_in[7]~11\ = CARRY((!\next_PC_in[6]~9\) # (!\Program_counter|PC_1|memo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(7),
	datad => VCC,
	cin => \next_PC_in[6]~9\,
	combout => \next_PC_in[7]~10_combout\,
	cout => \next_PC_in[7]~11\);

-- Location: FF_X75_Y32_N15
\Program_counter|PC_1|memo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[8]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(8));

-- Location: LCCOMB_X75_Y32_N14
\next_PC_in[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[8]~12_combout\ = (\Program_counter|PC_1|memo\(8) & (\next_PC_in[7]~11\ $ (GND))) # (!\Program_counter|PC_1|memo\(8) & (!\next_PC_in[7]~11\ & VCC))
-- \next_PC_in[8]~13\ = CARRY((\Program_counter|PC_1|memo\(8) & !\next_PC_in[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(8),
	datad => VCC,
	cin => \next_PC_in[7]~11\,
	combout => \next_PC_in[8]~12_combout\,
	cout => \next_PC_in[8]~13\);

-- Location: FF_X75_Y32_N17
\Program_counter|PC_1|memo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[9]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(9));

-- Location: LCCOMB_X75_Y32_N16
\next_PC_in[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[9]~14_combout\ = (\Program_counter|PC_1|memo\(9) & (!\next_PC_in[8]~13\)) # (!\Program_counter|PC_1|memo\(9) & ((\next_PC_in[8]~13\) # (GND)))
-- \next_PC_in[9]~15\ = CARRY((!\next_PC_in[8]~13\) # (!\Program_counter|PC_1|memo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(9),
	datad => VCC,
	cin => \next_PC_in[8]~13\,
	combout => \next_PC_in[9]~14_combout\,
	cout => \next_PC_in[9]~15\);

-- Location: FF_X75_Y32_N19
\Program_counter|PC_1|memo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[10]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(10));

-- Location: LCCOMB_X75_Y32_N18
\next_PC_in[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[10]~16_combout\ = (\Program_counter|PC_1|memo\(10) & (\next_PC_in[9]~15\ $ (GND))) # (!\Program_counter|PC_1|memo\(10) & (!\next_PC_in[9]~15\ & VCC))
-- \next_PC_in[10]~17\ = CARRY((\Program_counter|PC_1|memo\(10) & !\next_PC_in[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(10),
	datad => VCC,
	cin => \next_PC_in[9]~15\,
	combout => \next_PC_in[10]~16_combout\,
	cout => \next_PC_in[10]~17\);

-- Location: FF_X75_Y32_N21
\Program_counter|PC_1|memo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[11]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(11));

-- Location: LCCOMB_X75_Y32_N20
\next_PC_in[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[11]~18_combout\ = (\Program_counter|PC_1|memo\(11) & (!\next_PC_in[10]~17\)) # (!\Program_counter|PC_1|memo\(11) & ((\next_PC_in[10]~17\) # (GND)))
-- \next_PC_in[11]~19\ = CARRY((!\next_PC_in[10]~17\) # (!\Program_counter|PC_1|memo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(11),
	datad => VCC,
	cin => \next_PC_in[10]~17\,
	combout => \next_PC_in[11]~18_combout\,
	cout => \next_PC_in[11]~19\);

-- Location: FF_X75_Y32_N23
\Program_counter|PC_1|memo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[12]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(12));

-- Location: LCCOMB_X75_Y32_N22
\next_PC_in[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[12]~20_combout\ = (\Program_counter|PC_1|memo\(12) & (\next_PC_in[11]~19\ $ (GND))) # (!\Program_counter|PC_1|memo\(12) & (!\next_PC_in[11]~19\ & VCC))
-- \next_PC_in[12]~21\ = CARRY((\Program_counter|PC_1|memo\(12) & !\next_PC_in[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(12),
	datad => VCC,
	cin => \next_PC_in[11]~19\,
	combout => \next_PC_in[12]~20_combout\,
	cout => \next_PC_in[12]~21\);

-- Location: FF_X75_Y32_N25
\Program_counter|PC_1|memo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[13]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(13));

-- Location: LCCOMB_X75_Y32_N24
\next_PC_in[13]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[13]~22_combout\ = (\Program_counter|PC_1|memo\(13) & (!\next_PC_in[12]~21\)) # (!\Program_counter|PC_1|memo\(13) & ((\next_PC_in[12]~21\) # (GND)))
-- \next_PC_in[13]~23\ = CARRY((!\next_PC_in[12]~21\) # (!\Program_counter|PC_1|memo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(13),
	datad => VCC,
	cin => \next_PC_in[12]~21\,
	combout => \next_PC_in[13]~22_combout\,
	cout => \next_PC_in[13]~23\);

-- Location: FF_X75_Y32_N27
\Program_counter|PC_1|memo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[14]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(14));

-- Location: LCCOMB_X75_Y32_N26
\next_PC_in[14]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[14]~24_combout\ = (\Program_counter|PC_1|memo\(14) & (\next_PC_in[13]~23\ $ (GND))) # (!\Program_counter|PC_1|memo\(14) & (!\next_PC_in[13]~23\ & VCC))
-- \next_PC_in[14]~25\ = CARRY((\Program_counter|PC_1|memo\(14) & !\next_PC_in[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(14),
	datad => VCC,
	cin => \next_PC_in[13]~23\,
	combout => \next_PC_in[14]~24_combout\,
	cout => \next_PC_in[14]~25\);

-- Location: FF_X75_Y32_N29
\Program_counter|PC_1|memo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[15]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(15));

-- Location: LCCOMB_X75_Y32_N28
\next_PC_in[15]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[15]~26_combout\ = (\Program_counter|PC_1|memo\(15) & (!\next_PC_in[14]~25\)) # (!\Program_counter|PC_1|memo\(15) & ((\next_PC_in[14]~25\) # (GND)))
-- \next_PC_in[15]~27\ = CARRY((!\next_PC_in[14]~25\) # (!\Program_counter|PC_1|memo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(15),
	datad => VCC,
	cin => \next_PC_in[14]~25\,
	combout => \next_PC_in[15]~26_combout\,
	cout => \next_PC_in[15]~27\);

-- Location: FF_X75_Y32_N31
\Program_counter|PC_1|memo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[16]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(16));

-- Location: LCCOMB_X75_Y32_N30
\next_PC_in[16]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[16]~28_combout\ = (\Program_counter|PC_1|memo\(16) & (\next_PC_in[15]~27\ $ (GND))) # (!\Program_counter|PC_1|memo\(16) & (!\next_PC_in[15]~27\ & VCC))
-- \next_PC_in[16]~29\ = CARRY((\Program_counter|PC_1|memo\(16) & !\next_PC_in[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(16),
	datad => VCC,
	cin => \next_PC_in[15]~27\,
	combout => \next_PC_in[16]~28_combout\,
	cout => \next_PC_in[16]~29\);

-- Location: LCCOMB_X75_Y31_N30
\Program_counter|PC_1|memo[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Program_counter|PC_1|memo[17]~feeder_combout\ = \next_PC_in[17]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_PC_in[17]~30_combout\,
	combout => \Program_counter|PC_1|memo[17]~feeder_combout\);

-- Location: FF_X75_Y31_N31
\Program_counter|PC_1|memo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Program_counter|PC_1|memo[17]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(17));

-- Location: LCCOMB_X75_Y31_N0
\next_PC_in[17]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[17]~30_combout\ = (\Program_counter|PC_1|memo\(17) & (!\next_PC_in[16]~29\)) # (!\Program_counter|PC_1|memo\(17) & ((\next_PC_in[16]~29\) # (GND)))
-- \next_PC_in[17]~31\ = CARRY((!\next_PC_in[16]~29\) # (!\Program_counter|PC_1|memo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(17),
	datad => VCC,
	cin => \next_PC_in[16]~29\,
	combout => \next_PC_in[17]~30_combout\,
	cout => \next_PC_in[17]~31\);

-- Location: FF_X75_Y31_N3
\Program_counter|PC_1|memo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[18]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(18));

-- Location: LCCOMB_X75_Y31_N2
\next_PC_in[18]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[18]~32_combout\ = (\Program_counter|PC_1|memo\(18) & (\next_PC_in[17]~31\ $ (GND))) # (!\Program_counter|PC_1|memo\(18) & (!\next_PC_in[17]~31\ & VCC))
-- \next_PC_in[18]~33\ = CARRY((\Program_counter|PC_1|memo\(18) & !\next_PC_in[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(18),
	datad => VCC,
	cin => \next_PC_in[17]~31\,
	combout => \next_PC_in[18]~32_combout\,
	cout => \next_PC_in[18]~33\);

-- Location: FF_X75_Y31_N5
\Program_counter|PC_1|memo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[19]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(19));

-- Location: LCCOMB_X75_Y31_N4
\next_PC_in[19]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[19]~34_combout\ = (\Program_counter|PC_1|memo\(19) & (!\next_PC_in[18]~33\)) # (!\Program_counter|PC_1|memo\(19) & ((\next_PC_in[18]~33\) # (GND)))
-- \next_PC_in[19]~35\ = CARRY((!\next_PC_in[18]~33\) # (!\Program_counter|PC_1|memo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(19),
	datad => VCC,
	cin => \next_PC_in[18]~33\,
	combout => \next_PC_in[19]~34_combout\,
	cout => \next_PC_in[19]~35\);

-- Location: FF_X75_Y31_N7
\Program_counter|PC_1|memo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[20]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(20));

-- Location: LCCOMB_X75_Y31_N6
\next_PC_in[20]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[20]~36_combout\ = (\Program_counter|PC_1|memo\(20) & (\next_PC_in[19]~35\ $ (GND))) # (!\Program_counter|PC_1|memo\(20) & (!\next_PC_in[19]~35\ & VCC))
-- \next_PC_in[20]~37\ = CARRY((\Program_counter|PC_1|memo\(20) & !\next_PC_in[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(20),
	datad => VCC,
	cin => \next_PC_in[19]~35\,
	combout => \next_PC_in[20]~36_combout\,
	cout => \next_PC_in[20]~37\);

-- Location: FF_X75_Y31_N9
\Program_counter|PC_1|memo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[21]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(21));

-- Location: LCCOMB_X75_Y31_N8
\next_PC_in[21]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[21]~38_combout\ = (\Program_counter|PC_1|memo\(21) & (!\next_PC_in[20]~37\)) # (!\Program_counter|PC_1|memo\(21) & ((\next_PC_in[20]~37\) # (GND)))
-- \next_PC_in[21]~39\ = CARRY((!\next_PC_in[20]~37\) # (!\Program_counter|PC_1|memo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(21),
	datad => VCC,
	cin => \next_PC_in[20]~37\,
	combout => \next_PC_in[21]~38_combout\,
	cout => \next_PC_in[21]~39\);

-- Location: FF_X75_Y31_N11
\Program_counter|PC_1|memo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[22]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(22));

-- Location: LCCOMB_X75_Y31_N10
\next_PC_in[22]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[22]~40_combout\ = (\Program_counter|PC_1|memo\(22) & (\next_PC_in[21]~39\ $ (GND))) # (!\Program_counter|PC_1|memo\(22) & (!\next_PC_in[21]~39\ & VCC))
-- \next_PC_in[22]~41\ = CARRY((\Program_counter|PC_1|memo\(22) & !\next_PC_in[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(22),
	datad => VCC,
	cin => \next_PC_in[21]~39\,
	combout => \next_PC_in[22]~40_combout\,
	cout => \next_PC_in[22]~41\);

-- Location: FF_X75_Y31_N13
\Program_counter|PC_1|memo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[23]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(23));

-- Location: LCCOMB_X75_Y31_N12
\next_PC_in[23]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[23]~42_combout\ = (\Program_counter|PC_1|memo\(23) & (!\next_PC_in[22]~41\)) # (!\Program_counter|PC_1|memo\(23) & ((\next_PC_in[22]~41\) # (GND)))
-- \next_PC_in[23]~43\ = CARRY((!\next_PC_in[22]~41\) # (!\Program_counter|PC_1|memo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(23),
	datad => VCC,
	cin => \next_PC_in[22]~41\,
	combout => \next_PC_in[23]~42_combout\,
	cout => \next_PC_in[23]~43\);

-- Location: FF_X75_Y31_N15
\Program_counter|PC_1|memo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[24]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(24));

-- Location: LCCOMB_X75_Y31_N14
\next_PC_in[24]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[24]~44_combout\ = (\Program_counter|PC_1|memo\(24) & (\next_PC_in[23]~43\ $ (GND))) # (!\Program_counter|PC_1|memo\(24) & (!\next_PC_in[23]~43\ & VCC))
-- \next_PC_in[24]~45\ = CARRY((\Program_counter|PC_1|memo\(24) & !\next_PC_in[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(24),
	datad => VCC,
	cin => \next_PC_in[23]~43\,
	combout => \next_PC_in[24]~44_combout\,
	cout => \next_PC_in[24]~45\);

-- Location: FF_X75_Y31_N17
\Program_counter|PC_1|memo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[25]~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(25));

-- Location: LCCOMB_X75_Y31_N16
\next_PC_in[25]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[25]~46_combout\ = (\Program_counter|PC_1|memo\(25) & (!\next_PC_in[24]~45\)) # (!\Program_counter|PC_1|memo\(25) & ((\next_PC_in[24]~45\) # (GND)))
-- \next_PC_in[25]~47\ = CARRY((!\next_PC_in[24]~45\) # (!\Program_counter|PC_1|memo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(25),
	datad => VCC,
	cin => \next_PC_in[24]~45\,
	combout => \next_PC_in[25]~46_combout\,
	cout => \next_PC_in[25]~47\);

-- Location: FF_X75_Y31_N19
\Program_counter|PC_1|memo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[26]~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(26));

-- Location: LCCOMB_X75_Y31_N18
\next_PC_in[26]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[26]~48_combout\ = (\Program_counter|PC_1|memo\(26) & (\next_PC_in[25]~47\ $ (GND))) # (!\Program_counter|PC_1|memo\(26) & (!\next_PC_in[25]~47\ & VCC))
-- \next_PC_in[26]~49\ = CARRY((\Program_counter|PC_1|memo\(26) & !\next_PC_in[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(26),
	datad => VCC,
	cin => \next_PC_in[25]~47\,
	combout => \next_PC_in[26]~48_combout\,
	cout => \next_PC_in[26]~49\);

-- Location: FF_X75_Y31_N21
\Program_counter|PC_1|memo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[27]~50_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(27));

-- Location: LCCOMB_X75_Y31_N20
\next_PC_in[27]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[27]~50_combout\ = (\Program_counter|PC_1|memo\(27) & (!\next_PC_in[26]~49\)) # (!\Program_counter|PC_1|memo\(27) & ((\next_PC_in[26]~49\) # (GND)))
-- \next_PC_in[27]~51\ = CARRY((!\next_PC_in[26]~49\) # (!\Program_counter|PC_1|memo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(27),
	datad => VCC,
	cin => \next_PC_in[26]~49\,
	combout => \next_PC_in[27]~50_combout\,
	cout => \next_PC_in[27]~51\);

-- Location: FF_X75_Y31_N23
\Program_counter|PC_1|memo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[28]~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(28));

-- Location: LCCOMB_X75_Y31_N22
\next_PC_in[28]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[28]~52_combout\ = (\Program_counter|PC_1|memo\(28) & (\next_PC_in[27]~51\ $ (GND))) # (!\Program_counter|PC_1|memo\(28) & (!\next_PC_in[27]~51\ & VCC))
-- \next_PC_in[28]~53\ = CARRY((\Program_counter|PC_1|memo\(28) & !\next_PC_in[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(28),
	datad => VCC,
	cin => \next_PC_in[27]~51\,
	combout => \next_PC_in[28]~52_combout\,
	cout => \next_PC_in[28]~53\);

-- Location: FF_X75_Y31_N25
\Program_counter|PC_1|memo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[29]~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(29));

-- Location: LCCOMB_X75_Y31_N24
\next_PC_in[29]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[29]~54_combout\ = (\Program_counter|PC_1|memo\(29) & (!\next_PC_in[28]~53\)) # (!\Program_counter|PC_1|memo\(29) & ((\next_PC_in[28]~53\) # (GND)))
-- \next_PC_in[29]~55\ = CARRY((!\next_PC_in[28]~53\) # (!\Program_counter|PC_1|memo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(29),
	datad => VCC,
	cin => \next_PC_in[28]~53\,
	combout => \next_PC_in[29]~54_combout\,
	cout => \next_PC_in[29]~55\);

-- Location: FF_X75_Y31_N27
\Program_counter|PC_1|memo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[30]~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(30));

-- Location: LCCOMB_X75_Y31_N26
\next_PC_in[30]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[30]~56_combout\ = (\Program_counter|PC_1|memo\(30) & (\next_PC_in[29]~55\ $ (GND))) # (!\Program_counter|PC_1|memo\(30) & (!\next_PC_in[29]~55\ & VCC))
-- \next_PC_in[30]~57\ = CARRY((\Program_counter|PC_1|memo\(30) & !\next_PC_in[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_counter|PC_1|memo\(30),
	datad => VCC,
	cin => \next_PC_in[29]~55\,
	combout => \next_PC_in[30]~56_combout\,
	cout => \next_PC_in[30]~57\);

-- Location: FF_X75_Y31_N29
\Program_counter|PC_1|memo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[31]~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.ECRITURE_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(31));

-- Location: LCCOMB_X75_Y31_N28
\next_PC_in[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_PC_in[31]~58_combout\ = \next_PC_in[30]~57\ $ (\Program_counter|PC_1|memo\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Program_counter|PC_1|memo\(31),
	cin => \next_PC_in[30]~57\,
	combout => \next_PC_in[31]~58_combout\);

-- Location: IOIBUF_X78_Y45_N8
\prog_addr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_prog_addr(0),
	o => \prog_addr[0]~input_o\);

-- Location: LCCOMB_X75_Y32_N0
\addr_mem[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_mem[0]~1_combout\ = (\sequenceur|etat.CHARGEMENT_PGR~q\ & ((\Program_counter|PC_1|memo\(2)))) # (!\sequenceur|etat.CHARGEMENT_PGR~q\ & (\prog_addr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_addr[0]~input_o\,
	datab => \Program_counter|PC_1|memo\(2),
	datad => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \addr_mem[0]~1_combout\);

-- Location: IOIBUF_X78_Y42_N8
\instruction_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(0),
	o => \instruction_in[0]~input_o\);

-- Location: LCCOMB_X74_Y36_N30
\Instruction_memory|memo~453feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~453feeder_combout\ = \instruction_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[0]~input_o\,
	combout => \Instruction_memory|memo~453feeder_combout\);

-- Location: IOIBUF_X78_Y21_N15
\pgr_valid~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pgr_valid,
	o => \pgr_valid~input_o\);

-- Location: IOIBUF_X78_Y18_N22
\prog_addr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_prog_addr(1),
	o => \prog_addr[1]~input_o\);

-- Location: LCCOMB_X74_Y32_N0
\addr_mem[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_mem[1]~0_combout\ = (\sequenceur|etat.CHARGEMENT_PGR~q\ & ((\Program_counter|PC_1|memo\(3)))) # (!\sequenceur|etat.CHARGEMENT_PGR~q\ & (\prog_addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_addr[1]~input_o\,
	datac => \sequenceur|etat.CHARGEMENT_PGR~q\,
	datad => \Program_counter|PC_1|memo\(3),
	combout => \addr_mem[1]~0_combout\);

-- Location: IOIBUF_X78_Y17_N22
\prog_addr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_prog_addr(2),
	o => \prog_addr[2]~input_o\);

-- Location: LCCOMB_X74_Y32_N28
\addr_mem[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_mem[2]~3_combout\ = (\sequenceur|etat.CHARGEMENT_PGR~q\ & ((\Program_counter|PC_1|memo\(4)))) # (!\sequenceur|etat.CHARGEMENT_PGR~q\ & (\prog_addr[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_addr[2]~input_o\,
	datac => \sequenceur|etat.CHARGEMENT_PGR~q\,
	datad => \Program_counter|PC_1|memo\(4),
	combout => \addr_mem[2]~3_combout\);

-- Location: IOIBUF_X69_Y0_N15
\prog_addr[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_prog_addr(3),
	o => \prog_addr[3]~input_o\);

-- Location: LCCOMB_X74_Y32_N22
\addr_mem[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_mem[3]~2_combout\ = (\sequenceur|etat.CHARGEMENT_PGR~q\ & ((\Program_counter|PC_1|memo\(5)))) # (!\sequenceur|etat.CHARGEMENT_PGR~q\ & (\prog_addr[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prog_addr[3]~input_o\,
	datac => \Program_counter|PC_1|memo\(5),
	datad => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \addr_mem[3]~2_combout\);

-- Location: LCCOMB_X72_Y32_N16
\Instruction_memory|memo~893\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~893_combout\ = (!\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\ & (\addr_mem[2]~3_combout\ & \addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[2]~3_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~893_combout\);

-- Location: LCCOMB_X72_Y32_N14
\Instruction_memory|memo~894\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~894_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & \Instruction_memory|memo~893_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \Instruction_memory|memo~870_combout\,
	datad => \Instruction_memory|memo~893_combout\,
	combout => \Instruction_memory|memo~894_combout\);

-- Location: FF_X74_Y36_N31
\Instruction_memory|memo~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~453feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~453_q\);

-- Location: LCCOMB_X72_Y32_N24
\Instruction_memory|memo~899\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~899_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\ & (\addr_mem[2]~3_combout\ & \addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[2]~3_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~899_combout\);

-- Location: LCCOMB_X72_Y32_N6
\Instruction_memory|memo~900\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~900_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & \Instruction_memory|memo~899_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \Instruction_memory|memo~870_combout\,
	datad => \Instruction_memory|memo~899_combout\,
	combout => \Instruction_memory|memo~900_combout\);

-- Location: FF_X71_Y35_N9
\Instruction_memory|memo~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~517_q\);

-- Location: LCCOMB_X71_Y36_N18
\Instruction_memory|memo~485feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~485feeder_combout\ = \instruction_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[0]~input_o\,
	combout => \Instruction_memory|memo~485feeder_combout\);

-- Location: LCCOMB_X72_Y32_N28
\Instruction_memory|memo~895\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~895_combout\ = (\addr_mem[1]~0_combout\ & (!\addr_mem[0]~1_combout\ & (\addr_mem[2]~3_combout\ & \addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[2]~3_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~895_combout\);

-- Location: LCCOMB_X72_Y32_N30
\Instruction_memory|memo~896\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~896_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & \Instruction_memory|memo~895_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \Instruction_memory|memo~870_combout\,
	datad => \Instruction_memory|memo~895_combout\,
	combout => \Instruction_memory|memo~896_combout\);

-- Location: FF_X71_Y36_N19
\Instruction_memory|memo~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~485feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~485_q\);

-- Location: LCCOMB_X71_Y32_N12
\Instruction_memory|memo~897\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~897_combout\ = (!\addr_mem[1]~0_combout\ & (!\addr_mem[0]~1_combout\ & (\addr_mem[3]~2_combout\ & \addr_mem[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[3]~2_combout\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~897_combout\);

-- Location: LCCOMB_X71_Y32_N14
\Instruction_memory|memo~898\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~898_combout\ = (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & (!\reset~input_o\ & \Instruction_memory|memo~897_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgr_valid~input_o\,
	datab => \Instruction_memory|memo~870_combout\,
	datac => \reset~input_o\,
	datad => \Instruction_memory|memo~897_combout\,
	combout => \Instruction_memory|memo~898_combout\);

-- Location: FF_X70_Y35_N9
\Instruction_memory|memo~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~421_q\);

-- Location: LCCOMB_X70_Y35_N8
\Instruction_memory|memo~556\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~556_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~485_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~421_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~485_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~421_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~556_combout\);

-- Location: LCCOMB_X71_Y35_N8
\Instruction_memory|memo~557\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~557_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~556_combout\ & ((\Instruction_memory|memo~517_q\))) # (!\Instruction_memory|memo~556_combout\ & (\Instruction_memory|memo~453_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~556_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~453_q\,
	datac => \Instruction_memory|memo~517_q\,
	datad => \Instruction_memory|memo~556_combout\,
	combout => \Instruction_memory|memo~557_combout\);

-- Location: LCCOMB_X75_Y33_N24
\Instruction_memory|memo~197feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~197feeder_combout\ = \instruction_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[0]~input_o\,
	combout => \Instruction_memory|memo~197feeder_combout\);

-- Location: LCCOMB_X72_Y32_N18
\Instruction_memory|memo~878\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~878_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & !\addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \Instruction_memory|memo~870_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~878_combout\);

-- Location: LCCOMB_X72_Y32_N12
\Instruction_memory|memo~879\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~879_combout\ = (!\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\ & (\addr_mem[2]~3_combout\ & \Instruction_memory|memo~878_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[2]~3_combout\,
	datad => \Instruction_memory|memo~878_combout\,
	combout => \Instruction_memory|memo~879_combout\);

-- Location: FF_X75_Y33_N25
\Instruction_memory|memo~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~197feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~197_q\);

-- Location: LCCOMB_X71_Y32_N6
\Instruction_memory|memo~884\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~884_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\ & (!\addr_mem[3]~2_combout\ & \addr_mem[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[3]~2_combout\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~884_combout\);

-- Location: LCCOMB_X71_Y32_N16
\Instruction_memory|memo~885\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~885_combout\ = (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & (!\reset~input_o\ & \Instruction_memory|memo~884_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgr_valid~input_o\,
	datab => \Instruction_memory|memo~870_combout\,
	datac => \reset~input_o\,
	datad => \Instruction_memory|memo~884_combout\,
	combout => \Instruction_memory|memo~885_combout\);

-- Location: FF_X74_Y33_N23
\Instruction_memory|memo~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~261_q\);

-- Location: LCCOMB_X75_Y34_N24
\Instruction_memory|memo~229feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~229feeder_combout\ = \instruction_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[0]~input_o\,
	combout => \Instruction_memory|memo~229feeder_combout\);

-- Location: LCCOMB_X71_Y32_N30
\Instruction_memory|memo~880\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~880_combout\ = (\addr_mem[1]~0_combout\ & (!\addr_mem[0]~1_combout\ & (!\addr_mem[3]~2_combout\ & \addr_mem[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[3]~2_combout\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~880_combout\);

-- Location: LCCOMB_X71_Y32_N0
\Instruction_memory|memo~881\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~881_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (\Instruction_memory|memo~880_combout\ & !\Instruction_memory|memo~870_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \Instruction_memory|memo~880_combout\,
	datad => \Instruction_memory|memo~870_combout\,
	combout => \Instruction_memory|memo~881_combout\);

-- Location: FF_X75_Y34_N25
\Instruction_memory|memo~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~229feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~229_q\);

-- Location: LCCOMB_X71_Y32_N2
\Instruction_memory|memo~882\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~882_combout\ = (!\addr_mem[1]~0_combout\ & (!\addr_mem[0]~1_combout\ & (!\addr_mem[3]~2_combout\ & \addr_mem[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[3]~2_combout\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~882_combout\);

-- Location: LCCOMB_X71_Y32_N8
\Instruction_memory|memo~883\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~883_combout\ = (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & (!\reset~input_o\ & \Instruction_memory|memo~882_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgr_valid~input_o\,
	datab => \Instruction_memory|memo~870_combout\,
	datac => \reset~input_o\,
	datad => \Instruction_memory|memo~882_combout\,
	combout => \Instruction_memory|memo~883_combout\);

-- Location: FF_X74_Y33_N21
\Instruction_memory|memo~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~165_q\);

-- Location: LCCOMB_X74_Y33_N20
\Instruction_memory|memo~551\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~551_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~229_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~165_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~229_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~165_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~551_combout\);

-- Location: LCCOMB_X74_Y33_N22
\Instruction_memory|memo~552\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~552_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~551_combout\ & ((\Instruction_memory|memo~261_q\))) # (!\Instruction_memory|memo~551_combout\ & (\Instruction_memory|memo~197_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~197_q\,
	datac => \Instruction_memory|memo~261_q\,
	datad => \Instruction_memory|memo~551_combout\,
	combout => \Instruction_memory|memo~552_combout\);

-- Location: LCCOMB_X71_Y36_N24
\Instruction_memory|memo~101feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~101feeder_combout\ = \instruction_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[0]~input_o\,
	combout => \Instruction_memory|memo~101feeder_combout\);

-- Location: LCCOMB_X71_Y32_N10
\Instruction_memory|memo~886\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~886_combout\ = (\addr_mem[1]~0_combout\ & (!\addr_mem[0]~1_combout\ & (!\addr_mem[3]~2_combout\ & !\addr_mem[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[3]~2_combout\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~886_combout\);

-- Location: LCCOMB_X71_Y32_N4
\Instruction_memory|memo~887\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~887_combout\ = (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & (!\reset~input_o\ & \Instruction_memory|memo~886_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgr_valid~input_o\,
	datab => \Instruction_memory|memo~870_combout\,
	datac => \reset~input_o\,
	datad => \Instruction_memory|memo~886_combout\,
	combout => \Instruction_memory|memo~887_combout\);

-- Location: FF_X71_Y36_N25
\Instruction_memory|memo~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~101feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~101_q\);

-- Location: LCCOMB_X71_Y33_N2
\Instruction_memory|memo~888\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~888_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (!\addr_mem[2]~3_combout\ & !\addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \addr_mem[2]~3_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~888_combout\);

-- Location: LCCOMB_X71_Y33_N10
\Instruction_memory|memo~892\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~892_combout\ = (\addr_mem[0]~1_combout\ & (\addr_mem[1]~0_combout\ & (!\Instruction_memory|memo~870_combout\ & \Instruction_memory|memo~888_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~870_combout\,
	datad => \Instruction_memory|memo~888_combout\,
	combout => \Instruction_memory|memo~892_combout\);

-- Location: FF_X72_Y33_N27
\Instruction_memory|memo~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~133_q\);

-- Location: LCCOMB_X71_Y33_N0
\Instruction_memory|memo~889\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~889_combout\ = (\addr_mem[0]~1_combout\ & (!\addr_mem[1]~0_combout\ & (!\Instruction_memory|memo~870_combout\ & \Instruction_memory|memo~888_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~870_combout\,
	datad => \Instruction_memory|memo~888_combout\,
	combout => \Instruction_memory|memo~889_combout\);

-- Location: FF_X67_Y33_N9
\Instruction_memory|memo~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~69_q\);

-- Location: LCCOMB_X72_Y32_N22
\Instruction_memory|memo~890\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~890_combout\ = (!\addr_mem[1]~0_combout\ & (!\addr_mem[2]~3_combout\ & (!\addr_mem[0]~1_combout\ & !\addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \addr_mem[0]~1_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~890_combout\);

-- Location: LCCOMB_X71_Y32_N22
\Instruction_memory|memo~891\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~891_combout\ = (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & (!\reset~input_o\ & \Instruction_memory|memo~890_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgr_valid~input_o\,
	datab => \Instruction_memory|memo~870_combout\,
	datac => \reset~input_o\,
	datad => \Instruction_memory|memo~890_combout\,
	combout => \Instruction_memory|memo~891_combout\);

-- Location: FF_X72_Y33_N21
\Instruction_memory|memo~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~37_q\);

-- Location: LCCOMB_X72_Y33_N20
\Instruction_memory|memo~553\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~553_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~69_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~37_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~69_q\,
	datac => \Instruction_memory|memo~37_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~553_combout\);

-- Location: LCCOMB_X72_Y33_N26
\Instruction_memory|memo~554\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~554_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~553_combout\ & ((\Instruction_memory|memo~133_q\))) # (!\Instruction_memory|memo~553_combout\ & (\Instruction_memory|memo~101_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~553_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~101_q\,
	datac => \Instruction_memory|memo~133_q\,
	datad => \Instruction_memory|memo~553_combout\,
	combout => \Instruction_memory|memo~554_combout\);

-- Location: LCCOMB_X71_Y33_N4
\Instruction_memory|memo~555\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~555_combout\ = (\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\) # ((\Instruction_memory|memo~552_combout\)))) # (!\addr_mem[2]~3_combout\ & (!\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~552_combout\,
	datad => \Instruction_memory|memo~554_combout\,
	combout => \Instruction_memory|memo~555_combout\);

-- Location: LCCOMB_X71_Y32_N18
\Instruction_memory|memo~876\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~876_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\ & (\addr_mem[3]~2_combout\ & !\addr_mem[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[3]~2_combout\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~876_combout\);

-- Location: LCCOMB_X71_Y32_N24
\Instruction_memory|memo~877\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~877_combout\ = (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & (!\reset~input_o\ & \Instruction_memory|memo~876_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pgr_valid~input_o\,
	datab => \Instruction_memory|memo~870_combout\,
	datac => \reset~input_o\,
	datad => \Instruction_memory|memo~876_combout\,
	combout => \Instruction_memory|memo~877_combout\);

-- Location: FF_X75_Y36_N7
\Instruction_memory|memo~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~389_q\);

-- Location: LCCOMB_X72_Y32_N10
\Instruction_memory|memo~869\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~869_combout\ = (\addr_mem[1]~0_combout\ & (!\addr_mem[0]~1_combout\ & (!\addr_mem[2]~3_combout\ & \addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[2]~3_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~869_combout\);

-- Location: LCCOMB_X72_Y32_N20
\Instruction_memory|memo~871\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~871_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & \Instruction_memory|memo~869_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \Instruction_memory|memo~870_combout\,
	datad => \Instruction_memory|memo~869_combout\,
	combout => \Instruction_memory|memo~871_combout\);

-- Location: FF_X72_Y36_N5
\Instruction_memory|memo~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~357_q\);

-- Location: LCCOMB_X74_Y36_N24
\Instruction_memory|memo~325feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~325feeder_combout\ = \instruction_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[0]~input_o\,
	combout => \Instruction_memory|memo~325feeder_combout\);

-- Location: LCCOMB_X72_Y32_N26
\Instruction_memory|memo~872\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~872_combout\ = (!\addr_mem[2]~3_combout\ & (\addr_mem[0]~1_combout\ & (!\addr_mem[1]~0_combout\ & \addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[1]~0_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~872_combout\);

-- Location: LCCOMB_X72_Y32_N8
\Instruction_memory|memo~873\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~873_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (\Instruction_memory|memo~872_combout\ & !\Instruction_memory|memo~870_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \Instruction_memory|memo~872_combout\,
	datad => \Instruction_memory|memo~870_combout\,
	combout => \Instruction_memory|memo~873_combout\);

-- Location: FF_X74_Y36_N25
\Instruction_memory|memo~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~325feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~325_q\);

-- Location: LCCOMB_X72_Y32_N2
\Instruction_memory|memo~874\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~874_combout\ = (!\addr_mem[1]~0_combout\ & (!\addr_mem[0]~1_combout\ & (!\addr_mem[2]~3_combout\ & \addr_mem[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \addr_mem[2]~3_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~874_combout\);

-- Location: LCCOMB_X72_Y32_N0
\Instruction_memory|memo~875\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~875_combout\ = (!\reset~input_o\ & (\pgr_valid~input_o\ & (!\Instruction_memory|memo~870_combout\ & \Instruction_memory|memo~874_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pgr_valid~input_o\,
	datac => \Instruction_memory|memo~870_combout\,
	datad => \Instruction_memory|memo~874_combout\,
	combout => \Instruction_memory|memo~875_combout\);

-- Location: FF_X75_Y36_N29
\Instruction_memory|memo~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[0]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~293_q\);

-- Location: LCCOMB_X75_Y36_N28
\Instruction_memory|memo~549\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~549_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~325_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~293_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~325_q\,
	datac => \Instruction_memory|memo~293_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~549_combout\);

-- Location: LCCOMB_X72_Y36_N4
\Instruction_memory|memo~550\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~550_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~549_combout\ & (\Instruction_memory|memo~389_q\)) # (!\Instruction_memory|memo~549_combout\ & ((\Instruction_memory|memo~357_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~389_q\,
	datac => \Instruction_memory|memo~357_q\,
	datad => \Instruction_memory|memo~549_combout\,
	combout => \Instruction_memory|memo~550_combout\);

-- Location: LCCOMB_X71_Y33_N28
\Instruction_memory|memo~558\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~558_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~555_combout\ & (\Instruction_memory|memo~557_combout\)) # (!\Instruction_memory|memo~555_combout\ & ((\Instruction_memory|memo~550_combout\))))) # 
-- (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~557_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~555_combout\,
	datad => \Instruction_memory|memo~550_combout\,
	combout => \Instruction_memory|memo~558_combout\);

-- Location: FF_X71_Y33_N29
\Instruction_register|Instruc_R|memo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~558_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(0));

-- Location: IOIBUF_X58_Y54_N8
\instruction_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(1),
	o => \instruction_in[1]~input_o\);

-- Location: FF_X67_Y32_N13
\Instruction_memory|memo~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~230_q\);

-- Location: LCCOMB_X67_Y36_N20
\Instruction_memory|memo~486feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~486feeder_combout\ = \instruction_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[1]~input_o\,
	combout => \Instruction_memory|memo~486feeder_combout\);

-- Location: FF_X67_Y36_N21
\Instruction_memory|memo~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~486feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~486_q\);

-- Location: FF_X66_Y32_N29
\Instruction_memory|memo~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~102_q\);

-- Location: LCCOMB_X72_Y36_N22
\Instruction_memory|memo~358feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~358feeder_combout\ = \instruction_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[1]~input_o\,
	combout => \Instruction_memory|memo~358feeder_combout\);

-- Location: FF_X72_Y36_N23
\Instruction_memory|memo~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~358feeder_combout\,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~358_q\);

-- Location: LCCOMB_X66_Y32_N28
\Instruction_memory|memo~559\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~559_combout\ = (\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\) # ((\Instruction_memory|memo~358_q\)))) # (!\addr_mem[3]~2_combout\ & (!\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~102_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~102_q\,
	datad => \Instruction_memory|memo~358_q\,
	combout => \Instruction_memory|memo~559_combout\);

-- Location: LCCOMB_X66_Y32_N6
\Instruction_memory|memo~560\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~560_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~559_combout\ & ((\Instruction_memory|memo~486_q\))) # (!\Instruction_memory|memo~559_combout\ & (\Instruction_memory|memo~230_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~559_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~230_q\,
	datac => \Instruction_memory|memo~486_q\,
	datad => \Instruction_memory|memo~559_combout\,
	combout => \Instruction_memory|memo~560_combout\);

-- Location: LCCOMB_X72_Y31_N22
\Instruction_memory|memo~390feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~390feeder_combout\ = \instruction_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[1]~input_o\,
	combout => \Instruction_memory|memo~390feeder_combout\);

-- Location: FF_X72_Y31_N23
\Instruction_memory|memo~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~390feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~390_q\);

-- Location: FF_X71_Y35_N15
\Instruction_memory|memo~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~518_q\);

-- Location: FF_X70_Y31_N1
\Instruction_memory|memo~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~262_q\);

-- Location: FF_X72_Y32_N5
\Instruction_memory|memo~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~134_q\);

-- Location: LCCOMB_X72_Y32_N4
\Instruction_memory|memo~566\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~566_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~262_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~134_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~262_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~134_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~566_combout\);

-- Location: LCCOMB_X71_Y35_N14
\Instruction_memory|memo~567\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~567_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~566_combout\ & ((\Instruction_memory|memo~518_q\))) # (!\Instruction_memory|memo~566_combout\ & (\Instruction_memory|memo~390_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~566_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~390_q\,
	datac => \Instruction_memory|memo~518_q\,
	datad => \Instruction_memory|memo~566_combout\,
	combout => \Instruction_memory|memo~567_combout\);

-- Location: LCCOMB_X72_Y31_N20
\Instruction_memory|memo~166feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~166feeder_combout\ = \instruction_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[1]~input_o\,
	combout => \Instruction_memory|memo~166feeder_combout\);

-- Location: FF_X72_Y31_N21
\Instruction_memory|memo~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~166feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~166_q\);

-- Location: FF_X71_Y32_N27
\Instruction_memory|memo~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~422_q\);

-- Location: FF_X71_Y34_N1
\Instruction_memory|memo~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~38_q\);

-- Location: LCCOMB_X72_Y37_N24
\Instruction_memory|memo~294feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~294feeder_combout\ = \instruction_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[1]~input_o\,
	combout => \Instruction_memory|memo~294feeder_combout\);

-- Location: FF_X72_Y37_N25
\Instruction_memory|memo~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~294feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~294_q\);

-- Location: LCCOMB_X71_Y34_N0
\Instruction_memory|memo~563\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~563_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~294_q\))) # (!\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~38_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~38_q\,
	datad => \Instruction_memory|memo~294_q\,
	combout => \Instruction_memory|memo~563_combout\);

-- Location: LCCOMB_X71_Y32_N26
\Instruction_memory|memo~564\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~564_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~563_combout\ & ((\Instruction_memory|memo~422_q\))) # (!\Instruction_memory|memo~563_combout\ & (\Instruction_memory|memo~166_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~563_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~166_q\,
	datac => \Instruction_memory|memo~422_q\,
	datad => \Instruction_memory|memo~563_combout\,
	combout => \Instruction_memory|memo~564_combout\);

-- Location: LCCOMB_X75_Y34_N6
\Instruction_memory|memo~326feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~326feeder_combout\ = \instruction_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[1]~input_o\,
	combout => \Instruction_memory|memo~326feeder_combout\);

-- Location: FF_X75_Y34_N7
\Instruction_memory|memo~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~326feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~326_q\);

-- Location: FF_X69_Y32_N11
\Instruction_memory|memo~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~454_q\);

-- Location: FF_X67_Y32_N19
\Instruction_memory|memo~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~198_q\);

-- Location: FF_X69_Y32_N29
\Instruction_memory|memo~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[1]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~70_q\);

-- Location: LCCOMB_X69_Y32_N28
\Instruction_memory|memo~561\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~561_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~198_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~70_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~198_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~70_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~561_combout\);

-- Location: LCCOMB_X69_Y32_N10
\Instruction_memory|memo~562\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~562_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~561_combout\ & ((\Instruction_memory|memo~454_q\))) # (!\Instruction_memory|memo~561_combout\ & (\Instruction_memory|memo~326_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~561_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~326_q\,
	datac => \Instruction_memory|memo~454_q\,
	datad => \Instruction_memory|memo~561_combout\,
	combout => \Instruction_memory|memo~562_combout\);

-- Location: LCCOMB_X71_Y32_N28
\Instruction_memory|memo~565\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~565_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\)) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~562_combout\))) # (!\addr_mem[0]~1_combout\ & 
-- (\Instruction_memory|memo~564_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~564_combout\,
	datad => \Instruction_memory|memo~562_combout\,
	combout => \Instruction_memory|memo~565_combout\);

-- Location: LCCOMB_X71_Y32_N20
\Instruction_memory|memo~568\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~568_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~565_combout\ & ((\Instruction_memory|memo~567_combout\))) # (!\Instruction_memory|memo~565_combout\ & (\Instruction_memory|memo~560_combout\)))) # 
-- (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~565_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~560_combout\,
	datac => \Instruction_memory|memo~567_combout\,
	datad => \Instruction_memory|memo~565_combout\,
	combout => \Instruction_memory|memo~568_combout\);

-- Location: FF_X71_Y32_N21
\Instruction_register|Instruc_R|memo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~568_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(1));

-- Location: IOIBUF_X78_Y37_N22
\instruction_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(2),
	o => \instruction_in[2]~input_o\);

-- Location: FF_X76_Y33_N23
\Instruction_memory|memo~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~263_q\);

-- Location: FF_X75_Y33_N11
\Instruction_memory|memo~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~231_q\);

-- Location: FF_X75_Y33_N17
\Instruction_memory|memo~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~199_q\);

-- Location: FF_X76_Y33_N25
\Instruction_memory|memo~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~167_q\);

-- Location: LCCOMB_X76_Y33_N24
\Instruction_memory|memo~569\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~569_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~199_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~167_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~199_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~167_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~569_combout\);

-- Location: LCCOMB_X75_Y33_N10
\Instruction_memory|memo~570\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~570_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~569_combout\ & (\Instruction_memory|memo~263_q\)) # (!\Instruction_memory|memo~569_combout\ & ((\Instruction_memory|memo~231_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~569_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~263_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~231_q\,
	datad => \Instruction_memory|memo~569_combout\,
	combout => \Instruction_memory|memo~570_combout\);

-- Location: FF_X71_Y36_N3
\Instruction_memory|memo~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~487_q\);

-- Location: FF_X72_Y34_N31
\Instruction_memory|memo~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~519_q\);

-- Location: LCCOMB_X74_Y36_N10
\Instruction_memory|memo~455feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~455feeder_combout\ = \instruction_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[2]~input_o\,
	combout => \Instruction_memory|memo~455feeder_combout\);

-- Location: FF_X74_Y36_N11
\Instruction_memory|memo~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~455feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~455_q\);

-- Location: FF_X71_Y34_N23
\Instruction_memory|memo~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~423_q\);

-- Location: LCCOMB_X71_Y34_N22
\Instruction_memory|memo~576\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~576_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~455_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~423_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~455_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~423_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~576_combout\);

-- Location: LCCOMB_X72_Y34_N30
\Instruction_memory|memo~577\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~577_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~576_combout\ & ((\Instruction_memory|memo~519_q\))) # (!\Instruction_memory|memo~576_combout\ & (\Instruction_memory|memo~487_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~576_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~487_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~519_q\,
	datad => \Instruction_memory|memo~576_combout\,
	combout => \Instruction_memory|memo~577_combout\);

-- Location: LCCOMB_X71_Y37_N20
\Instruction_memory|memo~71feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~71feeder_combout\ = \instruction_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[2]~input_o\,
	combout => \Instruction_memory|memo~71feeder_combout\);

-- Location: FF_X71_Y37_N21
\Instruction_memory|memo~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~71feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~71_q\);

-- Location: FF_X71_Y33_N31
\Instruction_memory|memo~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~135_q\);

-- Location: FF_X71_Y36_N5
\Instruction_memory|memo~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~103_q\);

-- Location: FF_X72_Y33_N29
\Instruction_memory|memo~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~39_q\);

-- Location: LCCOMB_X72_Y33_N28
\Instruction_memory|memo~573\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~573_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~103_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~39_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~103_q\,
	datac => \Instruction_memory|memo~39_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~573_combout\);

-- Location: LCCOMB_X71_Y33_N30
\Instruction_memory|memo~574\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~574_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~573_combout\ & ((\Instruction_memory|memo~135_q\))) # (!\Instruction_memory|memo~573_combout\ & (\Instruction_memory|memo~71_q\)))) # (!\addr_mem[0]~1_combout\ & 
-- (((\Instruction_memory|memo~573_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~71_q\,
	datac => \Instruction_memory|memo~135_q\,
	datad => \Instruction_memory|memo~573_combout\,
	combout => \Instruction_memory|memo~574_combout\);

-- Location: LCCOMB_X74_Y36_N16
\Instruction_memory|memo~327feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~327feeder_combout\ = \instruction_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[2]~input_o\,
	combout => \Instruction_memory|memo~327feeder_combout\);

-- Location: FF_X74_Y36_N17
\Instruction_memory|memo~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~327feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~327_q\);

-- Location: FF_X75_Y36_N19
\Instruction_memory|memo~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~391_q\);

-- Location: FF_X76_Y35_N9
\Instruction_memory|memo~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~359_q\);

-- Location: FF_X75_Y36_N1
\Instruction_memory|memo~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[2]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~295_q\);

-- Location: LCCOMB_X75_Y36_N0
\Instruction_memory|memo~571\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~571_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~359_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~295_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~359_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~295_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~571_combout\);

-- Location: LCCOMB_X75_Y36_N18
\Instruction_memory|memo~572\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~572_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~571_combout\ & ((\Instruction_memory|memo~391_q\))) # (!\Instruction_memory|memo~571_combout\ & (\Instruction_memory|memo~327_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~571_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~327_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~391_q\,
	datad => \Instruction_memory|memo~571_combout\,
	combout => \Instruction_memory|memo~572_combout\);

-- Location: LCCOMB_X71_Y33_N24
\Instruction_memory|memo~575\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~575_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~572_combout\))) # (!\addr_mem[3]~2_combout\ & 
-- (\Instruction_memory|memo~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~574_combout\,
	datad => \Instruction_memory|memo~572_combout\,
	combout => \Instruction_memory|memo~575_combout\);

-- Location: LCCOMB_X71_Y33_N18
\Instruction_memory|memo~578\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~578_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~575_combout\ & ((\Instruction_memory|memo~577_combout\))) # (!\Instruction_memory|memo~575_combout\ & (\Instruction_memory|memo~570_combout\)))) # 
-- (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~575_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~570_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~577_combout\,
	datad => \Instruction_memory|memo~575_combout\,
	combout => \Instruction_memory|memo~578_combout\);

-- Location: FF_X71_Y33_N19
\Instruction_register|Instruc_R|memo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~578_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(2));

-- Location: IOIBUF_X78_Y37_N8
\instruction_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(3),
	o => \instruction_in[3]~input_o\);

-- Location: LCCOMB_X70_Y31_N22
\Instruction_memory|memo~328feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~328feeder_combout\ = \instruction_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[3]~input_o\,
	combout => \Instruction_memory|memo~328feeder_combout\);

-- Location: FF_X70_Y31_N23
\Instruction_memory|memo~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~328feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~328_q\);

-- Location: FF_X69_Y32_N9
\Instruction_memory|memo~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~72_q\);

-- Location: LCCOMB_X69_Y32_N8
\Instruction_memory|memo~579\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~579_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~328_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~72_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~328_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~72_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~579_combout\);

-- Location: FF_X69_Y32_N15
\Instruction_memory|memo~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~456_q\);

-- Location: FF_X67_Y32_N29
\Instruction_memory|memo~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~200_q\);

-- Location: LCCOMB_X69_Y32_N14
\Instruction_memory|memo~580\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~580_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~579_combout\ & (\Instruction_memory|memo~456_q\)) # (!\Instruction_memory|memo~579_combout\ & ((\Instruction_memory|memo~200_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (\Instruction_memory|memo~579_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~579_combout\,
	datac => \Instruction_memory|memo~456_q\,
	datad => \Instruction_memory|memo~200_q\,
	combout => \Instruction_memory|memo~580_combout\);

-- Location: LCCOMB_X70_Y31_N12
\Instruction_memory|memo~264feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~264feeder_combout\ = \instruction_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[3]~input_o\,
	combout => \Instruction_memory|memo~264feeder_combout\);

-- Location: FF_X70_Y31_N13
\Instruction_memory|memo~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~264feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~264_q\);

-- Location: FF_X70_Y33_N5
\Instruction_memory|memo~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~520_q\);

-- Location: LCCOMB_X71_Y31_N4
\Instruction_memory|memo~392feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~392feeder_combout\ = \instruction_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[3]~input_o\,
	combout => \Instruction_memory|memo~392feeder_combout\);

-- Location: FF_X71_Y31_N5
\Instruction_memory|memo~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~392feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~392_q\);

-- Location: FF_X71_Y33_N23
\Instruction_memory|memo~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~136_q\);

-- Location: LCCOMB_X71_Y33_N22
\Instruction_memory|memo~586\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~586_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~392_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~136_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~392_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~136_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~586_combout\);

-- Location: LCCOMB_X70_Y33_N4
\Instruction_memory|memo~587\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~587_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~586_combout\ & ((\Instruction_memory|memo~520_q\))) # (!\Instruction_memory|memo~586_combout\ & (\Instruction_memory|memo~264_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~586_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~264_q\,
	datac => \Instruction_memory|memo~520_q\,
	datad => \Instruction_memory|memo~586_combout\,
	combout => \Instruction_memory|memo~587_combout\);

-- Location: LCCOMB_X72_Y37_N22
\Instruction_memory|memo~296feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~296feeder_combout\ = \instruction_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[3]~input_o\,
	combout => \Instruction_memory|memo~296feeder_combout\);

-- Location: FF_X72_Y37_N23
\Instruction_memory|memo~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~296feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~296_q\);

-- Location: FF_X69_Y34_N17
\Instruction_memory|memo~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~424_q\);

-- Location: FF_X67_Y34_N13
\Instruction_memory|memo~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~168_q\);

-- Location: FF_X71_Y34_N9
\Instruction_memory|memo~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~40_q\);

-- Location: LCCOMB_X71_Y34_N8
\Instruction_memory|memo~583\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~583_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~168_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~40_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~168_q\,
	datac => \Instruction_memory|memo~40_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~583_combout\);

-- Location: LCCOMB_X69_Y34_N16
\Instruction_memory|memo~584\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~584_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~583_combout\ & ((\Instruction_memory|memo~424_q\))) # (!\Instruction_memory|memo~583_combout\ & (\Instruction_memory|memo~296_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~296_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~424_q\,
	datad => \Instruction_memory|memo~583_combout\,
	combout => \Instruction_memory|memo~584_combout\);

-- Location: LCCOMB_X71_Y37_N30
\Instruction_memory|memo~360feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~360feeder_combout\ = \instruction_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[3]~input_o\,
	combout => \Instruction_memory|memo~360feeder_combout\);

-- Location: FF_X71_Y37_N31
\Instruction_memory|memo~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~360feeder_combout\,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~360_q\);

-- Location: FF_X67_Y36_N25
\Instruction_memory|memo~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~488_q\);

-- Location: FF_X67_Y32_N23
\Instruction_memory|memo~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~232_q\);

-- Location: FF_X67_Y36_N3
\Instruction_memory|memo~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[3]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~104_q\);

-- Location: LCCOMB_X67_Y36_N2
\Instruction_memory|memo~581\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~581_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~232_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~104_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~232_q\,
	datac => \Instruction_memory|memo~104_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~581_combout\);

-- Location: LCCOMB_X67_Y36_N24
\Instruction_memory|memo~582\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~582_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~581_combout\ & ((\Instruction_memory|memo~488_q\))) # (!\Instruction_memory|memo~581_combout\ & (\Instruction_memory|memo~360_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~360_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~488_q\,
	datad => \Instruction_memory|memo~581_combout\,
	combout => \Instruction_memory|memo~582_combout\);

-- Location: LCCOMB_X69_Y34_N2
\Instruction_memory|memo~585\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~585_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~582_combout\))) # (!\addr_mem[1]~0_combout\ & 
-- (\Instruction_memory|memo~584_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~584_combout\,
	datac => \addr_mem[1]~0_combout\,
	datad => \Instruction_memory|memo~582_combout\,
	combout => \Instruction_memory|memo~585_combout\);

-- Location: LCCOMB_X69_Y34_N12
\Instruction_memory|memo~588\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~588_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~585_combout\ & ((\Instruction_memory|memo~587_combout\))) # (!\Instruction_memory|memo~585_combout\ & (\Instruction_memory|memo~580_combout\)))) # 
-- (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~585_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~580_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~587_combout\,
	datad => \Instruction_memory|memo~585_combout\,
	combout => \Instruction_memory|memo~588_combout\);

-- Location: FF_X69_Y34_N13
\Instruction_register|Instruc_R|memo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~588_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(3));

-- Location: IOIBUF_X78_Y41_N1
\instruction_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(4),
	o => \instruction_in[4]~input_o\);

-- Location: LCCOMB_X74_Y36_N2
\Instruction_memory|memo~457feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~457feeder_combout\ = \instruction_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[4]~input_o\,
	combout => \Instruction_memory|memo~457feeder_combout\);

-- Location: FF_X74_Y36_N3
\Instruction_memory|memo~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~457feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~457_q\);

-- Location: FF_X70_Y33_N7
\Instruction_memory|memo~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~521_q\);

-- Location: FF_X71_Y36_N9
\Instruction_memory|memo~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~489_q\);

-- Location: FF_X70_Y36_N15
\Instruction_memory|memo~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~425_q\);

-- Location: LCCOMB_X70_Y36_N14
\Instruction_memory|memo~596\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~596_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~489_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~425_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~489_q\,
	datac => \Instruction_memory|memo~425_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~596_combout\);

-- Location: LCCOMB_X70_Y33_N6
\Instruction_memory|memo~597\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~597_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~596_combout\ & ((\Instruction_memory|memo~521_q\))) # (!\Instruction_memory|memo~596_combout\ & (\Instruction_memory|memo~457_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~596_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~457_q\,
	datac => \Instruction_memory|memo~521_q\,
	datad => \Instruction_memory|memo~596_combout\,
	combout => \Instruction_memory|memo~597_combout\);

-- Location: LCCOMB_X69_Y33_N8
\Instruction_memory|memo~201feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~201feeder_combout\ = \instruction_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[4]~input_o\,
	combout => \Instruction_memory|memo~201feeder_combout\);

-- Location: FF_X69_Y33_N9
\Instruction_memory|memo~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~201feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~201_q\);

-- Location: LCCOMB_X69_Y33_N14
\Instruction_memory|memo~233feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~233feeder_combout\ = \instruction_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[4]~input_o\,
	combout => \Instruction_memory|memo~233feeder_combout\);

-- Location: FF_X69_Y33_N15
\Instruction_memory|memo~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~233feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~233_q\);

-- Location: FF_X74_Y33_N5
\Instruction_memory|memo~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~169_q\);

-- Location: LCCOMB_X74_Y33_N4
\Instruction_memory|memo~591\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~591_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~233_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~169_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~233_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~169_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~591_combout\);

-- Location: FF_X74_Y33_N3
\Instruction_memory|memo~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~265_q\);

-- Location: LCCOMB_X74_Y33_N2
\Instruction_memory|memo~592\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~592_combout\ = (\Instruction_memory|memo~591_combout\ & (((\Instruction_memory|memo~265_q\) # (!\addr_mem[0]~1_combout\)))) # (!\Instruction_memory|memo~591_combout\ & (\Instruction_memory|memo~201_q\ & 
-- ((\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~201_q\,
	datab => \Instruction_memory|memo~591_combout\,
	datac => \Instruction_memory|memo~265_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~592_combout\);

-- Location: LCCOMB_X74_Y34_N8
\Instruction_memory|memo~105feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~105feeder_combout\ = \instruction_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[4]~input_o\,
	combout => \Instruction_memory|memo~105feeder_combout\);

-- Location: FF_X74_Y34_N9
\Instruction_memory|memo~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~105feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~105_q\);

-- Location: FF_X71_Y33_N13
\Instruction_memory|memo~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~137_q\);

-- Location: FF_X71_Y37_N13
\Instruction_memory|memo~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~73_q\);

-- Location: FF_X72_Y33_N23
\Instruction_memory|memo~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~41_q\);

-- Location: LCCOMB_X72_Y33_N22
\Instruction_memory|memo~593\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~593_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~73_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~41_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~73_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~41_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~593_combout\);

-- Location: LCCOMB_X71_Y33_N12
\Instruction_memory|memo~594\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~594_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~593_combout\ & ((\Instruction_memory|memo~137_q\))) # (!\Instruction_memory|memo~593_combout\ & (\Instruction_memory|memo~105_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~593_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~105_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~137_q\,
	datad => \Instruction_memory|memo~593_combout\,
	combout => \Instruction_memory|memo~594_combout\);

-- Location: LCCOMB_X71_Y33_N26
\Instruction_memory|memo~595\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~595_combout\ = (\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\) # ((\Instruction_memory|memo~592_combout\)))) # (!\addr_mem[2]~3_combout\ & (!\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~594_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~592_combout\,
	datad => \Instruction_memory|memo~594_combout\,
	combout => \Instruction_memory|memo~595_combout\);

-- Location: FF_X75_Y36_N11
\Instruction_memory|memo~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~393_q\);

-- Location: FF_X72_Y36_N17
\Instruction_memory|memo~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~361_q\);

-- Location: LCCOMB_X74_Y36_N20
\Instruction_memory|memo~329feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~329feeder_combout\ = \instruction_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[4]~input_o\,
	combout => \Instruction_memory|memo~329feeder_combout\);

-- Location: FF_X74_Y36_N21
\Instruction_memory|memo~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~329feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~329_q\);

-- Location: FF_X75_Y36_N21
\Instruction_memory|memo~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[4]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~297_q\);

-- Location: LCCOMB_X75_Y36_N20
\Instruction_memory|memo~589\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~589_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~329_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~297_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~329_q\,
	datac => \Instruction_memory|memo~297_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~589_combout\);

-- Location: LCCOMB_X72_Y36_N16
\Instruction_memory|memo~590\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~590_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~589_combout\ & (\Instruction_memory|memo~393_q\)) # (!\Instruction_memory|memo~589_combout\ & ((\Instruction_memory|memo~361_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~589_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~393_q\,
	datac => \Instruction_memory|memo~361_q\,
	datad => \Instruction_memory|memo~589_combout\,
	combout => \Instruction_memory|memo~590_combout\);

-- Location: LCCOMB_X71_Y33_N16
\Instruction_memory|memo~598\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~598_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~595_combout\ & (\Instruction_memory|memo~597_combout\)) # (!\Instruction_memory|memo~595_combout\ & ((\Instruction_memory|memo~590_combout\))))) # 
-- (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~595_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~597_combout\,
	datac => \Instruction_memory|memo~595_combout\,
	datad => \Instruction_memory|memo~590_combout\,
	combout => \Instruction_memory|memo~598_combout\);

-- Location: FF_X71_Y33_N17
\Instruction_register|Instruc_R|memo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~598_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(4));

-- Location: IOIBUF_X58_Y54_N1
\instruction_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(5),
	o => \instruction_in[5]~input_o\);

-- Location: LCCOMB_X67_Y32_N16
\Instruction_memory|memo~234feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~234feeder_combout\ = \instruction_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[5]~input_o\,
	combout => \Instruction_memory|memo~234feeder_combout\);

-- Location: FF_X67_Y32_N17
\Instruction_memory|memo~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~234feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~234_q\);

-- Location: FF_X67_Y36_N5
\Instruction_memory|memo~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~490_q\);

-- Location: FF_X71_Y37_N3
\Instruction_memory|memo~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~362_q\);

-- Location: FF_X67_Y36_N19
\Instruction_memory|memo~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~106_q\);

-- Location: LCCOMB_X67_Y36_N18
\Instruction_memory|memo~599\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~599_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~362_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~106_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~362_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~106_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~599_combout\);

-- Location: LCCOMB_X67_Y36_N22
\Instruction_memory|memo~600\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~600_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~599_combout\ & ((\Instruction_memory|memo~490_q\))) # (!\Instruction_memory|memo~599_combout\ & (\Instruction_memory|memo~234_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~599_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~234_q\,
	datac => \Instruction_memory|memo~490_q\,
	datad => \Instruction_memory|memo~599_combout\,
	combout => \Instruction_memory|memo~600_combout\);

-- Location: LCCOMB_X69_Y31_N0
\Instruction_memory|memo~330feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~330feeder_combout\ = \instruction_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[5]~input_o\,
	combout => \Instruction_memory|memo~330feeder_combout\);

-- Location: FF_X69_Y31_N1
\Instruction_memory|memo~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~330feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~330_q\);

-- Location: FF_X69_Y32_N7
\Instruction_memory|memo~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~458_q\);

-- Location: LCCOMB_X67_Y32_N6
\Instruction_memory|memo~202feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~202feeder_combout\ = \instruction_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[5]~input_o\,
	combout => \Instruction_memory|memo~202feeder_combout\);

-- Location: FF_X67_Y32_N7
\Instruction_memory|memo~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~202feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~202_q\);

-- Location: FF_X69_Y32_N13
\Instruction_memory|memo~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~74_q\);

-- Location: LCCOMB_X69_Y32_N12
\Instruction_memory|memo~601\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~601_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~202_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~74_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~202_q\,
	datac => \Instruction_memory|memo~74_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~601_combout\);

-- Location: LCCOMB_X69_Y32_N6
\Instruction_memory|memo~602\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~602_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~601_combout\ & ((\Instruction_memory|memo~458_q\))) # (!\Instruction_memory|memo~601_combout\ & (\Instruction_memory|memo~330_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~601_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~330_q\,
	datac => \Instruction_memory|memo~458_q\,
	datad => \Instruction_memory|memo~601_combout\,
	combout => \Instruction_memory|memo~602_combout\);

-- Location: LCCOMB_X67_Y34_N30
\Instruction_memory|memo~170feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~170feeder_combout\ = \instruction_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[5]~input_o\,
	combout => \Instruction_memory|memo~170feeder_combout\);

-- Location: FF_X67_Y34_N31
\Instruction_memory|memo~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~170feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~170_q\);

-- Location: FF_X70_Y36_N21
\Instruction_memory|memo~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~426_q\);

-- Location: FF_X71_Y34_N3
\Instruction_memory|memo~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~42_q\);

-- Location: LCCOMB_X72_Y37_N12
\Instruction_memory|memo~298feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~298feeder_combout\ = \instruction_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[5]~input_o\,
	combout => \Instruction_memory|memo~298feeder_combout\);

-- Location: FF_X72_Y37_N13
\Instruction_memory|memo~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~298feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~298_q\);

-- Location: LCCOMB_X71_Y34_N2
\Instruction_memory|memo~603\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~603_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~298_q\))) # (!\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~42_q\,
	datad => \Instruction_memory|memo~298_q\,
	combout => \Instruction_memory|memo~603_combout\);

-- Location: LCCOMB_X70_Y36_N20
\Instruction_memory|memo~604\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~604_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~603_combout\ & ((\Instruction_memory|memo~426_q\))) # (!\Instruction_memory|memo~603_combout\ & (\Instruction_memory|memo~170_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~603_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~170_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~426_q\,
	datad => \Instruction_memory|memo~603_combout\,
	combout => \Instruction_memory|memo~604_combout\);

-- Location: LCCOMB_X70_Y36_N30
\Instruction_memory|memo~605\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~605_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\)) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~602_combout\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~604_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~602_combout\,
	datad => \Instruction_memory|memo~604_combout\,
	combout => \Instruction_memory|memo~605_combout\);

-- Location: LCCOMB_X70_Y33_N12
\Instruction_memory|memo~266feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~266feeder_combout\ = \instruction_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[5]~input_o\,
	combout => \Instruction_memory|memo~266feeder_combout\);

-- Location: FF_X70_Y33_N13
\Instruction_memory|memo~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~266feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~266_q\);

-- Location: FF_X71_Y33_N21
\Instruction_memory|memo~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~138_q\);

-- Location: LCCOMB_X71_Y33_N20
\Instruction_memory|memo~606\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~606_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~266_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~138_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~266_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~138_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~606_combout\);

-- Location: LCCOMB_X71_Y31_N22
\Instruction_memory|memo~394feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~394feeder_combout\ = \instruction_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[5]~input_o\,
	combout => \Instruction_memory|memo~394feeder_combout\);

-- Location: FF_X71_Y31_N23
\Instruction_memory|memo~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~394feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~394_q\);

-- Location: FF_X70_Y34_N3
\Instruction_memory|memo~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[5]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~522_q\);

-- Location: LCCOMB_X70_Y34_N2
\Instruction_memory|memo~607\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~607_combout\ = (\Instruction_memory|memo~606_combout\ & (((\Instruction_memory|memo~522_q\) # (!\addr_mem[3]~2_combout\)))) # (!\Instruction_memory|memo~606_combout\ & (\Instruction_memory|memo~394_q\ & 
-- ((\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~606_combout\,
	datab => \Instruction_memory|memo~394_q\,
	datac => \Instruction_memory|memo~522_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~607_combout\);

-- Location: LCCOMB_X70_Y36_N4
\Instruction_memory|memo~608\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~608_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~605_combout\ & ((\Instruction_memory|memo~607_combout\))) # (!\Instruction_memory|memo~605_combout\ & (\Instruction_memory|memo~600_combout\)))) # 
-- (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~605_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~600_combout\,
	datac => \Instruction_memory|memo~605_combout\,
	datad => \Instruction_memory|memo~607_combout\,
	combout => \Instruction_memory|memo~608_combout\);

-- Location: FF_X70_Y36_N5
\Instruction_register|Instruc_R|memo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~608_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(5));

-- Location: IOIBUF_X78_Y35_N1
\instruction_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(6),
	o => \instruction_in[6]~input_o\);

-- Location: FF_X76_Y33_N31
\Instruction_memory|memo~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~267_q\);

-- Location: FF_X75_Y33_N15
\Instruction_memory|memo~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~235_q\);

-- Location: FF_X75_Y33_N21
\Instruction_memory|memo~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~203_q\);

-- Location: FF_X76_Y33_N17
\Instruction_memory|memo~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~171_q\);

-- Location: LCCOMB_X76_Y33_N16
\Instruction_memory|memo~609\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~609_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~203_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~171_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~203_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~171_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~609_combout\);

-- Location: LCCOMB_X75_Y33_N14
\Instruction_memory|memo~610\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~610_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~609_combout\ & (\Instruction_memory|memo~267_q\)) # (!\Instruction_memory|memo~609_combout\ & ((\Instruction_memory|memo~235_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~609_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~267_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~235_q\,
	datad => \Instruction_memory|memo~609_combout\,
	combout => \Instruction_memory|memo~610_combout\);

-- Location: FF_X67_Y33_N15
\Instruction_memory|memo~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~75_q\);

-- Location: FF_X71_Y33_N15
\Instruction_memory|memo~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~139_q\);

-- Location: FF_X76_Y32_N1
\Instruction_memory|memo~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~107_q\);

-- Location: FF_X72_Y33_N5
\Instruction_memory|memo~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~43_q\);

-- Location: LCCOMB_X72_Y33_N4
\Instruction_memory|memo~613\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~613_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~107_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~107_q\,
	datac => \Instruction_memory|memo~43_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~613_combout\);

-- Location: LCCOMB_X71_Y33_N14
\Instruction_memory|memo~614\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~614_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~613_combout\ & ((\Instruction_memory|memo~139_q\))) # (!\Instruction_memory|memo~613_combout\ & (\Instruction_memory|memo~75_q\)))) # (!\addr_mem[0]~1_combout\ & 
-- (((\Instruction_memory|memo~613_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~75_q\,
	datac => \Instruction_memory|memo~139_q\,
	datad => \Instruction_memory|memo~613_combout\,
	combout => \Instruction_memory|memo~614_combout\);

-- Location: FF_X74_Y36_N9
\Instruction_memory|memo~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~331_q\);

-- Location: FF_X75_Y36_N31
\Instruction_memory|memo~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~395_q\);

-- Location: FF_X76_Y35_N23
\Instruction_memory|memo~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~363_q\);

-- Location: FF_X75_Y36_N25
\Instruction_memory|memo~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~299_q\);

-- Location: LCCOMB_X75_Y36_N24
\Instruction_memory|memo~611\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~611_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~363_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~299_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~363_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~299_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~611_combout\);

-- Location: LCCOMB_X75_Y36_N30
\Instruction_memory|memo~612\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~612_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~611_combout\ & ((\Instruction_memory|memo~395_q\))) # (!\Instruction_memory|memo~611_combout\ & (\Instruction_memory|memo~331_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~611_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~331_q\,
	datac => \Instruction_memory|memo~395_q\,
	datad => \Instruction_memory|memo~611_combout\,
	combout => \Instruction_memory|memo~612_combout\);

-- Location: LCCOMB_X71_Y33_N8
\Instruction_memory|memo~615\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~615_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~612_combout\))) # (!\addr_mem[3]~2_combout\ & 
-- (\Instruction_memory|memo~614_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~614_combout\,
	datad => \Instruction_memory|memo~612_combout\,
	combout => \Instruction_memory|memo~615_combout\);

-- Location: LCCOMB_X76_Y34_N24
\Instruction_memory|memo~491feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~491feeder_combout\ = \instruction_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[6]~input_o\,
	combout => \Instruction_memory|memo~491feeder_combout\);

-- Location: FF_X76_Y34_N25
\Instruction_memory|memo~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~491feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~491_q\);

-- Location: FF_X70_Y33_N11
\Instruction_memory|memo~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~523_q\);

-- Location: FF_X69_Y36_N13
\Instruction_memory|memo~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~459_q\);

-- Location: FF_X70_Y36_N13
\Instruction_memory|memo~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[6]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~427_q\);

-- Location: LCCOMB_X70_Y36_N12
\Instruction_memory|memo~616\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~616_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~459_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~427_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~459_q\,
	datac => \Instruction_memory|memo~427_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~616_combout\);

-- Location: LCCOMB_X70_Y33_N10
\Instruction_memory|memo~617\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~617_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~616_combout\ & ((\Instruction_memory|memo~523_q\))) # (!\Instruction_memory|memo~616_combout\ & (\Instruction_memory|memo~491_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~616_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~491_q\,
	datac => \Instruction_memory|memo~523_q\,
	datad => \Instruction_memory|memo~616_combout\,
	combout => \Instruction_memory|memo~617_combout\);

-- Location: LCCOMB_X71_Y33_N6
\Instruction_memory|memo~618\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~618_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~615_combout\ & ((\Instruction_memory|memo~617_combout\))) # (!\Instruction_memory|memo~615_combout\ & (\Instruction_memory|memo~610_combout\)))) # 
-- (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~615_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~610_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~615_combout\,
	datad => \Instruction_memory|memo~617_combout\,
	combout => \Instruction_memory|memo~618_combout\);

-- Location: FF_X71_Y33_N7
\Instruction_register|Instruc_R|memo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~618_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(6));

-- Location: IOIBUF_X66_Y54_N29
\instruction_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(7),
	o => \instruction_in[7]~input_o\);

-- Location: FF_X69_Y36_N3
\Instruction_memory|memo~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~460_q\);

-- Location: FF_X69_Y33_N1
\Instruction_memory|memo~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~204_q\);

-- Location: FF_X70_Y31_N27
\Instruction_memory|memo~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~332_q\);

-- Location: FF_X70_Y32_N29
\Instruction_memory|memo~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~76_q\);

-- Location: LCCOMB_X70_Y32_N28
\Instruction_memory|memo~619\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~619_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~332_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~76_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~332_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~76_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~619_combout\);

-- Location: LCCOMB_X69_Y33_N0
\Instruction_memory|memo~620\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~620_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~619_combout\ & (\Instruction_memory|memo~460_q\)) # (!\Instruction_memory|memo~619_combout\ & ((\Instruction_memory|memo~204_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~619_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~460_q\,
	datac => \Instruction_memory|memo~204_q\,
	datad => \Instruction_memory|memo~619_combout\,
	combout => \Instruction_memory|memo~620_combout\);

-- Location: FF_X70_Y33_N17
\Instruction_memory|memo~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~268_q\);

-- Location: FF_X70_Y33_N31
\Instruction_memory|memo~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~524_q\);

-- Location: FF_X71_Y31_N9
\Instruction_memory|memo~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~396_q\);

-- Location: FF_X70_Y32_N19
\Instruction_memory|memo~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~140_q\);

-- Location: LCCOMB_X70_Y32_N18
\Instruction_memory|memo~626\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~626_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~396_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~140_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~396_q\,
	datac => \Instruction_memory|memo~140_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~626_combout\);

-- Location: LCCOMB_X70_Y33_N30
\Instruction_memory|memo~627\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~627_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~626_combout\ & ((\Instruction_memory|memo~524_q\))) # (!\Instruction_memory|memo~626_combout\ & (\Instruction_memory|memo~268_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~626_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~268_q\,
	datac => \Instruction_memory|memo~524_q\,
	datad => \Instruction_memory|memo~626_combout\,
	combout => \Instruction_memory|memo~627_combout\);

-- Location: LCCOMB_X72_Y37_N6
\Instruction_memory|memo~300feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~300feeder_combout\ = \instruction_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[7]~input_o\,
	combout => \Instruction_memory|memo~300feeder_combout\);

-- Location: FF_X72_Y37_N7
\Instruction_memory|memo~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~300feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~300_q\);

-- Location: FF_X69_Y34_N9
\Instruction_memory|memo~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~428_q\);

-- Location: LCCOMB_X67_Y34_N0
\Instruction_memory|memo~172feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~172feeder_combout\ = \instruction_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[7]~input_o\,
	combout => \Instruction_memory|memo~172feeder_combout\);

-- Location: FF_X67_Y34_N1
\Instruction_memory|memo~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~172feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~172_q\);

-- Location: FF_X71_Y34_N21
\Instruction_memory|memo~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~44_q\);

-- Location: LCCOMB_X71_Y34_N20
\Instruction_memory|memo~623\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~623_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~172_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~172_q\,
	datac => \Instruction_memory|memo~44_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~623_combout\);

-- Location: LCCOMB_X69_Y34_N8
\Instruction_memory|memo~624\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~624_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~623_combout\ & ((\Instruction_memory|memo~428_q\))) # (!\Instruction_memory|memo~623_combout\ & (\Instruction_memory|memo~300_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~623_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~300_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~428_q\,
	datad => \Instruction_memory|memo~623_combout\,
	combout => \Instruction_memory|memo~624_combout\);

-- Location: FF_X71_Y37_N1
\Instruction_memory|memo~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~364_q\);

-- Location: FF_X67_Y36_N11
\Instruction_memory|memo~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~492_q\);

-- Location: LCCOMB_X67_Y32_N20
\Instruction_memory|memo~236feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~236feeder_combout\ = \instruction_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[7]~input_o\,
	combout => \Instruction_memory|memo~236feeder_combout\);

-- Location: FF_X67_Y32_N21
\Instruction_memory|memo~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~236feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~236_q\);

-- Location: FF_X67_Y36_N17
\Instruction_memory|memo~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[7]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~108_q\);

-- Location: LCCOMB_X67_Y36_N16
\Instruction_memory|memo~621\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~621_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~236_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~108_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~236_q\,
	datac => \Instruction_memory|memo~108_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~621_combout\);

-- Location: LCCOMB_X67_Y36_N10
\Instruction_memory|memo~622\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~622_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~621_combout\ & ((\Instruction_memory|memo~492_q\))) # (!\Instruction_memory|memo~621_combout\ & (\Instruction_memory|memo~364_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~621_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~364_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~492_q\,
	datad => \Instruction_memory|memo~621_combout\,
	combout => \Instruction_memory|memo~622_combout\);

-- Location: LCCOMB_X69_Y34_N18
\Instruction_memory|memo~625\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~625_combout\ = (\addr_mem[0]~1_combout\ & (\addr_mem[1]~0_combout\)) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~622_combout\))) # (!\addr_mem[1]~0_combout\ & 
-- (\Instruction_memory|memo~624_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~624_combout\,
	datad => \Instruction_memory|memo~622_combout\,
	combout => \Instruction_memory|memo~625_combout\);

-- Location: LCCOMB_X69_Y34_N30
\Instruction_memory|memo~628\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~628_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~625_combout\ & ((\Instruction_memory|memo~627_combout\))) # (!\Instruction_memory|memo~625_combout\ & (\Instruction_memory|memo~620_combout\)))) # 
-- (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~625_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~620_combout\,
	datac => \Instruction_memory|memo~627_combout\,
	datad => \Instruction_memory|memo~625_combout\,
	combout => \Instruction_memory|memo~628_combout\);

-- Location: FF_X69_Y34_N31
\Instruction_register|Instruc_R|memo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~628_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(7));

-- Location: IOIBUF_X78_Y35_N8
\instruction_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(8),
	o => \instruction_in[8]~input_o\);

-- Location: FF_X75_Y36_N27
\Instruction_memory|memo~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~397_q\);

-- Location: FF_X72_Y36_N31
\Instruction_memory|memo~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~365_q\);

-- Location: LCCOMB_X74_Y36_N22
\Instruction_memory|memo~333feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~333feeder_combout\ = \instruction_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[8]~input_o\,
	combout => \Instruction_memory|memo~333feeder_combout\);

-- Location: FF_X74_Y36_N23
\Instruction_memory|memo~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~333feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~333_q\);

-- Location: FF_X75_Y36_N9
\Instruction_memory|memo~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~301_q\);

-- Location: LCCOMB_X75_Y36_N8
\Instruction_memory|memo~629\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~629_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~333_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~301_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~333_q\,
	datac => \Instruction_memory|memo~301_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~629_combout\);

-- Location: LCCOMB_X72_Y36_N30
\Instruction_memory|memo~630\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~630_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~629_combout\ & (\Instruction_memory|memo~397_q\)) # (!\Instruction_memory|memo~629_combout\ & ((\Instruction_memory|memo~365_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~629_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~397_q\,
	datac => \Instruction_memory|memo~365_q\,
	datad => \Instruction_memory|memo~629_combout\,
	combout => \Instruction_memory|memo~630_combout\);

-- Location: LCCOMB_X74_Y36_N12
\Instruction_memory|memo~461feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~461feeder_combout\ = \instruction_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[8]~input_o\,
	combout => \Instruction_memory|memo~461feeder_combout\);

-- Location: FF_X74_Y36_N13
\Instruction_memory|memo~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~461feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~461_q\);

-- Location: FF_X71_Y35_N5
\Instruction_memory|memo~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~525_q\);

-- Location: LCCOMB_X71_Y36_N20
\Instruction_memory|memo~493feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~493feeder_combout\ = \instruction_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[8]~input_o\,
	combout => \Instruction_memory|memo~493feeder_combout\);

-- Location: FF_X71_Y36_N21
\Instruction_memory|memo~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~493feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~493_q\);

-- Location: FF_X70_Y36_N3
\Instruction_memory|memo~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~429_q\);

-- Location: LCCOMB_X70_Y36_N2
\Instruction_memory|memo~636\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~636_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~493_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~429_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~493_q\,
	datac => \Instruction_memory|memo~429_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~636_combout\);

-- Location: LCCOMB_X71_Y35_N4
\Instruction_memory|memo~637\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~637_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~636_combout\ & ((\Instruction_memory|memo~525_q\))) # (!\Instruction_memory|memo~636_combout\ & (\Instruction_memory|memo~461_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~636_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~461_q\,
	datac => \Instruction_memory|memo~525_q\,
	datad => \Instruction_memory|memo~636_combout\,
	combout => \Instruction_memory|memo~637_combout\);

-- Location: LCCOMB_X71_Y36_N6
\Instruction_memory|memo~109feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~109feeder_combout\ = \instruction_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[8]~input_o\,
	combout => \Instruction_memory|memo~109feeder_combout\);

-- Location: FF_X71_Y36_N7
\Instruction_memory|memo~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~109feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~109_q\);

-- Location: FF_X72_Y33_N9
\Instruction_memory|memo~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~141_q\);

-- Location: LCCOMB_X67_Y33_N20
\Instruction_memory|memo~77feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~77feeder_combout\ = \instruction_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[8]~input_o\,
	combout => \Instruction_memory|memo~77feeder_combout\);

-- Location: FF_X67_Y33_N21
\Instruction_memory|memo~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~77feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~77_q\);

-- Location: FF_X72_Y33_N7
\Instruction_memory|memo~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~45_q\);

-- Location: LCCOMB_X72_Y33_N6
\Instruction_memory|memo~633\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~633_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~77_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~45_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~77_q\,
	datac => \Instruction_memory|memo~45_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~633_combout\);

-- Location: LCCOMB_X72_Y33_N8
\Instruction_memory|memo~634\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~634_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~633_combout\ & ((\Instruction_memory|memo~141_q\))) # (!\Instruction_memory|memo~633_combout\ & (\Instruction_memory|memo~109_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~633_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~109_q\,
	datac => \Instruction_memory|memo~141_q\,
	datad => \Instruction_memory|memo~633_combout\,
	combout => \Instruction_memory|memo~634_combout\);

-- Location: FF_X69_Y33_N7
\Instruction_memory|memo~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~205_q\);

-- Location: FF_X74_Y33_N19
\Instruction_memory|memo~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~269_q\);

-- Location: LCCOMB_X75_Y33_N30
\Instruction_memory|memo~237feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~237feeder_combout\ = \instruction_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[8]~input_o\,
	combout => \Instruction_memory|memo~237feeder_combout\);

-- Location: FF_X75_Y33_N31
\Instruction_memory|memo~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~237feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~237_q\);

-- Location: FF_X74_Y33_N13
\Instruction_memory|memo~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[8]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~173_q\);

-- Location: LCCOMB_X74_Y33_N12
\Instruction_memory|memo~631\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~631_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~237_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~173_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~237_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~173_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~631_combout\);

-- Location: LCCOMB_X74_Y33_N18
\Instruction_memory|memo~632\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~632_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~631_combout\ & ((\Instruction_memory|memo~269_q\))) # (!\Instruction_memory|memo~631_combout\ & (\Instruction_memory|memo~205_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~631_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~205_q\,
	datac => \Instruction_memory|memo~269_q\,
	datad => \Instruction_memory|memo~631_combout\,
	combout => \Instruction_memory|memo~632_combout\);

-- Location: LCCOMB_X72_Y33_N18
\Instruction_memory|memo~635\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~635_combout\ = (\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\) # ((\Instruction_memory|memo~632_combout\)))) # (!\addr_mem[2]~3_combout\ & (!\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~634_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~634_combout\,
	datad => \Instruction_memory|memo~632_combout\,
	combout => \Instruction_memory|memo~635_combout\);

-- Location: LCCOMB_X71_Y35_N24
\Instruction_memory|memo~638\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~638_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~635_combout\ & ((\Instruction_memory|memo~637_combout\))) # (!\Instruction_memory|memo~635_combout\ & (\Instruction_memory|memo~630_combout\)))) # 
-- (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~635_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~630_combout\,
	datac => \Instruction_memory|memo~637_combout\,
	datad => \Instruction_memory|memo~635_combout\,
	combout => \Instruction_memory|memo~638_combout\);

-- Location: FF_X71_Y35_N25
\Instruction_register|Instruc_R|memo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~638_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(8));

-- Location: IOIBUF_X62_Y54_N29
\instruction_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(9),
	o => \instruction_in[9]~input_o\);

-- Location: LCCOMB_X71_Y31_N16
\Instruction_memory|memo~398feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~398feeder_combout\ = \instruction_in[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[9]~input_o\,
	combout => \Instruction_memory|memo~398feeder_combout\);

-- Location: FF_X71_Y31_N17
\Instruction_memory|memo~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~398feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~398_q\);

-- Location: FF_X70_Y34_N5
\Instruction_memory|memo~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~526_q\);

-- Location: LCCOMB_X70_Y31_N16
\Instruction_memory|memo~270feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~270feeder_combout\ = \instruction_in[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[9]~input_o\,
	combout => \Instruction_memory|memo~270feeder_combout\);

-- Location: FF_X70_Y31_N17
\Instruction_memory|memo~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~270feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~270_q\);

-- Location: FF_X70_Y32_N15
\Instruction_memory|memo~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~142_q\);

-- Location: LCCOMB_X70_Y32_N14
\Instruction_memory|memo~646\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~646_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~270_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~142_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~270_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~142_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~646_combout\);

-- Location: LCCOMB_X70_Y34_N4
\Instruction_memory|memo~647\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~647_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~646_combout\ & ((\Instruction_memory|memo~526_q\))) # (!\Instruction_memory|memo~646_combout\ & (\Instruction_memory|memo~398_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~646_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~398_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~526_q\,
	datad => \Instruction_memory|memo~646_combout\,
	combout => \Instruction_memory|memo~647_combout\);

-- Location: FF_X71_Y36_N1
\Instruction_memory|memo~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~494_q\);

-- Location: FF_X72_Y36_N9
\Instruction_memory|memo~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~238_q\);

-- Location: FF_X72_Y36_N27
\Instruction_memory|memo~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~366_q\);

-- Location: FF_X71_Y36_N11
\Instruction_memory|memo~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~110_q\);

-- Location: LCCOMB_X71_Y36_N10
\Instruction_memory|memo~639\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~639_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~366_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~110_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~366_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~110_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~639_combout\);

-- Location: LCCOMB_X72_Y36_N8
\Instruction_memory|memo~640\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~640_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~639_combout\ & (\Instruction_memory|memo~494_q\)) # (!\Instruction_memory|memo~639_combout\ & ((\Instruction_memory|memo~238_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~639_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~494_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~238_q\,
	datad => \Instruction_memory|memo~639_combout\,
	combout => \Instruction_memory|memo~640_combout\);

-- Location: LCCOMB_X71_Y31_N6
\Instruction_memory|memo~174feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~174feeder_combout\ = \instruction_in[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[9]~input_o\,
	combout => \Instruction_memory|memo~174feeder_combout\);

-- Location: FF_X71_Y31_N7
\Instruction_memory|memo~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~174feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~174_q\);

-- Location: FF_X70_Y35_N21
\Instruction_memory|memo~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~430_q\);

-- Location: LCCOMB_X70_Y37_N28
\Instruction_memory|memo~302feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~302feeder_combout\ = \instruction_in[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[9]~input_o\,
	combout => \Instruction_memory|memo~302feeder_combout\);

-- Location: FF_X70_Y37_N29
\Instruction_memory|memo~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~302feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~302_q\);

-- Location: FF_X70_Y35_N19
\Instruction_memory|memo~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~46_q\);

-- Location: LCCOMB_X70_Y35_N18
\Instruction_memory|memo~643\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~643_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~302_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~302_q\,
	datac => \Instruction_memory|memo~46_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~643_combout\);

-- Location: LCCOMB_X70_Y35_N20
\Instruction_memory|memo~644\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~644_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~643_combout\ & ((\Instruction_memory|memo~430_q\))) # (!\Instruction_memory|memo~643_combout\ & (\Instruction_memory|memo~174_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~643_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~174_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~430_q\,
	datad => \Instruction_memory|memo~643_combout\,
	combout => \Instruction_memory|memo~644_combout\);

-- Location: FF_X69_Y36_N29
\Instruction_memory|memo~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~334_q\);

-- Location: FF_X69_Y36_N11
\Instruction_memory|memo~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~462_q\);

-- Location: FF_X67_Y32_N3
\Instruction_memory|memo~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~206_q\);

-- Location: FF_X70_Y32_N21
\Instruction_memory|memo~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[9]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~78_q\);

-- Location: LCCOMB_X70_Y32_N20
\Instruction_memory|memo~641\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~641_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~206_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~78_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~206_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~78_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~641_combout\);

-- Location: LCCOMB_X69_Y36_N10
\Instruction_memory|memo~642\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~642_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~641_combout\ & ((\Instruction_memory|memo~462_q\))) # (!\Instruction_memory|memo~641_combout\ & (\Instruction_memory|memo~334_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~641_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~334_q\,
	datac => \Instruction_memory|memo~462_q\,
	datad => \Instruction_memory|memo~641_combout\,
	combout => \Instruction_memory|memo~642_combout\);

-- Location: LCCOMB_X69_Y34_N24
\Instruction_memory|memo~645\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~645_combout\ = (\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\) # ((\Instruction_memory|memo~642_combout\)))) # (!\addr_mem[0]~1_combout\ & (!\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~644_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~644_combout\,
	datad => \Instruction_memory|memo~642_combout\,
	combout => \Instruction_memory|memo~645_combout\);

-- Location: LCCOMB_X70_Y34_N12
\Instruction_memory|memo~648\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~648_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~645_combout\ & (\Instruction_memory|memo~647_combout\)) # (!\Instruction_memory|memo~645_combout\ & ((\Instruction_memory|memo~640_combout\))))) # 
-- (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~645_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~647_combout\,
	datac => \Instruction_memory|memo~640_combout\,
	datad => \Instruction_memory|memo~645_combout\,
	combout => \Instruction_memory|memo~648_combout\);

-- Location: FF_X70_Y34_N13
\Instruction_register|Instruc_R|memo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~648_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(9));

-- Location: IOIBUF_X78_Y35_N15
\instruction_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(10),
	o => \instruction_in[10]~input_o\);

-- Location: LCCOMB_X74_Y33_N26
\Instruction_memory|memo~271feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~271feeder_combout\ = \instruction_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[10]~input_o\,
	combout => \Instruction_memory|memo~271feeder_combout\);

-- Location: FF_X74_Y33_N27
\Instruction_memory|memo~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~271feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~271_q\);

-- Location: FF_X75_Y34_N9
\Instruction_memory|memo~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~239_q\);

-- Location: LCCOMB_X69_Y33_N16
\Instruction_memory|memo~207feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~207feeder_combout\ = \instruction_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[10]~input_o\,
	combout => \Instruction_memory|memo~207feeder_combout\);

-- Location: FF_X69_Y33_N17
\Instruction_memory|memo~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~207feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~207_q\);

-- Location: FF_X74_Y33_N25
\Instruction_memory|memo~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~175_q\);

-- Location: LCCOMB_X74_Y33_N24
\Instruction_memory|memo~649\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~649_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~207_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~175_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~207_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~175_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~649_combout\);

-- Location: LCCOMB_X75_Y34_N8
\Instruction_memory|memo~650\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~650_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~649_combout\ & (\Instruction_memory|memo~271_q\)) # (!\Instruction_memory|memo~649_combout\ & ((\Instruction_memory|memo~239_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~649_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~271_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~239_q\,
	datad => \Instruction_memory|memo~649_combout\,
	combout => \Instruction_memory|memo~650_combout\);

-- Location: LCCOMB_X76_Y34_N14
\Instruction_memory|memo~495feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~495feeder_combout\ = \instruction_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[10]~input_o\,
	combout => \Instruction_memory|memo~495feeder_combout\);

-- Location: FF_X76_Y34_N15
\Instruction_memory|memo~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~495feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~495_q\);

-- Location: FF_X72_Y34_N9
\Instruction_memory|memo~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~527_q\);

-- Location: FF_X69_Y36_N9
\Instruction_memory|memo~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~463_q\);

-- Location: FF_X70_Y36_N29
\Instruction_memory|memo~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~431_q\);

-- Location: LCCOMB_X70_Y36_N28
\Instruction_memory|memo~656\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~656_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~463_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~431_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~463_q\,
	datac => \Instruction_memory|memo~431_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~656_combout\);

-- Location: LCCOMB_X72_Y34_N8
\Instruction_memory|memo~657\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~657_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~656_combout\ & ((\Instruction_memory|memo~527_q\))) # (!\Instruction_memory|memo~656_combout\ & (\Instruction_memory|memo~495_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~656_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~495_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~527_q\,
	datad => \Instruction_memory|memo~656_combout\,
	combout => \Instruction_memory|memo~657_combout\);

-- Location: LCCOMB_X74_Y34_N30
\Instruction_memory|memo~111feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~111feeder_combout\ = \instruction_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[10]~input_o\,
	combout => \Instruction_memory|memo~111feeder_combout\);

-- Location: FF_X74_Y34_N31
\Instruction_memory|memo~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~111feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~111_q\);

-- Location: FF_X72_Y33_N17
\Instruction_memory|memo~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~47_q\);

-- Location: LCCOMB_X72_Y33_N16
\Instruction_memory|memo~653\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~653_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~111_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~111_q\,
	datac => \Instruction_memory|memo~47_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~653_combout\);

-- Location: FF_X72_Y33_N31
\Instruction_memory|memo~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~143_q\);

-- Location: LCCOMB_X67_Y33_N2
\Instruction_memory|memo~79feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~79feeder_combout\ = \instruction_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[10]~input_o\,
	combout => \Instruction_memory|memo~79feeder_combout\);

-- Location: FF_X67_Y33_N3
\Instruction_memory|memo~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~79feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~79_q\);

-- Location: LCCOMB_X72_Y33_N30
\Instruction_memory|memo~654\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~654_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~653_combout\ & (\Instruction_memory|memo~143_q\)) # (!\Instruction_memory|memo~653_combout\ & ((\Instruction_memory|memo~79_q\))))) # (!\addr_mem[0]~1_combout\ & 
-- (\Instruction_memory|memo~653_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~653_combout\,
	datac => \Instruction_memory|memo~143_q\,
	datad => \Instruction_memory|memo~79_q\,
	combout => \Instruction_memory|memo~654_combout\);

-- Location: FF_X74_Y36_N19
\Instruction_memory|memo~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~335_q\);

-- Location: FF_X75_Y36_N23
\Instruction_memory|memo~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~399_q\);

-- Location: FF_X72_Y36_N29
\Instruction_memory|memo~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~367_q\);

-- Location: FF_X75_Y36_N17
\Instruction_memory|memo~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[10]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~303_q\);

-- Location: LCCOMB_X75_Y36_N16
\Instruction_memory|memo~651\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~651_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~367_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~303_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~367_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~303_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~651_combout\);

-- Location: LCCOMB_X75_Y36_N22
\Instruction_memory|memo~652\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~652_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~651_combout\ & ((\Instruction_memory|memo~399_q\))) # (!\Instruction_memory|memo~651_combout\ & (\Instruction_memory|memo~335_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~651_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~335_q\,
	datac => \Instruction_memory|memo~399_q\,
	datad => \Instruction_memory|memo~651_combout\,
	combout => \Instruction_memory|memo~652_combout\);

-- Location: LCCOMB_X72_Y33_N0
\Instruction_memory|memo~655\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~655_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~652_combout\))) # (!\addr_mem[3]~2_combout\ & 
-- (\Instruction_memory|memo~654_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~654_combout\,
	datad => \Instruction_memory|memo~652_combout\,
	combout => \Instruction_memory|memo~655_combout\);

-- Location: LCCOMB_X72_Y34_N28
\Instruction_memory|memo~658\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~658_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~655_combout\ & ((\Instruction_memory|memo~657_combout\))) # (!\Instruction_memory|memo~655_combout\ & (\Instruction_memory|memo~650_combout\)))) # 
-- (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~655_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~650_combout\,
	datac => \Instruction_memory|memo~657_combout\,
	datad => \Instruction_memory|memo~655_combout\,
	combout => \Instruction_memory|memo~658_combout\);

-- Location: FF_X72_Y34_N29
\Instruction_register|Instruc_R|memo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~658_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(10));

-- Location: IOIBUF_X78_Y41_N23
\instruction_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(11),
	o => \instruction_in[11]~input_o\);

-- Location: FF_X70_Y33_N29
\Instruction_memory|memo~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~272_q\);

-- Location: FF_X70_Y33_N15
\Instruction_memory|memo~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~528_q\);

-- Location: LCCOMB_X71_Y31_N2
\Instruction_memory|memo~400feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~400feeder_combout\ = \instruction_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[11]~input_o\,
	combout => \Instruction_memory|memo~400feeder_combout\);

-- Location: FF_X71_Y31_N3
\Instruction_memory|memo~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~400feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~400_q\);

-- Location: FF_X70_Y32_N7
\Instruction_memory|memo~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~144_q\);

-- Location: LCCOMB_X70_Y32_N6
\Instruction_memory|memo~666\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~666_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~400_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~144_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~400_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~144_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~666_combout\);

-- Location: LCCOMB_X70_Y33_N14
\Instruction_memory|memo~667\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~667_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~666_combout\ & ((\Instruction_memory|memo~528_q\))) # (!\Instruction_memory|memo~666_combout\ & (\Instruction_memory|memo~272_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~666_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~272_q\,
	datac => \Instruction_memory|memo~528_q\,
	datad => \Instruction_memory|memo~666_combout\,
	combout => \Instruction_memory|memo~667_combout\);

-- Location: FF_X69_Y36_N5
\Instruction_memory|memo~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~464_q\);

-- Location: FF_X69_Y33_N23
\Instruction_memory|memo~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~208_q\);

-- Location: FF_X69_Y36_N7
\Instruction_memory|memo~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~336_q\);

-- Location: FF_X70_Y32_N1
\Instruction_memory|memo~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~80_q\);

-- Location: LCCOMB_X70_Y32_N0
\Instruction_memory|memo~659\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~659_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~336_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~336_q\,
	datac => \Instruction_memory|memo~80_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~659_combout\);

-- Location: LCCOMB_X69_Y33_N22
\Instruction_memory|memo~660\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~660_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~659_combout\ & (\Instruction_memory|memo~464_q\)) # (!\Instruction_memory|memo~659_combout\ & ((\Instruction_memory|memo~208_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~659_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~464_q\,
	datac => \Instruction_memory|memo~208_q\,
	datad => \Instruction_memory|memo~659_combout\,
	combout => \Instruction_memory|memo~660_combout\);

-- Location: LCCOMB_X72_Y37_N28
\Instruction_memory|memo~304feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~304feeder_combout\ = \instruction_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[11]~input_o\,
	combout => \Instruction_memory|memo~304feeder_combout\);

-- Location: FF_X72_Y37_N29
\Instruction_memory|memo~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~304feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~304_q\);

-- Location: FF_X69_Y34_N23
\Instruction_memory|memo~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~432_q\);

-- Location: LCCOMB_X67_Y34_N6
\Instruction_memory|memo~176feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~176feeder_combout\ = \instruction_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[11]~input_o\,
	combout => \Instruction_memory|memo~176feeder_combout\);

-- Location: FF_X67_Y34_N7
\Instruction_memory|memo~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~176feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~176_q\);

-- Location: FF_X71_Y34_N11
\Instruction_memory|memo~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~48_q\);

-- Location: LCCOMB_X71_Y34_N10
\Instruction_memory|memo~663\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~663_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~176_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~176_q\,
	datac => \Instruction_memory|memo~48_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~663_combout\);

-- Location: LCCOMB_X69_Y34_N22
\Instruction_memory|memo~664\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~664_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~663_combout\ & ((\Instruction_memory|memo~432_q\))) # (!\Instruction_memory|memo~663_combout\ & (\Instruction_memory|memo~304_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~663_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~304_q\,
	datac => \Instruction_memory|memo~432_q\,
	datad => \Instruction_memory|memo~663_combout\,
	combout => \Instruction_memory|memo~664_combout\);

-- Location: FF_X71_Y37_N7
\Instruction_memory|memo~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~368_q\);

-- Location: FF_X67_Y36_N7
\Instruction_memory|memo~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~496_q\);

-- Location: LCCOMB_X67_Y32_N24
\Instruction_memory|memo~240feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~240feeder_combout\ = \instruction_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[11]~input_o\,
	combout => \Instruction_memory|memo~240feeder_combout\);

-- Location: FF_X67_Y32_N25
\Instruction_memory|memo~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~240feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~240_q\);

-- Location: FF_X67_Y36_N13
\Instruction_memory|memo~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[11]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~112_q\);

-- Location: LCCOMB_X67_Y36_N12
\Instruction_memory|memo~661\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~661_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~240_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~240_q\,
	datac => \Instruction_memory|memo~112_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~661_combout\);

-- Location: LCCOMB_X67_Y36_N6
\Instruction_memory|memo~662\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~662_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~661_combout\ & ((\Instruction_memory|memo~496_q\))) # (!\Instruction_memory|memo~661_combout\ & (\Instruction_memory|memo~368_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~661_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~368_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~496_q\,
	datad => \Instruction_memory|memo~661_combout\,
	combout => \Instruction_memory|memo~662_combout\);

-- Location: LCCOMB_X69_Y34_N0
\Instruction_memory|memo~665\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~665_combout\ = (\addr_mem[0]~1_combout\ & (\addr_mem[1]~0_combout\)) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~662_combout\))) # (!\addr_mem[1]~0_combout\ & 
-- (\Instruction_memory|memo~664_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~664_combout\,
	datad => \Instruction_memory|memo~662_combout\,
	combout => \Instruction_memory|memo~665_combout\);

-- Location: LCCOMB_X69_Y34_N20
\Instruction_memory|memo~668\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~668_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~665_combout\ & (\Instruction_memory|memo~667_combout\)) # (!\Instruction_memory|memo~665_combout\ & ((\Instruction_memory|memo~660_combout\))))) # 
-- (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~665_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~667_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~660_combout\,
	datad => \Instruction_memory|memo~665_combout\,
	combout => \Instruction_memory|memo~668_combout\);

-- Location: FF_X69_Y34_N21
\Instruction_register|Instruc_R|memo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~668_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(11));

-- Location: IOIBUF_X78_Y40_N1
\instruction_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(12),
	o => \instruction_in[12]~input_o\);

-- Location: FF_X74_Y36_N15
\Instruction_memory|memo~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~465_q\);

-- Location: FF_X72_Y34_N13
\Instruction_memory|memo~529\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~529_q\);

-- Location: FF_X69_Y34_N27
\Instruction_memory|memo~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~433_q\);

-- Location: LCCOMB_X76_Y34_N16
\Instruction_memory|memo~497feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~497feeder_combout\ = \instruction_in[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[12]~input_o\,
	combout => \Instruction_memory|memo~497feeder_combout\);

-- Location: FF_X76_Y34_N17
\Instruction_memory|memo~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~497feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~497_q\);

-- Location: LCCOMB_X69_Y34_N26
\Instruction_memory|memo~676\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~676_combout\ = (\addr_mem[0]~1_combout\ & (\addr_mem[1]~0_combout\)) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~497_q\))) # (!\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~433_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~433_q\,
	datad => \Instruction_memory|memo~497_q\,
	combout => \Instruction_memory|memo~676_combout\);

-- Location: LCCOMB_X72_Y34_N12
\Instruction_memory|memo~677\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~677_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~676_combout\ & ((\Instruction_memory|memo~529_q\))) # (!\Instruction_memory|memo~676_combout\ & (\Instruction_memory|memo~465_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~676_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~465_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~529_q\,
	datad => \Instruction_memory|memo~676_combout\,
	combout => \Instruction_memory|memo~677_combout\);

-- Location: FF_X75_Y36_N3
\Instruction_memory|memo~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~401_q\);

-- Location: FF_X72_Y36_N19
\Instruction_memory|memo~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~369_q\);

-- Location: FF_X74_Y36_N5
\Instruction_memory|memo~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~337_q\);

-- Location: FF_X75_Y36_N5
\Instruction_memory|memo~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~305_q\);

-- Location: LCCOMB_X75_Y36_N4
\Instruction_memory|memo~669\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~669_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~337_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~305_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~337_q\,
	datac => \Instruction_memory|memo~305_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~669_combout\);

-- Location: LCCOMB_X72_Y36_N18
\Instruction_memory|memo~670\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~670_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~669_combout\ & (\Instruction_memory|memo~401_q\)) # (!\Instruction_memory|memo~669_combout\ & ((\Instruction_memory|memo~369_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~669_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~401_q\,
	datac => \Instruction_memory|memo~369_q\,
	datad => \Instruction_memory|memo~669_combout\,
	combout => \Instruction_memory|memo~670_combout\);

-- Location: LCCOMB_X69_Y33_N28
\Instruction_memory|memo~209feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~209feeder_combout\ = \instruction_in[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[12]~input_o\,
	combout => \Instruction_memory|memo~209feeder_combout\);

-- Location: FF_X69_Y33_N29
\Instruction_memory|memo~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~209feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~209_q\);

-- Location: FF_X74_Y33_N7
\Instruction_memory|memo~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~273_q\);

-- Location: FF_X72_Y36_N13
\Instruction_memory|memo~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~241_q\);

-- Location: FF_X74_Y33_N17
\Instruction_memory|memo~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~177_q\);

-- Location: LCCOMB_X74_Y33_N16
\Instruction_memory|memo~671\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~671_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~241_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~177_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~241_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~177_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~671_combout\);

-- Location: LCCOMB_X74_Y33_N6
\Instruction_memory|memo~672\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~672_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~671_combout\ & ((\Instruction_memory|memo~273_q\))) # (!\Instruction_memory|memo~671_combout\ & (\Instruction_memory|memo~209_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~671_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~209_q\,
	datac => \Instruction_memory|memo~273_q\,
	datad => \Instruction_memory|memo~671_combout\,
	combout => \Instruction_memory|memo~672_combout\);

-- Location: LCCOMB_X76_Y32_N2
\Instruction_memory|memo~113feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~113feeder_combout\ = \instruction_in[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[12]~input_o\,
	combout => \Instruction_memory|memo~113feeder_combout\);

-- Location: FF_X76_Y32_N3
\Instruction_memory|memo~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~113feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~113_q\);

-- Location: FF_X72_Y33_N13
\Instruction_memory|memo~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~145_q\);

-- Location: FF_X67_Y33_N17
\Instruction_memory|memo~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~81_q\);

-- Location: FF_X72_Y33_N11
\Instruction_memory|memo~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[12]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~49_q\);

-- Location: LCCOMB_X72_Y33_N10
\Instruction_memory|memo~673\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~673_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~81_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~49_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~81_q\,
	datac => \Instruction_memory|memo~49_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~673_combout\);

-- Location: LCCOMB_X72_Y33_N12
\Instruction_memory|memo~674\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~674_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~673_combout\ & ((\Instruction_memory|memo~145_q\))) # (!\Instruction_memory|memo~673_combout\ & (\Instruction_memory|memo~113_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~673_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~113_q\,
	datac => \Instruction_memory|memo~145_q\,
	datad => \Instruction_memory|memo~673_combout\,
	combout => \Instruction_memory|memo~674_combout\);

-- Location: LCCOMB_X72_Y34_N18
\Instruction_memory|memo~675\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~675_combout\ = (\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\) # ((\Instruction_memory|memo~672_combout\)))) # (!\addr_mem[2]~3_combout\ & (!\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~674_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~672_combout\,
	datad => \Instruction_memory|memo~674_combout\,
	combout => \Instruction_memory|memo~675_combout\);

-- Location: LCCOMB_X72_Y34_N6
\Instruction_memory|memo~678\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~678_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~675_combout\ & (\Instruction_memory|memo~677_combout\)) # (!\Instruction_memory|memo~675_combout\ & ((\Instruction_memory|memo~670_combout\))))) # 
-- (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~675_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~677_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~670_combout\,
	datad => \Instruction_memory|memo~675_combout\,
	combout => \Instruction_memory|memo~678_combout\);

-- Location: FF_X72_Y34_N7
\Instruction_register|Instruc_R|memo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~678_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(12));

-- Location: IOIBUF_X78_Y42_N22
\instruction_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(13),
	o => \instruction_in[13]~input_o\);

-- Location: LCCOMB_X76_Y36_N12
\Instruction_memory|memo~498feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~498feeder_combout\ = \instruction_in[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[13]~input_o\,
	combout => \Instruction_memory|memo~498feeder_combout\);

-- Location: FF_X76_Y36_N13
\Instruction_memory|memo~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~498feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~498_q\);

-- Location: FF_X72_Y36_N11
\Instruction_memory|memo~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~242_q\);

-- Location: FF_X72_Y36_N21
\Instruction_memory|memo~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~370_q\);

-- Location: FF_X71_Y36_N23
\Instruction_memory|memo~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~114_q\);

-- Location: LCCOMB_X71_Y36_N22
\Instruction_memory|memo~679\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~679_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~370_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~370_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~114_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~679_combout\);

-- Location: LCCOMB_X72_Y36_N10
\Instruction_memory|memo~680\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~680_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~679_combout\ & (\Instruction_memory|memo~498_q\)) # (!\Instruction_memory|memo~679_combout\ & ((\Instruction_memory|memo~242_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~679_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~498_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~242_q\,
	datad => \Instruction_memory|memo~679_combout\,
	combout => \Instruction_memory|memo~680_combout\);

-- Location: FF_X71_Y31_N11
\Instruction_memory|memo~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~402_q\);

-- Location: FF_X70_Y33_N23
\Instruction_memory|memo~530\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~530_q\);

-- Location: FF_X70_Y33_N1
\Instruction_memory|memo~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~274_q\);

-- Location: FF_X70_Y32_N31
\Instruction_memory|memo~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~146_q\);

-- Location: LCCOMB_X70_Y32_N30
\Instruction_memory|memo~686\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~686_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~274_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~146_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~274_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~146_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~686_combout\);

-- Location: LCCOMB_X70_Y33_N22
\Instruction_memory|memo~687\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~687_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~686_combout\ & ((\Instruction_memory|memo~530_q\))) # (!\Instruction_memory|memo~686_combout\ & (\Instruction_memory|memo~402_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~686_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~402_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~530_q\,
	datad => \Instruction_memory|memo~686_combout\,
	combout => \Instruction_memory|memo~687_combout\);

-- Location: LCCOMB_X67_Y32_N14
\Instruction_memory|memo~210feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~210feeder_combout\ = \instruction_in[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[13]~input_o\,
	combout => \Instruction_memory|memo~210feeder_combout\);

-- Location: FF_X67_Y32_N15
\Instruction_memory|memo~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~210feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~210_q\);

-- Location: FF_X70_Y32_N13
\Instruction_memory|memo~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~82_q\);

-- Location: LCCOMB_X70_Y32_N12
\Instruction_memory|memo~681\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~681_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~210_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~210_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~82_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~681_combout\);

-- Location: FF_X69_Y36_N15
\Instruction_memory|memo~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~338_q\);

-- Location: FF_X69_Y36_N21
\Instruction_memory|memo~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~466_q\);

-- Location: LCCOMB_X70_Y36_N26
\Instruction_memory|memo~682\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~682_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~681_combout\ & ((\Instruction_memory|memo~466_q\))) # (!\Instruction_memory|memo~681_combout\ & (\Instruction_memory|memo~338_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (\Instruction_memory|memo~681_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~681_combout\,
	datac => \Instruction_memory|memo~338_q\,
	datad => \Instruction_memory|memo~466_q\,
	combout => \Instruction_memory|memo~682_combout\);

-- Location: FF_X71_Y31_N29
\Instruction_memory|memo~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~178_q\);

-- Location: FF_X70_Y36_N25
\Instruction_memory|memo~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~434_q\);

-- Location: FF_X72_Y37_N15
\Instruction_memory|memo~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~306_q\);

-- Location: FF_X70_Y35_N3
\Instruction_memory|memo~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[13]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~50_q\);

-- Location: LCCOMB_X70_Y35_N2
\Instruction_memory|memo~683\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~683_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~306_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~306_q\,
	datac => \Instruction_memory|memo~50_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~683_combout\);

-- Location: LCCOMB_X70_Y36_N24
\Instruction_memory|memo~684\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~684_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~683_combout\ & ((\Instruction_memory|memo~434_q\))) # (!\Instruction_memory|memo~683_combout\ & (\Instruction_memory|memo~178_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~683_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~178_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~434_q\,
	datad => \Instruction_memory|memo~683_combout\,
	combout => \Instruction_memory|memo~684_combout\);

-- Location: LCCOMB_X70_Y36_N10
\Instruction_memory|memo~685\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~685_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\)) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~682_combout\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~684_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~682_combout\,
	datad => \Instruction_memory|memo~684_combout\,
	combout => \Instruction_memory|memo~685_combout\);

-- Location: LCCOMB_X70_Y36_N18
\Instruction_memory|memo~688\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~688_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~685_combout\ & ((\Instruction_memory|memo~687_combout\))) # (!\Instruction_memory|memo~685_combout\ & (\Instruction_memory|memo~680_combout\)))) # 
-- (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~685_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~680_combout\,
	datab => \Instruction_memory|memo~687_combout\,
	datac => \addr_mem[1]~0_combout\,
	datad => \Instruction_memory|memo~685_combout\,
	combout => \Instruction_memory|memo~688_combout\);

-- Location: FF_X70_Y36_N19
\Instruction_register|Instruc_R|memo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~688_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(13));

-- Location: IOIBUF_X78_Y36_N1
\instruction_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(14),
	o => \instruction_in[14]~input_o\);

-- Location: FF_X76_Y34_N27
\Instruction_memory|memo~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~499_q\);

-- Location: FF_X72_Y34_N21
\Instruction_memory|memo~531\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~531_q\);

-- Location: LCCOMB_X69_Y36_N26
\Instruction_memory|memo~467feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~467feeder_combout\ = \instruction_in[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[14]~input_o\,
	combout => \Instruction_memory|memo~467feeder_combout\);

-- Location: FF_X69_Y36_N27
\Instruction_memory|memo~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~467feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~467_q\);

-- Location: FF_X70_Y36_N9
\Instruction_memory|memo~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~435_q\);

-- Location: LCCOMB_X70_Y36_N8
\Instruction_memory|memo~696\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~696_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~467_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~435_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~467_q\,
	datac => \Instruction_memory|memo~435_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~696_combout\);

-- Location: LCCOMB_X72_Y34_N20
\Instruction_memory|memo~697\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~697_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~696_combout\ & ((\Instruction_memory|memo~531_q\))) # (!\Instruction_memory|memo~696_combout\ & (\Instruction_memory|memo~499_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~696_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~499_q\,
	datac => \Instruction_memory|memo~531_q\,
	datad => \Instruction_memory|memo~696_combout\,
	combout => \Instruction_memory|memo~697_combout\);

-- Location: LCCOMB_X71_Y37_N28
\Instruction_memory|memo~83feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~83feeder_combout\ = \instruction_in[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[14]~input_o\,
	combout => \Instruction_memory|memo~83feeder_combout\);

-- Location: FF_X71_Y37_N29
\Instruction_memory|memo~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~83feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~83_q\);

-- Location: FF_X72_Y35_N31
\Instruction_memory|memo~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~147_q\);

-- Location: LCCOMB_X76_Y32_N16
\Instruction_memory|memo~115feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~115feeder_combout\ = \instruction_in[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[14]~input_o\,
	combout => \Instruction_memory|memo~115feeder_combout\);

-- Location: FF_X76_Y32_N17
\Instruction_memory|memo~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~115feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~115_q\);

-- Location: FF_X72_Y35_N17
\Instruction_memory|memo~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~51_q\);

-- Location: LCCOMB_X72_Y35_N16
\Instruction_memory|memo~693\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~693_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~115_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~115_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~51_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~693_combout\);

-- Location: LCCOMB_X72_Y35_N30
\Instruction_memory|memo~694\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~694_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~693_combout\ & ((\Instruction_memory|memo~147_q\))) # (!\Instruction_memory|memo~693_combout\ & (\Instruction_memory|memo~83_q\)))) # (!\addr_mem[0]~1_combout\ & 
-- (((\Instruction_memory|memo~693_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~83_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~147_q\,
	datad => \Instruction_memory|memo~693_combout\,
	combout => \Instruction_memory|memo~694_combout\);

-- Location: FF_X74_Y36_N29
\Instruction_memory|memo~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~339_q\);

-- Location: FF_X75_Y36_N15
\Instruction_memory|memo~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~403_q\);

-- Location: FF_X74_Y35_N25
\Instruction_memory|memo~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~371_q\);

-- Location: FF_X75_Y36_N13
\Instruction_memory|memo~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~307_q\);

-- Location: LCCOMB_X75_Y36_N12
\Instruction_memory|memo~691\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~691_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~371_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~307_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~371_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~307_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~691_combout\);

-- Location: LCCOMB_X75_Y36_N14
\Instruction_memory|memo~692\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~692_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~691_combout\ & ((\Instruction_memory|memo~403_q\))) # (!\Instruction_memory|memo~691_combout\ & (\Instruction_memory|memo~339_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~691_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~339_q\,
	datac => \Instruction_memory|memo~403_q\,
	datad => \Instruction_memory|memo~691_combout\,
	combout => \Instruction_memory|memo~692_combout\);

-- Location: LCCOMB_X72_Y34_N22
\Instruction_memory|memo~695\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~695_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~692_combout\))) # (!\addr_mem[3]~2_combout\ & 
-- (\Instruction_memory|memo~694_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~694_combout\,
	datad => \Instruction_memory|memo~692_combout\,
	combout => \Instruction_memory|memo~695_combout\);

-- Location: FF_X75_Y32_N9
\Instruction_memory|memo~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~275_q\);

-- Location: FF_X72_Y36_N7
\Instruction_memory|memo~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~243_q\);

-- Location: FF_X75_Y33_N29
\Instruction_memory|memo~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~211_q\);

-- Location: FF_X76_Y36_N19
\Instruction_memory|memo~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[14]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~179_q\);

-- Location: LCCOMB_X76_Y36_N18
\Instruction_memory|memo~689\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~689_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~211_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~179_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~211_q\,
	datac => \Instruction_memory|memo~179_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~689_combout\);

-- Location: LCCOMB_X72_Y36_N6
\Instruction_memory|memo~690\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~690_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~689_combout\ & (\Instruction_memory|memo~275_q\)) # (!\Instruction_memory|memo~689_combout\ & ((\Instruction_memory|memo~243_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~689_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~275_q\,
	datac => \Instruction_memory|memo~243_q\,
	datad => \Instruction_memory|memo~689_combout\,
	combout => \Instruction_memory|memo~690_combout\);

-- Location: LCCOMB_X72_Y34_N24
\Instruction_memory|memo~698\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~698_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~695_combout\ & (\Instruction_memory|memo~697_combout\)) # (!\Instruction_memory|memo~695_combout\ & ((\Instruction_memory|memo~690_combout\))))) # 
-- (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~695_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~697_combout\,
	datac => \Instruction_memory|memo~695_combout\,
	datad => \Instruction_memory|memo~690_combout\,
	combout => \Instruction_memory|memo~698_combout\);

-- Location: FF_X72_Y34_N25
\Instruction_register|Instruc_R|memo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~698_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(14));

-- Location: IOIBUF_X60_Y54_N1
\instruction_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(15),
	o => \instruction_in[15]~input_o\);

-- Location: LCCOMB_X70_Y33_N20
\Instruction_memory|memo~276feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~276feeder_combout\ = \instruction_in[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[15]~input_o\,
	combout => \Instruction_memory|memo~276feeder_combout\);

-- Location: FF_X70_Y33_N21
\Instruction_memory|memo~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~276feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~276_q\);

-- Location: FF_X70_Y33_N3
\Instruction_memory|memo~532\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~532_q\);

-- Location: FF_X71_Y31_N1
\Instruction_memory|memo~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~404_q\);

-- Location: FF_X70_Y32_N3
\Instruction_memory|memo~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~148_q\);

-- Location: LCCOMB_X70_Y32_N2
\Instruction_memory|memo~706\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~706_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~404_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~148_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~404_q\,
	datac => \Instruction_memory|memo~148_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~706_combout\);

-- Location: LCCOMB_X70_Y33_N2
\Instruction_memory|memo~707\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~707_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~706_combout\ & ((\Instruction_memory|memo~532_q\))) # (!\Instruction_memory|memo~706_combout\ & (\Instruction_memory|memo~276_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~706_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~276_q\,
	datac => \Instruction_memory|memo~532_q\,
	datad => \Instruction_memory|memo~706_combout\,
	combout => \Instruction_memory|memo~707_combout\);

-- Location: LCCOMB_X69_Y36_N22
\Instruction_memory|memo~468feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~468feeder_combout\ = \instruction_in[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[15]~input_o\,
	combout => \Instruction_memory|memo~468feeder_combout\);

-- Location: FF_X69_Y36_N23
\Instruction_memory|memo~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~468feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~468_q\);

-- Location: FF_X69_Y33_N3
\Instruction_memory|memo~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~212_q\);

-- Location: LCCOMB_X69_Y36_N16
\Instruction_memory|memo~340feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~340feeder_combout\ = \instruction_in[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[15]~input_o\,
	combout => \Instruction_memory|memo~340feeder_combout\);

-- Location: FF_X69_Y36_N17
\Instruction_memory|memo~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~340feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~340_q\);

-- Location: FF_X70_Y32_N9
\Instruction_memory|memo~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~84_q\);

-- Location: LCCOMB_X70_Y32_N8
\Instruction_memory|memo~699\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~699_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~340_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~340_q\,
	datac => \Instruction_memory|memo~84_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~699_combout\);

-- Location: LCCOMB_X69_Y33_N2
\Instruction_memory|memo~700\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~700_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~699_combout\ & (\Instruction_memory|memo~468_q\)) # (!\Instruction_memory|memo~699_combout\ & ((\Instruction_memory|memo~212_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~699_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~468_q\,
	datac => \Instruction_memory|memo~212_q\,
	datad => \Instruction_memory|memo~699_combout\,
	combout => \Instruction_memory|memo~700_combout\);

-- Location: FF_X72_Y37_N9
\Instruction_memory|memo~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~308_q\);

-- Location: FF_X69_Y34_N5
\Instruction_memory|memo~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~436_q\);

-- Location: LCCOMB_X67_Y34_N8
\Instruction_memory|memo~180feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~180feeder_combout\ = \instruction_in[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[15]~input_o\,
	combout => \Instruction_memory|memo~180feeder_combout\);

-- Location: FF_X67_Y34_N9
\Instruction_memory|memo~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~180feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~180_q\);

-- Location: FF_X71_Y34_N13
\Instruction_memory|memo~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~52_q\);

-- Location: LCCOMB_X71_Y34_N12
\Instruction_memory|memo~703\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~703_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~180_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~180_q\,
	datac => \Instruction_memory|memo~52_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~703_combout\);

-- Location: LCCOMB_X69_Y34_N4
\Instruction_memory|memo~704\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~704_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~703_combout\ & ((\Instruction_memory|memo~436_q\))) # (!\Instruction_memory|memo~703_combout\ & (\Instruction_memory|memo~308_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~703_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~308_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~436_q\,
	datad => \Instruction_memory|memo~703_combout\,
	combout => \Instruction_memory|memo~704_combout\);

-- Location: LCCOMB_X71_Y37_N22
\Instruction_memory|memo~372feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~372feeder_combout\ = \instruction_in[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[15]~input_o\,
	combout => \Instruction_memory|memo~372feeder_combout\);

-- Location: FF_X71_Y37_N23
\Instruction_memory|memo~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~372feeder_combout\,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~372_q\);

-- Location: FF_X67_Y36_N15
\Instruction_memory|memo~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~500_q\);

-- Location: LCCOMB_X72_Y36_N24
\Instruction_memory|memo~244feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~244feeder_combout\ = \instruction_in[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[15]~input_o\,
	combout => \Instruction_memory|memo~244feeder_combout\);

-- Location: FF_X72_Y36_N25
\Instruction_memory|memo~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~244feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~244_q\);

-- Location: FF_X67_Y36_N1
\Instruction_memory|memo~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[15]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~116_q\);

-- Location: LCCOMB_X67_Y36_N0
\Instruction_memory|memo~701\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~701_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~244_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~244_q\,
	datac => \Instruction_memory|memo~116_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~701_combout\);

-- Location: LCCOMB_X67_Y36_N14
\Instruction_memory|memo~702\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~702_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~701_combout\ & ((\Instruction_memory|memo~500_q\))) # (!\Instruction_memory|memo~701_combout\ & (\Instruction_memory|memo~372_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~701_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~372_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~500_q\,
	datad => \Instruction_memory|memo~701_combout\,
	combout => \Instruction_memory|memo~702_combout\);

-- Location: LCCOMB_X69_Y34_N6
\Instruction_memory|memo~705\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~705_combout\ = (\addr_mem[0]~1_combout\ & (\addr_mem[1]~0_combout\)) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~702_combout\))) # (!\addr_mem[1]~0_combout\ & 
-- (\Instruction_memory|memo~704_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~704_combout\,
	datad => \Instruction_memory|memo~702_combout\,
	combout => \Instruction_memory|memo~705_combout\);

-- Location: LCCOMB_X69_Y34_N14
\Instruction_memory|memo~708\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~708_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~705_combout\ & (\Instruction_memory|memo~707_combout\)) # (!\Instruction_memory|memo~705_combout\ & ((\Instruction_memory|memo~700_combout\))))) # 
-- (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~705_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~707_combout\,
	datac => \Instruction_memory|memo~700_combout\,
	datad => \Instruction_memory|memo~705_combout\,
	combout => \Instruction_memory|memo~708_combout\);

-- Location: FF_X69_Y34_N15
\Instruction_register|Instruc_R|memo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~708_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(15));

-- Location: IOIBUF_X78_Y34_N8
\instruction_in[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(16),
	o => \instruction_in[16]~input_o\);

-- Location: LCCOMB_X69_Y36_N0
\Instruction_memory|memo~469feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~469feeder_combout\ = \instruction_in[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[16]~input_o\,
	combout => \Instruction_memory|memo~469feeder_combout\);

-- Location: FF_X69_Y36_N1
\Instruction_memory|memo~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~469feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~469_q\);

-- Location: FF_X71_Y35_N19
\Instruction_memory|memo~533\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~533_q\);

-- Location: FF_X74_Y35_N13
\Instruction_memory|memo~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~501_q\);

-- Location: FF_X70_Y35_N25
\Instruction_memory|memo~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~437_q\);

-- Location: LCCOMB_X70_Y35_N24
\Instruction_memory|memo~716\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~716_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~501_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~437_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~501_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~437_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~716_combout\);

-- Location: LCCOMB_X71_Y35_N18
\Instruction_memory|memo~717\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~717_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~716_combout\ & ((\Instruction_memory|memo~533_q\))) # (!\Instruction_memory|memo~716_combout\ & (\Instruction_memory|memo~469_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~716_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~469_q\,
	datac => \Instruction_memory|memo~533_q\,
	datad => \Instruction_memory|memo~716_combout\,
	combout => \Instruction_memory|memo~717_combout\);

-- Location: FF_X75_Y35_N19
\Instruction_memory|memo~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~405_q\);

-- Location: FF_X74_Y35_N31
\Instruction_memory|memo~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~373_q\);

-- Location: FF_X76_Y35_N21
\Instruction_memory|memo~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~341_q\);

-- Location: FF_X75_Y35_N29
\Instruction_memory|memo~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~309_q\);

-- Location: LCCOMB_X75_Y35_N28
\Instruction_memory|memo~709\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~709_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~341_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~309_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~341_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~309_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~709_combout\);

-- Location: LCCOMB_X74_Y35_N30
\Instruction_memory|memo~710\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~710_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~709_combout\ & (\Instruction_memory|memo~405_q\)) # (!\Instruction_memory|memo~709_combout\ & ((\Instruction_memory|memo~373_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~709_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~405_q\,
	datac => \Instruction_memory|memo~373_q\,
	datad => \Instruction_memory|memo~709_combout\,
	combout => \Instruction_memory|memo~710_combout\);

-- Location: FF_X69_Y33_N25
\Instruction_memory|memo~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~213_q\);

-- Location: FF_X74_Y33_N11
\Instruction_memory|memo~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~277_q\);

-- Location: FF_X75_Y33_N23
\Instruction_memory|memo~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~245_q\);

-- Location: FF_X74_Y33_N29
\Instruction_memory|memo~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~181_q\);

-- Location: LCCOMB_X74_Y33_N28
\Instruction_memory|memo~711\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~711_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~245_q\) # ((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~181_q\ & !\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~245_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~181_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~711_combout\);

-- Location: LCCOMB_X74_Y33_N10
\Instruction_memory|memo~712\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~712_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~711_combout\ & ((\Instruction_memory|memo~277_q\))) # (!\Instruction_memory|memo~711_combout\ & (\Instruction_memory|memo~213_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~711_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~213_q\,
	datac => \Instruction_memory|memo~277_q\,
	datad => \Instruction_memory|memo~711_combout\,
	combout => \Instruction_memory|memo~712_combout\);

-- Location: LCCOMB_X71_Y36_N28
\Instruction_memory|memo~117feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~117feeder_combout\ = \instruction_in[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[16]~input_o\,
	combout => \Instruction_memory|memo~117feeder_combout\);

-- Location: FF_X71_Y36_N29
\Instruction_memory|memo~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~117feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~117_q\);

-- Location: FF_X72_Y33_N25
\Instruction_memory|memo~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~149_q\);

-- Location: FF_X67_Y33_N27
\Instruction_memory|memo~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~85_q\);

-- Location: FF_X72_Y33_N3
\Instruction_memory|memo~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[16]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~53_q\);

-- Location: LCCOMB_X72_Y33_N2
\Instruction_memory|memo~713\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~713_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~85_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~53_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~85_q\,
	datac => \Instruction_memory|memo~53_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~713_combout\);

-- Location: LCCOMB_X72_Y33_N24
\Instruction_memory|memo~714\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~714_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~713_combout\ & ((\Instruction_memory|memo~149_q\))) # (!\Instruction_memory|memo~713_combout\ & (\Instruction_memory|memo~117_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~713_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~117_q\,
	datac => \Instruction_memory|memo~149_q\,
	datad => \Instruction_memory|memo~713_combout\,
	combout => \Instruction_memory|memo~714_combout\);

-- Location: LCCOMB_X72_Y33_N14
\Instruction_memory|memo~715\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~715_combout\ = (\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\) # ((\Instruction_memory|memo~712_combout\)))) # (!\addr_mem[2]~3_combout\ & (!\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~714_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~712_combout\,
	datad => \Instruction_memory|memo~714_combout\,
	combout => \Instruction_memory|memo~715_combout\);

-- Location: LCCOMB_X71_Y35_N10
\Instruction_memory|memo~718\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~718_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~715_combout\ & (\Instruction_memory|memo~717_combout\)) # (!\Instruction_memory|memo~715_combout\ & ((\Instruction_memory|memo~710_combout\))))) # 
-- (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~715_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~717_combout\,
	datac => \Instruction_memory|memo~710_combout\,
	datad => \Instruction_memory|memo~715_combout\,
	combout => \Instruction_memory|memo~718_combout\);

-- Location: FF_X71_Y35_N11
\Instruction_register|Instruc_R|memo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~718_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(16));

-- Location: IOIBUF_X78_Y37_N15
\instruction_in[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(17),
	o => \instruction_in[17]~input_o\);

-- Location: LCCOMB_X72_Y31_N8
\Instruction_memory|memo~406feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~406feeder_combout\ = \instruction_in[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[17]~input_o\,
	combout => \Instruction_memory|memo~406feeder_combout\);

-- Location: FF_X72_Y31_N9
\Instruction_memory|memo~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~406feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~406_q\);

-- Location: FF_X70_Y33_N27
\Instruction_memory|memo~534\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~534_q\);

-- Location: FF_X70_Y33_N25
\Instruction_memory|memo~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~278_q\);

-- Location: FF_X70_Y32_N27
\Instruction_memory|memo~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~150_q\);

-- Location: LCCOMB_X70_Y32_N26
\Instruction_memory|memo~726\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~726_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~278_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~150_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~278_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~150_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~726_combout\);

-- Location: LCCOMB_X70_Y33_N26
\Instruction_memory|memo~727\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~727_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~726_combout\ & ((\Instruction_memory|memo~534_q\))) # (!\Instruction_memory|memo~726_combout\ & (\Instruction_memory|memo~406_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~726_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~406_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~534_q\,
	datad => \Instruction_memory|memo~726_combout\,
	combout => \Instruction_memory|memo~727_combout\);

-- Location: FF_X71_Y36_N17
\Instruction_memory|memo~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~502_q\);

-- Location: FF_X72_Y36_N3
\Instruction_memory|memo~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~246_q\);

-- Location: FF_X71_Y36_N15
\Instruction_memory|memo~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~118_q\);

-- Location: FF_X72_Y36_N1
\Instruction_memory|memo~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~374_q\);

-- Location: LCCOMB_X72_Y36_N0
\Instruction_memory|memo~719\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~719_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~374_q\))) # (!\addr_mem[3]~2_combout\ & 
-- (\Instruction_memory|memo~118_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~118_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~374_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~719_combout\);

-- Location: LCCOMB_X72_Y36_N2
\Instruction_memory|memo~720\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~720_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~719_combout\ & (\Instruction_memory|memo~502_q\)) # (!\Instruction_memory|memo~719_combout\ & ((\Instruction_memory|memo~246_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~719_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~502_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~246_q\,
	datad => \Instruction_memory|memo~719_combout\,
	combout => \Instruction_memory|memo~720_combout\);

-- Location: LCCOMB_X71_Y31_N30
\Instruction_memory|memo~182feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~182feeder_combout\ = \instruction_in[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[17]~input_o\,
	combout => \Instruction_memory|memo~182feeder_combout\);

-- Location: FF_X71_Y31_N31
\Instruction_memory|memo~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~182feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~182_q\);

-- Location: FF_X70_Y36_N23
\Instruction_memory|memo~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~438_q\);

-- Location: LCCOMB_X72_Y37_N10
\Instruction_memory|memo~310feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~310feeder_combout\ = \instruction_in[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[17]~input_o\,
	combout => \Instruction_memory|memo~310feeder_combout\);

-- Location: FF_X72_Y37_N11
\Instruction_memory|memo~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~310feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~310_q\);

-- Location: FF_X70_Y35_N23
\Instruction_memory|memo~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~54_q\);

-- Location: LCCOMB_X70_Y35_N22
\Instruction_memory|memo~723\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~723_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~310_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~54_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~310_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~54_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~723_combout\);

-- Location: LCCOMB_X70_Y36_N22
\Instruction_memory|memo~724\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~724_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~723_combout\ & ((\Instruction_memory|memo~438_q\))) # (!\Instruction_memory|memo~723_combout\ & (\Instruction_memory|memo~182_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~723_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~182_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~438_q\,
	datad => \Instruction_memory|memo~723_combout\,
	combout => \Instruction_memory|memo~724_combout\);

-- Location: FF_X69_Y36_N19
\Instruction_memory|memo~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~342_q\);

-- Location: FF_X69_Y36_N25
\Instruction_memory|memo~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~470_q\);

-- Location: FF_X67_Y32_N1
\Instruction_memory|memo~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~214_q\);

-- Location: FF_X70_Y32_N17
\Instruction_memory|memo~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[17]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~86_q\);

-- Location: LCCOMB_X70_Y32_N16
\Instruction_memory|memo~721\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~721_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~214_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~86_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~214_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~86_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~721_combout\);

-- Location: LCCOMB_X69_Y36_N24
\Instruction_memory|memo~722\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~722_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~721_combout\ & ((\Instruction_memory|memo~470_q\))) # (!\Instruction_memory|memo~721_combout\ & (\Instruction_memory|memo~342_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~721_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~342_q\,
	datac => \Instruction_memory|memo~470_q\,
	datad => \Instruction_memory|memo~721_combout\,
	combout => \Instruction_memory|memo~722_combout\);

-- Location: LCCOMB_X70_Y36_N0
\Instruction_memory|memo~725\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~725_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\)) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~722_combout\))) # (!\addr_mem[0]~1_combout\ & 
-- (\Instruction_memory|memo~724_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~724_combout\,
	datad => \Instruction_memory|memo~722_combout\,
	combout => \Instruction_memory|memo~725_combout\);

-- Location: LCCOMB_X70_Y36_N16
\Instruction_memory|memo~728\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~728_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~725_combout\ & (\Instruction_memory|memo~727_combout\)) # (!\Instruction_memory|memo~725_combout\ & ((\Instruction_memory|memo~720_combout\))))) # 
-- (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~725_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~727_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~720_combout\,
	datad => \Instruction_memory|memo~725_combout\,
	combout => \Instruction_memory|memo~728_combout\);

-- Location: FF_X70_Y36_N17
\Instruction_register|Instruc_R|memo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~728_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(17));

-- Location: IOIBUF_X78_Y41_N8
\instruction_in[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(18),
	o => \instruction_in[18]~input_o\);

-- Location: LCCOMB_X74_Y35_N22
\Instruction_memory|memo~503feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~503feeder_combout\ = \instruction_in[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[18]~input_o\,
	combout => \Instruction_memory|memo~503feeder_combout\);

-- Location: FF_X74_Y35_N23
\Instruction_memory|memo~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~503feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~503_q\);

-- Location: FF_X69_Y35_N9
\Instruction_memory|memo~535\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~535_q\);

-- Location: FF_X67_Y35_N9
\Instruction_memory|memo~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~471_q\);

-- Location: FF_X67_Y35_N27
\Instruction_memory|memo~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~439_q\);

-- Location: LCCOMB_X67_Y35_N26
\Instruction_memory|memo~736\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~736_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~471_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~439_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~471_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~439_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~736_combout\);

-- Location: LCCOMB_X69_Y35_N8
\Instruction_memory|memo~737\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~737_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~736_combout\ & ((\Instruction_memory|memo~535_q\))) # (!\Instruction_memory|memo~736_combout\ & (\Instruction_memory|memo~503_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~736_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~503_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~535_q\,
	datad => \Instruction_memory|memo~736_combout\,
	combout => \Instruction_memory|memo~737_combout\);

-- Location: FF_X76_Y35_N27
\Instruction_memory|memo~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~343_q\);

-- Location: FF_X75_Y35_N11
\Instruction_memory|memo~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~407_q\);

-- Location: FF_X76_Y35_N13
\Instruction_memory|memo~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~375_q\);

-- Location: FF_X75_Y35_N21
\Instruction_memory|memo~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~311_q\);

-- Location: LCCOMB_X75_Y35_N20
\Instruction_memory|memo~731\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~731_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~375_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~311_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~375_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~311_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~731_combout\);

-- Location: LCCOMB_X75_Y35_N10
\Instruction_memory|memo~732\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~732_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~731_combout\ & ((\Instruction_memory|memo~407_q\))) # (!\Instruction_memory|memo~731_combout\ & (\Instruction_memory|memo~343_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~731_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~343_q\,
	datac => \Instruction_memory|memo~407_q\,
	datad => \Instruction_memory|memo~731_combout\,
	combout => \Instruction_memory|memo~732_combout\);

-- Location: LCCOMB_X71_Y37_N4
\Instruction_memory|memo~87feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~87feeder_combout\ = \instruction_in[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[18]~input_o\,
	combout => \Instruction_memory|memo~87feeder_combout\);

-- Location: FF_X71_Y37_N5
\Instruction_memory|memo~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~87feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~87_q\);

-- Location: FF_X72_Y35_N7
\Instruction_memory|memo~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~151_q\);

-- Location: FF_X71_Y36_N27
\Instruction_memory|memo~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~119_q\);

-- Location: FF_X72_Y35_N29
\Instruction_memory|memo~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~55_q\);

-- Location: LCCOMB_X72_Y35_N28
\Instruction_memory|memo~733\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~733_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~119_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~55_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~119_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~55_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~733_combout\);

-- Location: LCCOMB_X72_Y35_N6
\Instruction_memory|memo~734\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~734_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~733_combout\ & ((\Instruction_memory|memo~151_q\))) # (!\Instruction_memory|memo~733_combout\ & (\Instruction_memory|memo~87_q\)))) # (!\addr_mem[0]~1_combout\ & 
-- (((\Instruction_memory|memo~733_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~87_q\,
	datac => \Instruction_memory|memo~151_q\,
	datad => \Instruction_memory|memo~733_combout\,
	combout => \Instruction_memory|memo~734_combout\);

-- Location: LCCOMB_X72_Y35_N8
\Instruction_memory|memo~735\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~735_combout\ = (\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\) # ((\Instruction_memory|memo~732_combout\)))) # (!\addr_mem[3]~2_combout\ & (!\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~734_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~732_combout\,
	datad => \Instruction_memory|memo~734_combout\,
	combout => \Instruction_memory|memo~735_combout\);

-- Location: LCCOMB_X76_Y33_N8
\Instruction_memory|memo~279feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~279feeder_combout\ = \instruction_in[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[18]~input_o\,
	combout => \Instruction_memory|memo~279feeder_combout\);

-- Location: FF_X76_Y33_N9
\Instruction_memory|memo~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~279feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~279_q\);

-- Location: FF_X75_Y33_N1
\Instruction_memory|memo~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~247_q\);

-- Location: FF_X75_Y33_N7
\Instruction_memory|memo~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~215_q\);

-- Location: FF_X74_Y33_N9
\Instruction_memory|memo~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[18]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~183_q\);

-- Location: LCCOMB_X74_Y33_N8
\Instruction_memory|memo~729\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~729_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~215_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~183_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~215_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~183_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~729_combout\);

-- Location: LCCOMB_X75_Y33_N0
\Instruction_memory|memo~730\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~730_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~729_combout\ & (\Instruction_memory|memo~279_q\)) # (!\Instruction_memory|memo~729_combout\ & ((\Instruction_memory|memo~247_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~729_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~279_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~247_q\,
	datad => \Instruction_memory|memo~729_combout\,
	combout => \Instruction_memory|memo~730_combout\);

-- Location: LCCOMB_X69_Y35_N24
\Instruction_memory|memo~738\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~738_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~735_combout\ & (\Instruction_memory|memo~737_combout\)) # (!\Instruction_memory|memo~735_combout\ & ((\Instruction_memory|memo~730_combout\))))) # 
-- (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~735_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~737_combout\,
	datac => \Instruction_memory|memo~735_combout\,
	datad => \Instruction_memory|memo~730_combout\,
	combout => \Instruction_memory|memo~738_combout\);

-- Location: FF_X69_Y35_N25
\Instruction_register|Instruc_R|memo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~738_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(18));

-- Location: IOIBUF_X60_Y54_N22
\instruction_in[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(19),
	o => \instruction_in[19]~input_o\);

-- Location: LCCOMB_X70_Y31_N4
\Instruction_memory|memo~280feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~280feeder_combout\ = \instruction_in[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[19]~input_o\,
	combout => \Instruction_memory|memo~280feeder_combout\);

-- Location: FF_X70_Y31_N5
\Instruction_memory|memo~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~280feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~280_q\);

-- Location: FF_X69_Y35_N19
\Instruction_memory|memo~536\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~536_q\);

-- Location: FF_X70_Y32_N23
\Instruction_memory|memo~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~152_q\);

-- Location: FF_X71_Y31_N27
\Instruction_memory|memo~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~408_q\);

-- Location: LCCOMB_X70_Y32_N22
\Instruction_memory|memo~746\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~746_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~408_q\))) # (!\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~152_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~152_q\,
	datad => \Instruction_memory|memo~408_q\,
	combout => \Instruction_memory|memo~746_combout\);

-- Location: LCCOMB_X69_Y35_N18
\Instruction_memory|memo~747\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~747_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~746_combout\ & ((\Instruction_memory|memo~536_q\))) # (!\Instruction_memory|memo~746_combout\ & (\Instruction_memory|memo~280_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~746_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~280_q\,
	datac => \Instruction_memory|memo~536_q\,
	datad => \Instruction_memory|memo~746_combout\,
	combout => \Instruction_memory|memo~747_combout\);

-- Location: LCCOMB_X66_Y32_N24
\Instruction_memory|memo~472feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~472feeder_combout\ = \instruction_in[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[19]~input_o\,
	combout => \Instruction_memory|memo~472feeder_combout\);

-- Location: FF_X66_Y32_N25
\Instruction_memory|memo~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~472feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~472_q\);

-- Location: FF_X67_Y32_N27
\Instruction_memory|memo~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~216_q\);

-- Location: LCCOMB_X70_Y31_N30
\Instruction_memory|memo~344feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~344feeder_combout\ = \instruction_in[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[19]~input_o\,
	combout => \Instruction_memory|memo~344feeder_combout\);

-- Location: FF_X70_Y31_N31
\Instruction_memory|memo~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~344feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~344_q\);

-- Location: FF_X70_Y32_N25
\Instruction_memory|memo~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~88_q\);

-- Location: LCCOMB_X70_Y32_N24
\Instruction_memory|memo~739\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~739_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~344_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~88_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~344_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~88_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~739_combout\);

-- Location: LCCOMB_X67_Y32_N26
\Instruction_memory|memo~740\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~740_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~739_combout\ & (\Instruction_memory|memo~472_q\)) # (!\Instruction_memory|memo~739_combout\ & ((\Instruction_memory|memo~216_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~739_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~472_q\,
	datac => \Instruction_memory|memo~216_q\,
	datad => \Instruction_memory|memo~739_combout\,
	combout => \Instruction_memory|memo~740_combout\);

-- Location: FF_X70_Y37_N19
\Instruction_memory|memo~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~312_q\);

-- Location: FF_X70_Y35_N27
\Instruction_memory|memo~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~440_q\);

-- Location: FF_X71_Y31_N21
\Instruction_memory|memo~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~184_q\);

-- Location: FF_X70_Y35_N29
\Instruction_memory|memo~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~56_q\);

-- Location: LCCOMB_X70_Y35_N28
\Instruction_memory|memo~743\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~743_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~184_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~56_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~184_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~56_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~743_combout\);

-- Location: LCCOMB_X70_Y35_N26
\Instruction_memory|memo~744\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~744_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~743_combout\ & ((\Instruction_memory|memo~440_q\))) # (!\Instruction_memory|memo~743_combout\ & (\Instruction_memory|memo~312_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~743_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~312_q\,
	datac => \Instruction_memory|memo~440_q\,
	datad => \Instruction_memory|memo~743_combout\,
	combout => \Instruction_memory|memo~744_combout\);

-- Location: LCCOMB_X71_Y37_N26
\Instruction_memory|memo~376feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~376feeder_combout\ = \instruction_in[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[19]~input_o\,
	combout => \Instruction_memory|memo~376feeder_combout\);

-- Location: FF_X71_Y37_N27
\Instruction_memory|memo~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~376feeder_combout\,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~376_q\);

-- Location: FF_X71_Y36_N31
\Instruction_memory|memo~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~504_q\);

-- Location: FF_X67_Y32_N9
\Instruction_memory|memo~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~248_q\);

-- Location: FF_X71_Y36_N13
\Instruction_memory|memo~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[19]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~120_q\);

-- Location: LCCOMB_X71_Y36_N12
\Instruction_memory|memo~741\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~741_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~248_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~120_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~248_q\,
	datac => \Instruction_memory|memo~120_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~741_combout\);

-- Location: LCCOMB_X71_Y36_N30
\Instruction_memory|memo~742\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~742_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~741_combout\ & ((\Instruction_memory|memo~504_q\))) # (!\Instruction_memory|memo~741_combout\ & (\Instruction_memory|memo~376_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~741_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~376_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~504_q\,
	datad => \Instruction_memory|memo~741_combout\,
	combout => \Instruction_memory|memo~742_combout\);

-- Location: LCCOMB_X70_Y35_N16
\Instruction_memory|memo~745\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~745_combout\ = (\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~742_combout\) # (\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~744_combout\ & ((!\addr_mem[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~744_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~742_combout\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~745_combout\);

-- Location: LCCOMB_X69_Y35_N10
\Instruction_memory|memo~748\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~748_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~745_combout\ & (\Instruction_memory|memo~747_combout\)) # (!\Instruction_memory|memo~745_combout\ & ((\Instruction_memory|memo~740_combout\))))) # 
-- (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~745_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~747_combout\,
	datac => \Instruction_memory|memo~740_combout\,
	datad => \Instruction_memory|memo~745_combout\,
	combout => \Instruction_memory|memo~748_combout\);

-- Location: FF_X69_Y35_N11
\Instruction_register|Instruc_R|memo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~748_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(19));

-- Location: IOIBUF_X78_Y42_N1
\instruction_in[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(20),
	o => \instruction_in[20]~input_o\);

-- Location: LCCOMB_X74_Y35_N0
\Instruction_memory|memo~377feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~377feeder_combout\ = \instruction_in[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[20]~input_o\,
	combout => \Instruction_memory|memo~377feeder_combout\);

-- Location: FF_X74_Y35_N1
\Instruction_memory|memo~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~377feeder_combout\,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~377_q\);

-- Location: LCCOMB_X76_Y35_N2
\Instruction_memory|memo~345feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~345feeder_combout\ = \instruction_in[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[20]~input_o\,
	combout => \Instruction_memory|memo~345feeder_combout\);

-- Location: FF_X76_Y35_N3
\Instruction_memory|memo~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~345feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~345_q\);

-- Location: FF_X75_Y35_N1
\Instruction_memory|memo~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~313_q\);

-- Location: LCCOMB_X75_Y35_N0
\Instruction_memory|memo~749\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~749_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~345_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~313_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~345_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~313_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~749_combout\);

-- Location: FF_X75_Y35_N7
\Instruction_memory|memo~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~409_q\);

-- Location: LCCOMB_X75_Y35_N6
\Instruction_memory|memo~750\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~750_combout\ = (\Instruction_memory|memo~749_combout\ & (((\Instruction_memory|memo~409_q\) # (!\addr_mem[1]~0_combout\)))) # (!\Instruction_memory|memo~749_combout\ & (\Instruction_memory|memo~377_q\ & 
-- ((\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~377_q\,
	datab => \Instruction_memory|memo~749_combout\,
	datac => \Instruction_memory|memo~409_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~750_combout\);

-- Location: FF_X69_Y36_N31
\Instruction_memory|memo~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~473_q\);

-- Location: FF_X71_Y35_N31
\Instruction_memory|memo~537\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~537_q\);

-- Location: LCCOMB_X74_Y35_N18
\Instruction_memory|memo~505feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~505feeder_combout\ = \instruction_in[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[20]~input_o\,
	combout => \Instruction_memory|memo~505feeder_combout\);

-- Location: FF_X74_Y35_N19
\Instruction_memory|memo~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~505feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~505_q\);

-- Location: FF_X67_Y35_N21
\Instruction_memory|memo~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~441_q\);

-- Location: LCCOMB_X67_Y35_N20
\Instruction_memory|memo~756\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~756_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~505_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~441_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~505_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~441_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~756_combout\);

-- Location: LCCOMB_X71_Y35_N30
\Instruction_memory|memo~757\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~757_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~756_combout\ & ((\Instruction_memory|memo~537_q\))) # (!\Instruction_memory|memo~756_combout\ & (\Instruction_memory|memo~473_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~756_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~473_q\,
	datac => \Instruction_memory|memo~537_q\,
	datad => \Instruction_memory|memo~756_combout\,
	combout => \Instruction_memory|memo~757_combout\);

-- Location: FF_X75_Y33_N5
\Instruction_memory|memo~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~217_q\);

-- Location: FF_X76_Y33_N13
\Instruction_memory|memo~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~281_q\);

-- Location: FF_X75_Y33_N19
\Instruction_memory|memo~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~249_q\);

-- Location: FF_X76_Y33_N11
\Instruction_memory|memo~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~185_q\);

-- Location: LCCOMB_X76_Y33_N10
\Instruction_memory|memo~751\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~751_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~249_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~185_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~249_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~185_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~751_combout\);

-- Location: LCCOMB_X76_Y33_N12
\Instruction_memory|memo~752\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~752_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~751_combout\ & ((\Instruction_memory|memo~281_q\))) # (!\Instruction_memory|memo~751_combout\ & (\Instruction_memory|memo~217_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~751_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~217_q\,
	datac => \Instruction_memory|memo~281_q\,
	datad => \Instruction_memory|memo~751_combout\,
	combout => \Instruction_memory|memo~752_combout\);

-- Location: LCCOMB_X74_Y34_N4
\Instruction_memory|memo~121feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~121feeder_combout\ = \instruction_in[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[20]~input_o\,
	combout => \Instruction_memory|memo~121feeder_combout\);

-- Location: FF_X74_Y34_N5
\Instruction_memory|memo~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~121feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~121_q\);

-- Location: FF_X72_Y35_N25
\Instruction_memory|memo~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~153_q\);

-- Location: LCCOMB_X71_Y37_N8
\Instruction_memory|memo~89feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~89feeder_combout\ = \instruction_in[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[20]~input_o\,
	combout => \Instruction_memory|memo~89feeder_combout\);

-- Location: FF_X71_Y37_N9
\Instruction_memory|memo~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~89feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~89_q\);

-- Location: FF_X72_Y35_N3
\Instruction_memory|memo~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[20]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~57_q\);

-- Location: LCCOMB_X72_Y35_N2
\Instruction_memory|memo~753\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~753_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~89_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~57_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~89_q\,
	datac => \Instruction_memory|memo~57_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~753_combout\);

-- Location: LCCOMB_X72_Y35_N24
\Instruction_memory|memo~754\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~754_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~753_combout\ & ((\Instruction_memory|memo~153_q\))) # (!\Instruction_memory|memo~753_combout\ & (\Instruction_memory|memo~121_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~753_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~121_q\,
	datac => \Instruction_memory|memo~153_q\,
	datad => \Instruction_memory|memo~753_combout\,
	combout => \Instruction_memory|memo~754_combout\);

-- Location: LCCOMB_X71_Y35_N12
\Instruction_memory|memo~755\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~755_combout\ = (\addr_mem[3]~2_combout\ & (\addr_mem[2]~3_combout\)) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~752_combout\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~754_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~752_combout\,
	datad => \Instruction_memory|memo~754_combout\,
	combout => \Instruction_memory|memo~755_combout\);

-- Location: LCCOMB_X71_Y35_N16
\Instruction_memory|memo~758\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~758_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~755_combout\ & ((\Instruction_memory|memo~757_combout\))) # (!\Instruction_memory|memo~755_combout\ & (\Instruction_memory|memo~750_combout\)))) # 
-- (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~755_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~750_combout\,
	datac => \Instruction_memory|memo~757_combout\,
	datad => \Instruction_memory|memo~755_combout\,
	combout => \Instruction_memory|memo~758_combout\);

-- Location: FF_X71_Y35_N17
\Instruction_register|Instruc_R|memo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~758_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(20));

-- Location: IOIBUF_X78_Y40_N15
\instruction_in[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(21),
	o => \instruction_in[21]~input_o\);

-- Location: FF_X71_Y31_N15
\Instruction_memory|memo~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~410_q\);

-- Location: FF_X70_Y34_N19
\Instruction_memory|memo~538\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~538_q\);

-- Location: FF_X70_Y31_N9
\Instruction_memory|memo~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~282_q\);

-- Location: FF_X74_Y34_N13
\Instruction_memory|memo~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~154_q\);

-- Location: LCCOMB_X74_Y34_N12
\Instruction_memory|memo~766\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~766_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~282_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~154_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~282_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~154_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~766_combout\);

-- Location: LCCOMB_X70_Y34_N18
\Instruction_memory|memo~767\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~767_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~766_combout\ & ((\Instruction_memory|memo~538_q\))) # (!\Instruction_memory|memo~766_combout\ & (\Instruction_memory|memo~410_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~766_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~410_q\,
	datac => \Instruction_memory|memo~538_q\,
	datad => \Instruction_memory|memo~766_combout\,
	combout => \Instruction_memory|memo~767_combout\);

-- Location: LCCOMB_X76_Y34_N30
\Instruction_memory|memo~506feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~506feeder_combout\ = \instruction_in[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[21]~input_o\,
	combout => \Instruction_memory|memo~506feeder_combout\);

-- Location: FF_X76_Y34_N31
\Instruction_memory|memo~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~506feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~506_q\);

-- Location: FF_X75_Y34_N15
\Instruction_memory|memo~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~250_q\);

-- Location: FF_X74_Y34_N27
\Instruction_memory|memo~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~122_q\);

-- Location: LCCOMB_X76_Y34_N0
\Instruction_memory|memo~378feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~378feeder_combout\ = \instruction_in[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[21]~input_o\,
	combout => \Instruction_memory|memo~378feeder_combout\);

-- Location: FF_X76_Y34_N1
\Instruction_memory|memo~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~378feeder_combout\,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~378_q\);

-- Location: LCCOMB_X75_Y34_N20
\Instruction_memory|memo~759\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~759_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~378_q\))) # (!\addr_mem[3]~2_combout\ & 
-- (\Instruction_memory|memo~122_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~122_q\,
	datab => \Instruction_memory|memo~378_q\,
	datac => \addr_mem[2]~3_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~759_combout\);

-- Location: LCCOMB_X75_Y34_N14
\Instruction_memory|memo~760\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~760_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~759_combout\ & (\Instruction_memory|memo~506_q\)) # (!\Instruction_memory|memo~759_combout\ & ((\Instruction_memory|memo~250_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~759_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~506_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~250_q\,
	datad => \Instruction_memory|memo~759_combout\,
	combout => \Instruction_memory|memo~760_combout\);

-- Location: FF_X71_Y31_N25
\Instruction_memory|memo~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~186_q\);

-- Location: FF_X71_Y34_N5
\Instruction_memory|memo~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~442_q\);

-- Location: FF_X71_Y34_N7
\Instruction_memory|memo~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~58_q\);

-- Location: LCCOMB_X72_Y37_N16
\Instruction_memory|memo~314feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~314feeder_combout\ = \instruction_in[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[21]~input_o\,
	combout => \Instruction_memory|memo~314feeder_combout\);

-- Location: FF_X72_Y37_N17
\Instruction_memory|memo~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~314feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~314_q\);

-- Location: LCCOMB_X71_Y34_N6
\Instruction_memory|memo~763\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~763_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~314_q\))) # (!\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~58_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~58_q\,
	datad => \Instruction_memory|memo~314_q\,
	combout => \Instruction_memory|memo~763_combout\);

-- Location: LCCOMB_X71_Y34_N4
\Instruction_memory|memo~764\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~764_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~763_combout\ & ((\Instruction_memory|memo~442_q\))) # (!\Instruction_memory|memo~763_combout\ & (\Instruction_memory|memo~186_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~763_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~186_q\,
	datac => \Instruction_memory|memo~442_q\,
	datad => \Instruction_memory|memo~763_combout\,
	combout => \Instruction_memory|memo~764_combout\);

-- Location: FF_X70_Y31_N7
\Instruction_memory|memo~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~346_q\);

-- Location: FF_X69_Y32_N27
\Instruction_memory|memo~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~474_q\);

-- Location: LCCOMB_X67_Y32_N10
\Instruction_memory|memo~218feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~218feeder_combout\ = \instruction_in[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[21]~input_o\,
	combout => \Instruction_memory|memo~218feeder_combout\);

-- Location: FF_X67_Y32_N11
\Instruction_memory|memo~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~218feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~218_q\);

-- Location: FF_X69_Y32_N17
\Instruction_memory|memo~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[21]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~90_q\);

-- Location: LCCOMB_X69_Y32_N16
\Instruction_memory|memo~761\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~761_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~218_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~90_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~218_q\,
	datac => \Instruction_memory|memo~90_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~761_combout\);

-- Location: LCCOMB_X69_Y32_N26
\Instruction_memory|memo~762\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~762_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~761_combout\ & ((\Instruction_memory|memo~474_q\))) # (!\Instruction_memory|memo~761_combout\ & (\Instruction_memory|memo~346_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~761_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~346_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~474_q\,
	datad => \Instruction_memory|memo~761_combout\,
	combout => \Instruction_memory|memo~762_combout\);

-- Location: LCCOMB_X71_Y34_N18
\Instruction_memory|memo~765\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~765_combout\ = (\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\) # ((\Instruction_memory|memo~762_combout\)))) # (!\addr_mem[0]~1_combout\ & (!\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~764_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~764_combout\,
	datad => \Instruction_memory|memo~762_combout\,
	combout => \Instruction_memory|memo~765_combout\);

-- Location: LCCOMB_X70_Y34_N26
\Instruction_memory|memo~768\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~768_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~765_combout\ & (\Instruction_memory|memo~767_combout\)) # (!\Instruction_memory|memo~765_combout\ & ((\Instruction_memory|memo~760_combout\))))) # 
-- (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~765_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~767_combout\,
	datac => \Instruction_memory|memo~760_combout\,
	datad => \Instruction_memory|memo~765_combout\,
	combout => \Instruction_memory|memo~768_combout\);

-- Location: FF_X70_Y34_N27
\Instruction_register|Instruc_R|memo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~768_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(21));

-- Location: IOIBUF_X66_Y54_N1
\instruction_in[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(22),
	o => \instruction_in[22]~input_o\);

-- Location: LCCOMB_X74_Y35_N16
\Instruction_memory|memo~507feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~507feeder_combout\ = \instruction_in[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[22]~input_o\,
	combout => \Instruction_memory|memo~507feeder_combout\);

-- Location: FF_X74_Y35_N17
\Instruction_memory|memo~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~507feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~507_q\);

-- Location: FF_X69_Y35_N5
\Instruction_memory|memo~539\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~539_q\);

-- Location: FF_X67_Y35_N19
\Instruction_memory|memo~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~475_q\);

-- Location: FF_X67_Y35_N25
\Instruction_memory|memo~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~443_q\);

-- Location: LCCOMB_X67_Y35_N24
\Instruction_memory|memo~776\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~776_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~475_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~443_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~475_q\,
	datac => \Instruction_memory|memo~443_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~776_combout\);

-- Location: LCCOMB_X69_Y35_N4
\Instruction_memory|memo~777\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~777_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~776_combout\ & ((\Instruction_memory|memo~539_q\))) # (!\Instruction_memory|memo~776_combout\ & (\Instruction_memory|memo~507_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~776_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~507_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~539_q\,
	datad => \Instruction_memory|memo~776_combout\,
	combout => \Instruction_memory|memo~777_combout\);

-- Location: LCCOMB_X71_Y37_N10
\Instruction_memory|memo~91feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~91feeder_combout\ = \instruction_in[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[22]~input_o\,
	combout => \Instruction_memory|memo~91feeder_combout\);

-- Location: FF_X71_Y37_N11
\Instruction_memory|memo~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~91feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~91_q\);

-- Location: FF_X72_Y35_N5
\Instruction_memory|memo~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~155_q\);

-- Location: LCCOMB_X74_Y34_N14
\Instruction_memory|memo~123feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~123feeder_combout\ = \instruction_in[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[22]~input_o\,
	combout => \Instruction_memory|memo~123feeder_combout\);

-- Location: FF_X74_Y34_N15
\Instruction_memory|memo~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~123feeder_combout\,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~123_q\);

-- Location: FF_X72_Y35_N11
\Instruction_memory|memo~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~59_q\);

-- Location: LCCOMB_X72_Y35_N10
\Instruction_memory|memo~773\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~773_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~123_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~59_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~123_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~59_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~773_combout\);

-- Location: LCCOMB_X72_Y35_N4
\Instruction_memory|memo~774\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~774_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~773_combout\ & ((\Instruction_memory|memo~155_q\))) # (!\Instruction_memory|memo~773_combout\ & (\Instruction_memory|memo~91_q\)))) # (!\addr_mem[0]~1_combout\ & 
-- (((\Instruction_memory|memo~773_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~91_q\,
	datac => \Instruction_memory|memo~155_q\,
	datad => \Instruction_memory|memo~773_combout\,
	combout => \Instruction_memory|memo~774_combout\);

-- Location: LCCOMB_X76_Y35_N24
\Instruction_memory|memo~347feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~347feeder_combout\ = \instruction_in[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[22]~input_o\,
	combout => \Instruction_memory|memo~347feeder_combout\);

-- Location: FF_X76_Y35_N25
\Instruction_memory|memo~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~347feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~347_q\);

-- Location: FF_X75_Y35_N27
\Instruction_memory|memo~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~411_q\);

-- Location: LCCOMB_X76_Y35_N6
\Instruction_memory|memo~379feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~379feeder_combout\ = \instruction_in[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[22]~input_o\,
	combout => \Instruction_memory|memo~379feeder_combout\);

-- Location: FF_X76_Y35_N7
\Instruction_memory|memo~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~379feeder_combout\,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~379_q\);

-- Location: FF_X75_Y35_N25
\Instruction_memory|memo~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~315_q\);

-- Location: LCCOMB_X75_Y35_N24
\Instruction_memory|memo~771\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~771_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~379_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~315_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~379_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~315_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~771_combout\);

-- Location: LCCOMB_X75_Y35_N26
\Instruction_memory|memo~772\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~772_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~771_combout\ & ((\Instruction_memory|memo~411_q\))) # (!\Instruction_memory|memo~771_combout\ & (\Instruction_memory|memo~347_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~771_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~347_q\,
	datac => \Instruction_memory|memo~411_q\,
	datad => \Instruction_memory|memo~771_combout\,
	combout => \Instruction_memory|memo~772_combout\);

-- Location: LCCOMB_X72_Y35_N18
\Instruction_memory|memo~775\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~775_combout\ = (\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\) # ((\Instruction_memory|memo~772_combout\)))) # (!\addr_mem[3]~2_combout\ & (!\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~774_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~774_combout\,
	datad => \Instruction_memory|memo~772_combout\,
	combout => \Instruction_memory|memo~775_combout\);

-- Location: FF_X76_Y33_N3
\Instruction_memory|memo~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~283_q\);

-- Location: FF_X75_Y33_N9
\Instruction_memory|memo~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~251_q\);

-- Location: FF_X75_Y33_N27
\Instruction_memory|memo~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~219_q\);

-- Location: FF_X74_Y33_N15
\Instruction_memory|memo~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[22]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~187_q\);

-- Location: LCCOMB_X74_Y33_N14
\Instruction_memory|memo~769\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~769_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~219_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~187_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~219_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~187_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~769_combout\);

-- Location: LCCOMB_X75_Y33_N8
\Instruction_memory|memo~770\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~770_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~769_combout\ & (\Instruction_memory|memo~283_q\)) # (!\Instruction_memory|memo~769_combout\ & ((\Instruction_memory|memo~251_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~769_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~283_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~251_q\,
	datad => \Instruction_memory|memo~769_combout\,
	combout => \Instruction_memory|memo~770_combout\);

-- Location: LCCOMB_X69_Y35_N12
\Instruction_memory|memo~778\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~778_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~775_combout\ & (\Instruction_memory|memo~777_combout\)) # (!\Instruction_memory|memo~775_combout\ & ((\Instruction_memory|memo~770_combout\))))) # 
-- (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~775_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~777_combout\,
	datac => \Instruction_memory|memo~775_combout\,
	datad => \Instruction_memory|memo~770_combout\,
	combout => \Instruction_memory|memo~778_combout\);

-- Location: FF_X69_Y35_N13
\Instruction_register|Instruc_R|memo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~778_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(22));

-- Location: IOIBUF_X69_Y54_N1
\instruction_in[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(23),
	o => \instruction_in[23]~input_o\);

-- Location: LCCOMB_X69_Y32_N30
\Instruction_memory|memo~476feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~476feeder_combout\ = \instruction_in[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[23]~input_o\,
	combout => \Instruction_memory|memo~476feeder_combout\);

-- Location: FF_X69_Y32_N31
\Instruction_memory|memo~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~476feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~476_q\);

-- Location: FF_X69_Y33_N31
\Instruction_memory|memo~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~220_q\);

-- Location: FF_X75_Y34_N31
\Instruction_memory|memo~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~348_q\);

-- Location: FF_X69_Y32_N1
\Instruction_memory|memo~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~92_q\);

-- Location: LCCOMB_X69_Y32_N0
\Instruction_memory|memo~779\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~779_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~348_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~92_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~348_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~92_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~779_combout\);

-- Location: LCCOMB_X69_Y33_N30
\Instruction_memory|memo~780\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~780_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~779_combout\ & (\Instruction_memory|memo~476_q\)) # (!\Instruction_memory|memo~779_combout\ & ((\Instruction_memory|memo~220_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~779_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~476_q\,
	datac => \Instruction_memory|memo~220_q\,
	datad => \Instruction_memory|memo~779_combout\,
	combout => \Instruction_memory|memo~780_combout\);

-- Location: FF_X70_Y35_N7
\Instruction_memory|memo~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~60_q\);

-- Location: LCCOMB_X71_Y31_N12
\Instruction_memory|memo~188feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~188feeder_combout\ = \instruction_in[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[23]~input_o\,
	combout => \Instruction_memory|memo~188feeder_combout\);

-- Location: FF_X71_Y31_N13
\Instruction_memory|memo~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~188feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~188_q\);

-- Location: LCCOMB_X70_Y35_N6
\Instruction_memory|memo~783\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~783_combout\ = (\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\) # ((\Instruction_memory|memo~188_q\)))) # (!\addr_mem[2]~3_combout\ & (!\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~60_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~60_q\,
	datad => \Instruction_memory|memo~188_q\,
	combout => \Instruction_memory|memo~783_combout\);

-- Location: LCCOMB_X72_Y37_N26
\Instruction_memory|memo~316feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~316feeder_combout\ = \instruction_in[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[23]~input_o\,
	combout => \Instruction_memory|memo~316feeder_combout\);

-- Location: FF_X72_Y37_N27
\Instruction_memory|memo~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~316feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~316_q\);

-- Location: FF_X70_Y35_N1
\Instruction_memory|memo~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~444_q\);

-- Location: LCCOMB_X70_Y35_N0
\Instruction_memory|memo~784\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~784_combout\ = (\Instruction_memory|memo~783_combout\ & (((\Instruction_memory|memo~444_q\) # (!\addr_mem[3]~2_combout\)))) # (!\Instruction_memory|memo~783_combout\ & (\Instruction_memory|memo~316_q\ & 
-- ((\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~783_combout\,
	datab => \Instruction_memory|memo~316_q\,
	datac => \Instruction_memory|memo~444_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~784_combout\);

-- Location: FF_X74_Y35_N27
\Instruction_memory|memo~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~380_q\);

-- Location: FF_X74_Y35_N5
\Instruction_memory|memo~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~508_q\);

-- Location: FF_X75_Y34_N13
\Instruction_memory|memo~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~252_q\);

-- Location: FF_X74_Y34_N1
\Instruction_memory|memo~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~124_q\);

-- Location: LCCOMB_X74_Y34_N0
\Instruction_memory|memo~781\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~781_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~252_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~124_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~252_q\,
	datac => \Instruction_memory|memo~124_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~781_combout\);

-- Location: LCCOMB_X74_Y35_N4
\Instruction_memory|memo~782\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~782_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~781_combout\ & ((\Instruction_memory|memo~508_q\))) # (!\Instruction_memory|memo~781_combout\ & (\Instruction_memory|memo~380_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~781_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~380_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~508_q\,
	datad => \Instruction_memory|memo~781_combout\,
	combout => \Instruction_memory|memo~782_combout\);

-- Location: LCCOMB_X69_Y35_N30
\Instruction_memory|memo~785\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~785_combout\ = (\addr_mem[0]~1_combout\ & (\addr_mem[1]~0_combout\)) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~782_combout\))) # (!\addr_mem[1]~0_combout\ & 
-- (\Instruction_memory|memo~784_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~784_combout\,
	datad => \Instruction_memory|memo~782_combout\,
	combout => \Instruction_memory|memo~785_combout\);

-- Location: FF_X70_Y33_N9
\Instruction_memory|memo~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~284_q\);

-- Location: FF_X70_Y33_N19
\Instruction_memory|memo~540\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~540_q\);

-- Location: LCCOMB_X74_Y31_N28
\Instruction_memory|memo~412feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~412feeder_combout\ = \instruction_in[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[23]~input_o\,
	combout => \Instruction_memory|memo~412feeder_combout\);

-- Location: FF_X74_Y31_N29
\Instruction_memory|memo~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~412feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~412_q\);

-- Location: FF_X74_Y31_N15
\Instruction_memory|memo~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[23]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~156_q\);

-- Location: LCCOMB_X74_Y31_N14
\Instruction_memory|memo~786\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~786_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~412_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~156_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~412_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~156_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~786_combout\);

-- Location: LCCOMB_X70_Y33_N18
\Instruction_memory|memo~787\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~787_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~786_combout\ & ((\Instruction_memory|memo~540_q\))) # (!\Instruction_memory|memo~786_combout\ & (\Instruction_memory|memo~284_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~786_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~284_q\,
	datac => \Instruction_memory|memo~540_q\,
	datad => \Instruction_memory|memo~786_combout\,
	combout => \Instruction_memory|memo~787_combout\);

-- Location: LCCOMB_X69_Y35_N6
\Instruction_memory|memo~788\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~788_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~785_combout\ & ((\Instruction_memory|memo~787_combout\))) # (!\Instruction_memory|memo~785_combout\ & (\Instruction_memory|memo~780_combout\)))) # 
-- (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~785_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~780_combout\,
	datac => \Instruction_memory|memo~785_combout\,
	datad => \Instruction_memory|memo~787_combout\,
	combout => \Instruction_memory|memo~788_combout\);

-- Location: FF_X69_Y35_N7
\Instruction_register|Instruc_R|memo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~788_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(23));

-- Location: IOIBUF_X78_Y44_N1
\instruction_in[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(24),
	o => \instruction_in[24]~input_o\);

-- Location: LCCOMB_X75_Y35_N14
\Instruction_memory|memo~413feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~413feeder_combout\ = \instruction_in[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[24]~input_o\,
	combout => \Instruction_memory|memo~413feeder_combout\);

-- Location: FF_X75_Y35_N15
\Instruction_memory|memo~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~413feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~413_q\);

-- Location: FF_X74_Y35_N3
\Instruction_memory|memo~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~381_q\);

-- Location: LCCOMB_X76_Y35_N16
\Instruction_memory|memo~349feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~349feeder_combout\ = \instruction_in[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[24]~input_o\,
	combout => \Instruction_memory|memo~349feeder_combout\);

-- Location: FF_X76_Y35_N17
\Instruction_memory|memo~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~349feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~349_q\);

-- Location: FF_X75_Y35_N5
\Instruction_memory|memo~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~317_q\);

-- Location: LCCOMB_X75_Y35_N4
\Instruction_memory|memo~789\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~789_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~349_q\) # ((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~317_q\ & !\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~349_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~317_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~789_combout\);

-- Location: LCCOMB_X74_Y35_N2
\Instruction_memory|memo~790\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~790_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~789_combout\ & (\Instruction_memory|memo~413_q\)) # (!\Instruction_memory|memo~789_combout\ & ((\Instruction_memory|memo~381_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~789_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~413_q\,
	datac => \Instruction_memory|memo~381_q\,
	datad => \Instruction_memory|memo~789_combout\,
	combout => \Instruction_memory|memo~790_combout\);

-- Location: FF_X76_Y32_N19
\Instruction_memory|memo~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~125_q\);

-- Location: FF_X72_Y35_N15
\Instruction_memory|memo~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~157_q\);

-- Location: FF_X72_Y35_N1
\Instruction_memory|memo~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~61_q\);

-- Location: LCCOMB_X71_Y37_N24
\Instruction_memory|memo~93feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~93feeder_combout\ = \instruction_in[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[24]~input_o\,
	combout => \Instruction_memory|memo~93feeder_combout\);

-- Location: FF_X71_Y37_N25
\Instruction_memory|memo~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~93feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~93_q\);

-- Location: LCCOMB_X72_Y35_N0
\Instruction_memory|memo~793\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~793_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\)) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~93_q\))) # (!\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~61_q\,
	datad => \Instruction_memory|memo~93_q\,
	combout => \Instruction_memory|memo~793_combout\);

-- Location: LCCOMB_X72_Y35_N14
\Instruction_memory|memo~794\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~794_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~793_combout\ & ((\Instruction_memory|memo~157_q\))) # (!\Instruction_memory|memo~793_combout\ & (\Instruction_memory|memo~125_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~793_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~125_q\,
	datac => \Instruction_memory|memo~157_q\,
	datad => \Instruction_memory|memo~793_combout\,
	combout => \Instruction_memory|memo~794_combout\);

-- Location: FF_X75_Y33_N13
\Instruction_memory|memo~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~221_q\);

-- Location: FF_X76_Y33_N15
\Instruction_memory|memo~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~285_q\);

-- Location: FF_X75_Y33_N3
\Instruction_memory|memo~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~253_q\);

-- Location: FF_X76_Y33_N21
\Instruction_memory|memo~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~189_q\);

-- Location: LCCOMB_X76_Y33_N20
\Instruction_memory|memo~791\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~791_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~253_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~189_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~253_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~189_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~791_combout\);

-- Location: LCCOMB_X76_Y33_N14
\Instruction_memory|memo~792\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~792_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~791_combout\ & ((\Instruction_memory|memo~285_q\))) # (!\Instruction_memory|memo~791_combout\ & (\Instruction_memory|memo~221_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~791_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~221_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~285_q\,
	datad => \Instruction_memory|memo~791_combout\,
	combout => \Instruction_memory|memo~792_combout\);

-- Location: LCCOMB_X72_Y35_N20
\Instruction_memory|memo~795\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~795_combout\ = (\addr_mem[3]~2_combout\ & (\addr_mem[2]~3_combout\)) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~792_combout\))) # (!\addr_mem[2]~3_combout\ & 
-- (\Instruction_memory|memo~794_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~794_combout\,
	datad => \Instruction_memory|memo~792_combout\,
	combout => \Instruction_memory|memo~795_combout\);

-- Location: LCCOMB_X67_Y35_N6
\Instruction_memory|memo~477feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~477feeder_combout\ = \instruction_in[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[24]~input_o\,
	combout => \Instruction_memory|memo~477feeder_combout\);

-- Location: FF_X67_Y35_N7
\Instruction_memory|memo~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~477feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~477_q\);

-- Location: FF_X71_Y35_N1
\Instruction_memory|memo~541\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~541_q\);

-- Location: LCCOMB_X74_Y35_N20
\Instruction_memory|memo~509feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~509feeder_combout\ = \instruction_in[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[24]~input_o\,
	combout => \Instruction_memory|memo~509feeder_combout\);

-- Location: FF_X74_Y35_N21
\Instruction_memory|memo~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~509feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~509_q\);

-- Location: FF_X67_Y35_N13
\Instruction_memory|memo~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[24]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~445_q\);

-- Location: LCCOMB_X67_Y35_N12
\Instruction_memory|memo~796\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~796_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~509_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~445_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~509_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~445_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~796_combout\);

-- Location: LCCOMB_X71_Y35_N0
\Instruction_memory|memo~797\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~797_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~796_combout\ & ((\Instruction_memory|memo~541_q\))) # (!\Instruction_memory|memo~796_combout\ & (\Instruction_memory|memo~477_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~796_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~477_q\,
	datac => \Instruction_memory|memo~541_q\,
	datad => \Instruction_memory|memo~796_combout\,
	combout => \Instruction_memory|memo~797_combout\);

-- Location: LCCOMB_X71_Y35_N2
\Instruction_memory|memo~798\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~798_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~795_combout\ & ((\Instruction_memory|memo~797_combout\))) # (!\Instruction_memory|memo~795_combout\ & (\Instruction_memory|memo~790_combout\)))) # 
-- (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~795_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~790_combout\,
	datac => \Instruction_memory|memo~795_combout\,
	datad => \Instruction_memory|memo~797_combout\,
	combout => \Instruction_memory|memo~798_combout\);

-- Location: FF_X71_Y35_N3
\Instruction_register|Instruc_R|memo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~798_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(24));

-- Location: IOIBUF_X78_Y34_N1
\instruction_in[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(25),
	o => \instruction_in[25]~input_o\);

-- Location: FF_X72_Y31_N11
\Instruction_memory|memo~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~190_q\);

-- Location: FF_X70_Y35_N5
\Instruction_memory|memo~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~446_q\);

-- Location: FF_X70_Y37_N13
\Instruction_memory|memo~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~318_q\);

-- Location: FF_X70_Y35_N11
\Instruction_memory|memo~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~62_q\);

-- Location: LCCOMB_X70_Y35_N10
\Instruction_memory|memo~803\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~803_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~318_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~62_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~318_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~62_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~803_combout\);

-- Location: LCCOMB_X70_Y35_N4
\Instruction_memory|memo~804\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~804_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~803_combout\ & ((\Instruction_memory|memo~446_q\))) # (!\Instruction_memory|memo~803_combout\ & (\Instruction_memory|memo~190_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~803_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~190_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~446_q\,
	datad => \Instruction_memory|memo~803_combout\,
	combout => \Instruction_memory|memo~804_combout\);

-- Location: LCCOMB_X70_Y31_N2
\Instruction_memory|memo~350feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~350feeder_combout\ = \instruction_in[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[25]~input_o\,
	combout => \Instruction_memory|memo~350feeder_combout\);

-- Location: FF_X70_Y31_N3
\Instruction_memory|memo~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~350feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~350_q\);

-- Location: FF_X69_Y32_N23
\Instruction_memory|memo~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~478_q\);

-- Location: LCCOMB_X67_Y32_N4
\Instruction_memory|memo~222feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~222feeder_combout\ = \instruction_in[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[25]~input_o\,
	combout => \Instruction_memory|memo~222feeder_combout\);

-- Location: FF_X67_Y32_N5
\Instruction_memory|memo~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~222feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~222_q\);

-- Location: FF_X69_Y32_N25
\Instruction_memory|memo~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~94_q\);

-- Location: LCCOMB_X69_Y32_N24
\Instruction_memory|memo~801\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~801_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~222_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~94_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~222_q\,
	datac => \Instruction_memory|memo~94_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~801_combout\);

-- Location: LCCOMB_X69_Y32_N22
\Instruction_memory|memo~802\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~802_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~801_combout\ & ((\Instruction_memory|memo~478_q\))) # (!\Instruction_memory|memo~801_combout\ & (\Instruction_memory|memo~350_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~801_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~350_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~478_q\,
	datad => \Instruction_memory|memo~801_combout\,
	combout => \Instruction_memory|memo~802_combout\);

-- Location: LCCOMB_X70_Y35_N30
\Instruction_memory|memo~805\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~805_combout\ = (\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\) # ((\Instruction_memory|memo~802_combout\)))) # (!\addr_mem[0]~1_combout\ & (!\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~804_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~804_combout\,
	datad => \Instruction_memory|memo~802_combout\,
	combout => \Instruction_memory|memo~805_combout\);

-- Location: FF_X76_Y34_N19
\Instruction_memory|memo~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~510_q\);

-- Location: FF_X75_Y34_N11
\Instruction_memory|memo~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~254_q\);

-- Location: FF_X76_Y34_N13
\Instruction_memory|memo~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~382_q\);

-- Location: FF_X74_Y34_N19
\Instruction_memory|memo~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~126_q\);

-- Location: LCCOMB_X74_Y34_N18
\Instruction_memory|memo~799\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~799_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~382_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~126_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~382_q\,
	datac => \Instruction_memory|memo~126_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~799_combout\);

-- Location: LCCOMB_X75_Y34_N10
\Instruction_memory|memo~800\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~800_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~799_combout\ & (\Instruction_memory|memo~510_q\)) # (!\Instruction_memory|memo~799_combout\ & ((\Instruction_memory|memo~254_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~799_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~510_q\,
	datac => \Instruction_memory|memo~254_q\,
	datad => \Instruction_memory|memo~799_combout\,
	combout => \Instruction_memory|memo~800_combout\);

-- Location: FF_X72_Y31_N5
\Instruction_memory|memo~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~414_q\);

-- Location: FF_X74_Y34_N29
\Instruction_memory|memo~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~158_q\);

-- Location: LCCOMB_X70_Y31_N24
\Instruction_memory|memo~286feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~286feeder_combout\ = \instruction_in[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[25]~input_o\,
	combout => \Instruction_memory|memo~286feeder_combout\);

-- Location: FF_X70_Y31_N25
\Instruction_memory|memo~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~286feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~286_q\);

-- Location: LCCOMB_X74_Y34_N28
\Instruction_memory|memo~806\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~806_combout\ = (\addr_mem[3]~2_combout\ & (\addr_mem[2]~3_combout\)) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~286_q\))) # (!\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~158_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~158_q\,
	datad => \Instruction_memory|memo~286_q\,
	combout => \Instruction_memory|memo~806_combout\);

-- Location: FF_X70_Y34_N9
\Instruction_memory|memo~542\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[25]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~542_q\);

-- Location: LCCOMB_X70_Y34_N8
\Instruction_memory|memo~807\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~807_combout\ = (\Instruction_memory|memo~806_combout\ & (((\Instruction_memory|memo~542_q\) # (!\addr_mem[3]~2_combout\)))) # (!\Instruction_memory|memo~806_combout\ & (\Instruction_memory|memo~414_q\ & 
-- ((\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~414_q\,
	datab => \Instruction_memory|memo~806_combout\,
	datac => \Instruction_memory|memo~542_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~807_combout\);

-- Location: LCCOMB_X70_Y34_N28
\Instruction_memory|memo~808\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~808_combout\ = (\Instruction_memory|memo~805_combout\ & (((\Instruction_memory|memo~807_combout\) # (!\addr_mem[1]~0_combout\)))) # (!\Instruction_memory|memo~805_combout\ & (\Instruction_memory|memo~800_combout\ & 
-- ((\addr_mem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~805_combout\,
	datab => \Instruction_memory|memo~800_combout\,
	datac => \Instruction_memory|memo~807_combout\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~808_combout\);

-- Location: FF_X70_Y34_N29
\Instruction_register|Instruc_R|memo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~808_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(25));

-- Location: IOIBUF_X78_Y34_N23
\instruction_in[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(26),
	o => \instruction_in[26]~input_o\);

-- Location: FF_X76_Y34_N9
\Instruction_memory|memo~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~511_q\);

-- Location: FF_X70_Y34_N21
\Instruction_memory|memo~543\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~543_q\);

-- Location: FF_X67_Y34_N15
\Instruction_memory|memo~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~479_q\);

-- Location: FF_X69_Y34_N29
\Instruction_memory|memo~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~447_q\);

-- Location: LCCOMB_X69_Y34_N28
\Instruction_memory|memo~816\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~816_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~479_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~447_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~479_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~447_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~816_combout\);

-- Location: LCCOMB_X70_Y34_N20
\Instruction_memory|memo~817\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~817_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~816_combout\ & ((\Instruction_memory|memo~543_q\))) # (!\Instruction_memory|memo~816_combout\ & (\Instruction_memory|memo~511_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~816_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~511_q\,
	datac => \Instruction_memory|memo~543_q\,
	datad => \Instruction_memory|memo~816_combout\,
	combout => \Instruction_memory|memo~817_combout\);

-- Location: FF_X76_Y33_N5
\Instruction_memory|memo~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~287_q\);

-- Location: FF_X75_Y34_N5
\Instruction_memory|memo~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~255_q\);

-- Location: FF_X69_Y33_N5
\Instruction_memory|memo~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~223_q\);

-- Location: FF_X74_Y33_N1
\Instruction_memory|memo~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~191_q\);

-- Location: LCCOMB_X74_Y33_N0
\Instruction_memory|memo~809\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~809_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~223_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~191_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~223_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~191_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~809_combout\);

-- Location: LCCOMB_X75_Y34_N4
\Instruction_memory|memo~810\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~810_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~809_combout\ & (\Instruction_memory|memo~287_q\)) # (!\Instruction_memory|memo~809_combout\ & ((\Instruction_memory|memo~255_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~809_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~287_q\,
	datac => \Instruction_memory|memo~255_q\,
	datad => \Instruction_memory|memo~809_combout\,
	combout => \Instruction_memory|memo~810_combout\);

-- Location: LCCOMB_X76_Y35_N18
\Instruction_memory|memo~351feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~351feeder_combout\ = \instruction_in[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[26]~input_o\,
	combout => \Instruction_memory|memo~351feeder_combout\);

-- Location: FF_X76_Y35_N19
\Instruction_memory|memo~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~351feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~351_q\);

-- Location: FF_X75_Y35_N23
\Instruction_memory|memo~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~415_q\);

-- Location: LCCOMB_X76_Y35_N28
\Instruction_memory|memo~383feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~383feeder_combout\ = \instruction_in[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[26]~input_o\,
	combout => \Instruction_memory|memo~383feeder_combout\);

-- Location: FF_X76_Y35_N29
\Instruction_memory|memo~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~383feeder_combout\,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~383_q\);

-- Location: FF_X75_Y35_N17
\Instruction_memory|memo~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~319_q\);

-- Location: LCCOMB_X75_Y35_N16
\Instruction_memory|memo~811\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~811_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~383_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~319_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~383_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~319_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~811_combout\);

-- Location: LCCOMB_X75_Y35_N22
\Instruction_memory|memo~812\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~812_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~811_combout\ & ((\Instruction_memory|memo~415_q\))) # (!\Instruction_memory|memo~811_combout\ & (\Instruction_memory|memo~351_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~811_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~351_q\,
	datac => \Instruction_memory|memo~415_q\,
	datad => \Instruction_memory|memo~811_combout\,
	combout => \Instruction_memory|memo~812_combout\);

-- Location: FF_X70_Y32_N5
\Instruction_memory|memo~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~95_q\);

-- Location: FF_X70_Y32_N11
\Instruction_memory|memo~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~159_q\);

-- Location: FF_X76_Y32_N21
\Instruction_memory|memo~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~127_q\);

-- Location: FF_X76_Y32_N27
\Instruction_memory|memo~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[26]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~63_q\);

-- Location: LCCOMB_X76_Y32_N26
\Instruction_memory|memo~813\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~813_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~127_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~63_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~127_q\,
	datac => \Instruction_memory|memo~63_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~813_combout\);

-- Location: LCCOMB_X70_Y32_N10
\Instruction_memory|memo~814\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~814_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~813_combout\ & ((\Instruction_memory|memo~159_q\))) # (!\Instruction_memory|memo~813_combout\ & (\Instruction_memory|memo~95_q\)))) # (!\addr_mem[0]~1_combout\ & 
-- (((\Instruction_memory|memo~813_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~95_q\,
	datac => \Instruction_memory|memo~159_q\,
	datad => \Instruction_memory|memo~813_combout\,
	combout => \Instruction_memory|memo~814_combout\);

-- Location: LCCOMB_X70_Y34_N6
\Instruction_memory|memo~815\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~815_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~812_combout\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~814_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~812_combout\,
	datad => \Instruction_memory|memo~814_combout\,
	combout => \Instruction_memory|memo~815_combout\);

-- Location: LCCOMB_X70_Y34_N22
\Instruction_memory|memo~818\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~818_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~815_combout\ & (\Instruction_memory|memo~817_combout\)) # (!\Instruction_memory|memo~815_combout\ & ((\Instruction_memory|memo~810_combout\))))) # 
-- (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~815_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~817_combout\,
	datac => \Instruction_memory|memo~810_combout\,
	datad => \Instruction_memory|memo~815_combout\,
	combout => \Instruction_memory|memo~818_combout\);

-- Location: FF_X70_Y34_N23
\Instruction_register|Instruc_R|memo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~818_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(26));

-- Location: IOIBUF_X78_Y37_N1
\instruction_in[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(27),
	o => \instruction_in[27]~input_o\);

-- Location: FF_X70_Y31_N29
\Instruction_memory|memo~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~288_q\);

-- Location: FF_X69_Y35_N3
\Instruction_memory|memo~544\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~544_q\);

-- Location: FF_X72_Y31_N31
\Instruction_memory|memo~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~416_q\);

-- Location: FF_X72_Y35_N23
\Instruction_memory|memo~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~160_q\);

-- Location: LCCOMB_X72_Y35_N22
\Instruction_memory|memo~826\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~826_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~416_q\) # ((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~160_q\ & !\addr_mem[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~416_q\,
	datac => \Instruction_memory|memo~160_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~826_combout\);

-- Location: LCCOMB_X69_Y35_N2
\Instruction_memory|memo~827\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~827_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~826_combout\ & ((\Instruction_memory|memo~544_q\))) # (!\Instruction_memory|memo~826_combout\ & (\Instruction_memory|memo~288_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~826_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~288_q\,
	datac => \Instruction_memory|memo~544_q\,
	datad => \Instruction_memory|memo~826_combout\,
	combout => \Instruction_memory|memo~827_combout\);

-- Location: FF_X69_Y32_N19
\Instruction_memory|memo~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~480_q\);

-- Location: FF_X69_Y33_N11
\Instruction_memory|memo~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~224_q\);

-- Location: FF_X70_Y31_N11
\Instruction_memory|memo~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~352_q\);

-- Location: FF_X69_Y32_N5
\Instruction_memory|memo~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~96_q\);

-- Location: LCCOMB_X69_Y32_N4
\Instruction_memory|memo~819\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~819_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~352_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~96_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~352_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~96_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~819_combout\);

-- Location: LCCOMB_X69_Y33_N10
\Instruction_memory|memo~820\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~820_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~819_combout\ & (\Instruction_memory|memo~480_q\)) # (!\Instruction_memory|memo~819_combout\ & ((\Instruction_memory|memo~224_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~819_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~480_q\,
	datac => \Instruction_memory|memo~224_q\,
	datad => \Instruction_memory|memo~819_combout\,
	combout => \Instruction_memory|memo~820_combout\);

-- Location: LCCOMB_X72_Y37_N4
\Instruction_memory|memo~320feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~320feeder_combout\ = \instruction_in[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[27]~input_o\,
	combout => \Instruction_memory|memo~320feeder_combout\);

-- Location: FF_X72_Y37_N5
\Instruction_memory|memo~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~320feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~320_q\);

-- Location: FF_X70_Y35_N15
\Instruction_memory|memo~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~448_q\);

-- Location: FF_X71_Y31_N19
\Instruction_memory|memo~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~192_q\);

-- Location: FF_X70_Y35_N13
\Instruction_memory|memo~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~64_q\);

-- Location: LCCOMB_X70_Y35_N12
\Instruction_memory|memo~823\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~823_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~192_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~64_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~192_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~64_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~823_combout\);

-- Location: LCCOMB_X70_Y35_N14
\Instruction_memory|memo~824\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~824_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~823_combout\ & ((\Instruction_memory|memo~448_q\))) # (!\Instruction_memory|memo~823_combout\ & (\Instruction_memory|memo~320_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~823_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~320_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~448_q\,
	datad => \Instruction_memory|memo~823_combout\,
	combout => \Instruction_memory|memo~824_combout\);

-- Location: FF_X74_Y35_N11
\Instruction_memory|memo~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~384_q\);

-- Location: FF_X74_Y35_N29
\Instruction_memory|memo~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~512_q\);

-- Location: FF_X75_Y34_N23
\Instruction_memory|memo~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~256_q\);

-- Location: FF_X74_Y34_N3
\Instruction_memory|memo~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[27]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~128_q\);

-- Location: LCCOMB_X74_Y34_N2
\Instruction_memory|memo~821\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~821_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~256_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~128_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~256_q\,
	datac => \Instruction_memory|memo~128_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~821_combout\);

-- Location: LCCOMB_X74_Y35_N28
\Instruction_memory|memo~822\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~822_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~821_combout\ & ((\Instruction_memory|memo~512_q\))) # (!\Instruction_memory|memo~821_combout\ & (\Instruction_memory|memo~384_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~821_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~384_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~512_q\,
	datad => \Instruction_memory|memo~821_combout\,
	combout => \Instruction_memory|memo~822_combout\);

-- Location: LCCOMB_X69_Y35_N16
\Instruction_memory|memo~825\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~825_combout\ = (\addr_mem[0]~1_combout\ & (\addr_mem[1]~0_combout\)) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~822_combout\))) # (!\addr_mem[1]~0_combout\ & 
-- (\Instruction_memory|memo~824_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~824_combout\,
	datad => \Instruction_memory|memo~822_combout\,
	combout => \Instruction_memory|memo~825_combout\);

-- Location: LCCOMB_X69_Y35_N28
\Instruction_memory|memo~828\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~828_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~825_combout\ & (\Instruction_memory|memo~827_combout\)) # (!\Instruction_memory|memo~825_combout\ & ((\Instruction_memory|memo~820_combout\))))) # 
-- (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~825_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~827_combout\,
	datac => \Instruction_memory|memo~820_combout\,
	datad => \Instruction_memory|memo~825_combout\,
	combout => \Instruction_memory|memo~828_combout\);

-- Location: FF_X69_Y35_N29
\Instruction_register|Instruc_R|memo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~828_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(27));

-- Location: IOIBUF_X78_Y42_N15
\instruction_in[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(28),
	o => \instruction_in[28]~input_o\);

-- Location: FF_X75_Y35_N3
\Instruction_memory|memo~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~417_q\);

-- Location: FF_X76_Y35_N31
\Instruction_memory|memo~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~385_q\);

-- Location: FF_X75_Y35_N9
\Instruction_memory|memo~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~321_q\);

-- Location: LCCOMB_X76_Y35_N4
\Instruction_memory|memo~353feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~353feeder_combout\ = \instruction_in[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[28]~input_o\,
	combout => \Instruction_memory|memo~353feeder_combout\);

-- Location: FF_X76_Y35_N5
\Instruction_memory|memo~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~353feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~353_q\);

-- Location: LCCOMB_X75_Y35_N8
\Instruction_memory|memo~829\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~829_combout\ = (\addr_mem[1]~0_combout\ & (\addr_mem[0]~1_combout\)) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~353_q\))) # (!\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~321_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~321_q\,
	datad => \Instruction_memory|memo~353_q\,
	combout => \Instruction_memory|memo~829_combout\);

-- Location: LCCOMB_X76_Y35_N30
\Instruction_memory|memo~830\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~830_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~829_combout\ & (\Instruction_memory|memo~417_q\)) # (!\Instruction_memory|memo~829_combout\ & ((\Instruction_memory|memo~385_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~829_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~417_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~385_q\,
	datad => \Instruction_memory|memo~829_combout\,
	combout => \Instruction_memory|memo~830_combout\);

-- Location: FF_X67_Y35_N15
\Instruction_memory|memo~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~481_q\);

-- Location: FF_X71_Y35_N27
\Instruction_memory|memo~545\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~545_q\);

-- Location: LCCOMB_X76_Y34_N2
\Instruction_memory|memo~513feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~513feeder_combout\ = \instruction_in[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[28]~input_o\,
	combout => \Instruction_memory|memo~513feeder_combout\);

-- Location: FF_X76_Y34_N3
\Instruction_memory|memo~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~513feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~513_q\);

-- Location: FF_X71_Y34_N15
\Instruction_memory|memo~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~449_q\);

-- Location: LCCOMB_X71_Y34_N14
\Instruction_memory|memo~836\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~836_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~513_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~449_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~513_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~449_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~836_combout\);

-- Location: LCCOMB_X71_Y35_N26
\Instruction_memory|memo~837\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~837_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~836_combout\ & ((\Instruction_memory|memo~545_q\))) # (!\Instruction_memory|memo~836_combout\ & (\Instruction_memory|memo~481_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~836_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~481_q\,
	datac => \Instruction_memory|memo~545_q\,
	datad => \Instruction_memory|memo~836_combout\,
	combout => \Instruction_memory|memo~837_combout\);

-- Location: FF_X69_Y33_N13
\Instruction_memory|memo~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~225_q\);

-- Location: FF_X76_Y33_N1
\Instruction_memory|memo~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~289_q\);

-- Location: LCCOMB_X75_Y34_N16
\Instruction_memory|memo~257feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~257feeder_combout\ = \instruction_in[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[28]~input_o\,
	combout => \Instruction_memory|memo~257feeder_combout\);

-- Location: FF_X75_Y34_N17
\Instruction_memory|memo~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~257feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~257_q\);

-- Location: FF_X76_Y33_N19
\Instruction_memory|memo~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~193_q\);

-- Location: LCCOMB_X76_Y33_N18
\Instruction_memory|memo~831\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~831_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~257_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~193_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~257_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~193_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~831_combout\);

-- Location: LCCOMB_X76_Y33_N0
\Instruction_memory|memo~832\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~832_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~831_combout\ & ((\Instruction_memory|memo~289_q\))) # (!\Instruction_memory|memo~831_combout\ & (\Instruction_memory|memo~225_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~831_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~225_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~289_q\,
	datad => \Instruction_memory|memo~831_combout\,
	combout => \Instruction_memory|memo~832_combout\);

-- Location: FF_X74_Y34_N21
\Instruction_memory|memo~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~129_q\);

-- Location: FF_X74_Y34_N11
\Instruction_memory|memo~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~161_q\);

-- Location: FF_X71_Y37_N15
\Instruction_memory|memo~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~97_q\);

-- Location: FF_X71_Y34_N17
\Instruction_memory|memo~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[28]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~65_q\);

-- Location: LCCOMB_X71_Y34_N16
\Instruction_memory|memo~833\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~833_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~97_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~65_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~97_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~65_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~833_combout\);

-- Location: LCCOMB_X74_Y34_N10
\Instruction_memory|memo~834\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~834_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~833_combout\ & ((\Instruction_memory|memo~161_q\))) # (!\Instruction_memory|memo~833_combout\ & (\Instruction_memory|memo~129_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~833_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~129_q\,
	datac => \Instruction_memory|memo~161_q\,
	datad => \Instruction_memory|memo~833_combout\,
	combout => \Instruction_memory|memo~834_combout\);

-- Location: LCCOMB_X72_Y34_N10
\Instruction_memory|memo~835\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~835_combout\ = (\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\) # ((\Instruction_memory|memo~832_combout\)))) # (!\addr_mem[2]~3_combout\ & (!\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~834_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~832_combout\,
	datad => \Instruction_memory|memo~834_combout\,
	combout => \Instruction_memory|memo~835_combout\);

-- Location: LCCOMB_X72_Y34_N26
\Instruction_memory|memo~838\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~838_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~835_combout\ & ((\Instruction_memory|memo~837_combout\))) # (!\Instruction_memory|memo~835_combout\ & (\Instruction_memory|memo~830_combout\)))) # 
-- (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~835_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~830_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~837_combout\,
	datad => \Instruction_memory|memo~835_combout\,
	combout => \Instruction_memory|memo~838_combout\);

-- Location: FF_X72_Y34_N27
\Instruction_register|Instruc_R|memo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~838_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(28));

-- Location: IOIBUF_X78_Y36_N15
\instruction_in[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(29),
	o => \instruction_in[29]~input_o\);

-- Location: LCCOMB_X72_Y31_N26
\Instruction_memory|memo~418feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~418feeder_combout\ = \instruction_in[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[29]~input_o\,
	combout => \Instruction_memory|memo~418feeder_combout\);

-- Location: FF_X72_Y31_N27
\Instruction_memory|memo~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~418feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~418_q\);

-- Location: FF_X70_Y34_N17
\Instruction_memory|memo~546\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~546_q\);

-- Location: LCCOMB_X70_Y31_N20
\Instruction_memory|memo~290feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~290feeder_combout\ = \instruction_in[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[29]~input_o\,
	combout => \Instruction_memory|memo~290feeder_combout\);

-- Location: FF_X70_Y31_N21
\Instruction_memory|memo~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~290feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~290_q\);

-- Location: FF_X74_Y34_N23
\Instruction_memory|memo~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~162_q\);

-- Location: LCCOMB_X74_Y34_N22
\Instruction_memory|memo~846\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~846_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~290_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~162_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~290_q\,
	datac => \Instruction_memory|memo~162_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~846_combout\);

-- Location: LCCOMB_X70_Y34_N16
\Instruction_memory|memo~847\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~847_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~846_combout\ & ((\Instruction_memory|memo~546_q\))) # (!\Instruction_memory|memo~846_combout\ & (\Instruction_memory|memo~418_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~846_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~418_q\,
	datac => \Instruction_memory|memo~546_q\,
	datad => \Instruction_memory|memo~846_combout\,
	combout => \Instruction_memory|memo~847_combout\);

-- Location: FF_X76_Y34_N23
\Instruction_memory|memo~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~514_q\);

-- Location: FF_X75_Y34_N19
\Instruction_memory|memo~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~258_q\);

-- Location: FF_X74_Y34_N17
\Instruction_memory|memo~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~130_q\);

-- Location: FF_X76_Y34_N29
\Instruction_memory|memo~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~386_q\);

-- Location: LCCOMB_X75_Y34_N0
\Instruction_memory|memo~839\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~839_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~386_q\))) # (!\addr_mem[3]~2_combout\ & 
-- (\Instruction_memory|memo~130_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~130_q\,
	datab => \Instruction_memory|memo~386_q\,
	datac => \addr_mem[2]~3_combout\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~839_combout\);

-- Location: LCCOMB_X75_Y34_N18
\Instruction_memory|memo~840\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~840_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~839_combout\ & (\Instruction_memory|memo~514_q\)) # (!\Instruction_memory|memo~839_combout\ & ((\Instruction_memory|memo~258_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~839_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~514_q\,
	datab => \addr_mem[2]~3_combout\,
	datac => \Instruction_memory|memo~258_q\,
	datad => \Instruction_memory|memo~839_combout\,
	combout => \Instruction_memory|memo~840_combout\);

-- Location: LCCOMB_X70_Y31_N14
\Instruction_memory|memo~354feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~354feeder_combout\ = \instruction_in[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[29]~input_o\,
	combout => \Instruction_memory|memo~354feeder_combout\);

-- Location: FF_X70_Y31_N15
\Instruction_memory|memo~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~354feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~354_q\);

-- Location: FF_X69_Y32_N3
\Instruction_memory|memo~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~482_q\);

-- Location: FF_X69_Y33_N27
\Instruction_memory|memo~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~226_q\);

-- Location: FF_X69_Y32_N21
\Instruction_memory|memo~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~98_q\);

-- Location: LCCOMB_X69_Y32_N20
\Instruction_memory|memo~841\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~841_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~226_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~98_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~226_q\,
	datac => \Instruction_memory|memo~98_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~841_combout\);

-- Location: LCCOMB_X69_Y32_N2
\Instruction_memory|memo~842\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~842_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~841_combout\ & ((\Instruction_memory|memo~482_q\))) # (!\Instruction_memory|memo~841_combout\ & (\Instruction_memory|memo~354_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~841_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~354_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~482_q\,
	datad => \Instruction_memory|memo~841_combout\,
	combout => \Instruction_memory|memo~842_combout\);

-- Location: LCCOMB_X72_Y31_N16
\Instruction_memory|memo~194feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~194feeder_combout\ = \instruction_in[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[29]~input_o\,
	combout => \Instruction_memory|memo~194feeder_combout\);

-- Location: FF_X72_Y31_N17
\Instruction_memory|memo~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~194feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~194_q\);

-- Location: FF_X71_Y34_N31
\Instruction_memory|memo~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~450_q\);

-- Location: FF_X71_Y34_N29
\Instruction_memory|memo~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~66_q\);

-- Location: FF_X72_Y37_N19
\Instruction_memory|memo~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[29]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~322_q\);

-- Location: LCCOMB_X71_Y34_N28
\Instruction_memory|memo~843\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~843_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~322_q\))) # (!\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~66_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~66_q\,
	datad => \Instruction_memory|memo~322_q\,
	combout => \Instruction_memory|memo~843_combout\);

-- Location: LCCOMB_X71_Y34_N30
\Instruction_memory|memo~844\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~844_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~843_combout\ & ((\Instruction_memory|memo~450_q\))) # (!\Instruction_memory|memo~843_combout\ & (\Instruction_memory|memo~194_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~843_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~194_q\,
	datac => \Instruction_memory|memo~450_q\,
	datad => \Instruction_memory|memo~843_combout\,
	combout => \Instruction_memory|memo~844_combout\);

-- Location: LCCOMB_X70_Y34_N10
\Instruction_memory|memo~845\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~845_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~842_combout\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~844_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~842_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~844_combout\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~845_combout\);

-- Location: LCCOMB_X70_Y34_N24
\Instruction_memory|memo~848\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~848_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~845_combout\ & (\Instruction_memory|memo~847_combout\)) # (!\Instruction_memory|memo~845_combout\ & ((\Instruction_memory|memo~840_combout\))))) # 
-- (!\addr_mem[1]~0_combout\ & (((\Instruction_memory|memo~845_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~847_combout\,
	datac => \Instruction_memory|memo~840_combout\,
	datad => \Instruction_memory|memo~845_combout\,
	combout => \Instruction_memory|memo~848_combout\);

-- Location: FF_X70_Y34_N25
\Instruction_register|Instruc_R|memo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~848_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(29));

-- Location: IOIBUF_X78_Y35_N22
\instruction_in[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(30),
	o => \instruction_in[30]~input_o\);

-- Location: LCCOMB_X67_Y33_N0
\Instruction_memory|memo~99feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~99feeder_combout\ = \instruction_in[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[30]~input_o\,
	combout => \Instruction_memory|memo~99feeder_combout\);

-- Location: FF_X67_Y33_N1
\Instruction_memory|memo~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~99feeder_combout\,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~99_q\);

-- Location: FF_X74_Y34_N25
\Instruction_memory|memo~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~163_q\);

-- Location: FF_X76_Y32_N25
\Instruction_memory|memo~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~131_q\);

-- Location: FF_X74_Y32_N25
\Instruction_memory|memo~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~67_q\);

-- Location: LCCOMB_X74_Y32_N24
\Instruction_memory|memo~853\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~853_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~131_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~67_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~131_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~67_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~853_combout\);

-- Location: LCCOMB_X74_Y34_N24
\Instruction_memory|memo~854\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~854_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~853_combout\ & ((\Instruction_memory|memo~163_q\))) # (!\Instruction_memory|memo~853_combout\ & (\Instruction_memory|memo~99_q\)))) # (!\addr_mem[0]~1_combout\ & 
-- (((\Instruction_memory|memo~853_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~99_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~163_q\,
	datad => \Instruction_memory|memo~853_combout\,
	combout => \Instruction_memory|memo~854_combout\);

-- Location: LCCOMB_X75_Y34_N26
\Instruction_memory|memo~355feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~355feeder_combout\ = \instruction_in[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[30]~input_o\,
	combout => \Instruction_memory|memo~355feeder_combout\);

-- Location: FF_X75_Y34_N27
\Instruction_memory|memo~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~355feeder_combout\,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~355_q\);

-- Location: FF_X75_Y35_N31
\Instruction_memory|memo~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~419_q\);

-- Location: FF_X74_Y35_N15
\Instruction_memory|memo~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~387_q\);

-- Location: FF_X75_Y35_N13
\Instruction_memory|memo~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~323_q\);

-- Location: LCCOMB_X75_Y35_N12
\Instruction_memory|memo~851\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~851_combout\ = (\addr_mem[0]~1_combout\ & (((\addr_mem[1]~0_combout\)))) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & (\Instruction_memory|memo~387_q\)) # (!\addr_mem[1]~0_combout\ & 
-- ((\Instruction_memory|memo~323_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~387_q\,
	datab => \addr_mem[0]~1_combout\,
	datac => \Instruction_memory|memo~323_q\,
	datad => \addr_mem[1]~0_combout\,
	combout => \Instruction_memory|memo~851_combout\);

-- Location: LCCOMB_X75_Y35_N30
\Instruction_memory|memo~852\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~852_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~851_combout\ & ((\Instruction_memory|memo~419_q\))) # (!\Instruction_memory|memo~851_combout\ & (\Instruction_memory|memo~355_q\)))) # (!\addr_mem[0]~1_combout\ 
-- & (((\Instruction_memory|memo~851_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~355_q\,
	datac => \Instruction_memory|memo~419_q\,
	datad => \Instruction_memory|memo~851_combout\,
	combout => \Instruction_memory|memo~852_combout\);

-- Location: LCCOMB_X72_Y34_N4
\Instruction_memory|memo~855\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~855_combout\ = (\addr_mem[2]~3_combout\ & (\addr_mem[3]~2_combout\)) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~852_combout\))) # (!\addr_mem[3]~2_combout\ & 
-- (\Instruction_memory|memo~854_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~854_combout\,
	datad => \Instruction_memory|memo~852_combout\,
	combout => \Instruction_memory|memo~855_combout\);

-- Location: LCCOMB_X76_Y34_N20
\Instruction_memory|memo~515feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~515feeder_combout\ = \instruction_in[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[30]~input_o\,
	combout => \Instruction_memory|memo~515feeder_combout\);

-- Location: FF_X76_Y34_N21
\Instruction_memory|memo~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~515feeder_combout\,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~515_q\);

-- Location: FF_X72_Y34_N15
\Instruction_memory|memo~547\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~547_q\);

-- Location: FF_X67_Y35_N29
\Instruction_memory|memo~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~483_q\);

-- Location: FF_X67_Y35_N11
\Instruction_memory|memo~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~451_q\);

-- Location: LCCOMB_X67_Y35_N10
\Instruction_memory|memo~856\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~856_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~483_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~451_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~483_q\,
	datac => \Instruction_memory|memo~451_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~856_combout\);

-- Location: LCCOMB_X72_Y34_N14
\Instruction_memory|memo~857\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~857_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~856_combout\ & ((\Instruction_memory|memo~547_q\))) # (!\Instruction_memory|memo~856_combout\ & (\Instruction_memory|memo~515_q\)))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~856_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~515_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~547_q\,
	datad => \Instruction_memory|memo~856_combout\,
	combout => \Instruction_memory|memo~857_combout\);

-- Location: LCCOMB_X76_Y33_N6
\Instruction_memory|memo~291feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~291feeder_combout\ = \instruction_in[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[30]~input_o\,
	combout => \Instruction_memory|memo~291feeder_combout\);

-- Location: FF_X76_Y33_N7
\Instruction_memory|memo~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~291feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~291_q\);

-- Location: FF_X72_Y36_N15
\Instruction_memory|memo~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~259_q\);

-- Location: LCCOMB_X69_Y33_N20
\Instruction_memory|memo~227feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~227feeder_combout\ = \instruction_in[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[30]~input_o\,
	combout => \Instruction_memory|memo~227feeder_combout\);

-- Location: FF_X69_Y33_N21
\Instruction_memory|memo~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~227feeder_combout\,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~227_q\);

-- Location: FF_X74_Y33_N31
\Instruction_memory|memo~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[30]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~195_q\);

-- Location: LCCOMB_X74_Y33_N30
\Instruction_memory|memo~849\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~849_combout\ = (\addr_mem[1]~0_combout\ & (((\addr_mem[0]~1_combout\)))) # (!\addr_mem[1]~0_combout\ & ((\addr_mem[0]~1_combout\ & (\Instruction_memory|memo~227_q\)) # (!\addr_mem[0]~1_combout\ & 
-- ((\Instruction_memory|memo~195_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~227_q\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~195_q\,
	datad => \addr_mem[0]~1_combout\,
	combout => \Instruction_memory|memo~849_combout\);

-- Location: LCCOMB_X72_Y36_N14
\Instruction_memory|memo~850\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~850_combout\ = (\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~849_combout\ & (\Instruction_memory|memo~291_q\)) # (!\Instruction_memory|memo~849_combout\ & ((\Instruction_memory|memo~259_q\))))) # (!\addr_mem[1]~0_combout\ 
-- & (((\Instruction_memory|memo~849_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[1]~0_combout\,
	datab => \Instruction_memory|memo~291_q\,
	datac => \Instruction_memory|memo~259_q\,
	datad => \Instruction_memory|memo~849_combout\,
	combout => \Instruction_memory|memo~850_combout\);

-- Location: LCCOMB_X72_Y34_N0
\Instruction_memory|memo~858\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~858_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~855_combout\ & (\Instruction_memory|memo~857_combout\)) # (!\Instruction_memory|memo~855_combout\ & ((\Instruction_memory|memo~850_combout\))))) # 
-- (!\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~855_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~855_combout\,
	datac => \Instruction_memory|memo~857_combout\,
	datad => \Instruction_memory|memo~850_combout\,
	combout => \Instruction_memory|memo~858_combout\);

-- Location: FF_X72_Y34_N1
\Instruction_register|Instruc_R|memo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~858_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(30));

-- Location: IOIBUF_X78_Y36_N8
\instruction_in[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(31),
	o => \instruction_in[31]~input_o\);

-- Location: LCCOMB_X70_Y31_N18
\Instruction_memory|memo~292feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~292feeder_combout\ = \instruction_in[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[31]~input_o\,
	combout => \Instruction_memory|memo~292feeder_combout\);

-- Location: FF_X70_Y31_N19
\Instruction_memory|memo~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~292feeder_combout\,
	ena => \Instruction_memory|memo~885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~292_q\);

-- Location: FF_X69_Y35_N15
\Instruction_memory|memo~548\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~548_q\);

-- Location: LCCOMB_X72_Y31_N0
\Instruction_memory|memo~420feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~420feeder_combout\ = \instruction_in[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[31]~input_o\,
	combout => \Instruction_memory|memo~420feeder_combout\);

-- Location: FF_X72_Y31_N1
\Instruction_memory|memo~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~420feeder_combout\,
	ena => \Instruction_memory|memo~877_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~420_q\);

-- Location: FF_X72_Y35_N13
\Instruction_memory|memo~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~164_q\);

-- Location: LCCOMB_X72_Y35_N12
\Instruction_memory|memo~866\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~866_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~420_q\) # ((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & (((\Instruction_memory|memo~164_q\ & !\addr_mem[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~420_q\,
	datac => \Instruction_memory|memo~164_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~866_combout\);

-- Location: LCCOMB_X69_Y35_N14
\Instruction_memory|memo~867\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~867_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~866_combout\ & ((\Instruction_memory|memo~548_q\))) # (!\Instruction_memory|memo~866_combout\ & (\Instruction_memory|memo~292_q\)))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~866_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~292_q\,
	datac => \Instruction_memory|memo~548_q\,
	datad => \Instruction_memory|memo~866_combout\,
	combout => \Instruction_memory|memo~867_combout\);

-- Location: LCCOMB_X67_Y34_N16
\Instruction_memory|memo~484feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~484feeder_combout\ = \instruction_in[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[31]~input_o\,
	combout => \Instruction_memory|memo~484feeder_combout\);

-- Location: FF_X67_Y34_N17
\Instruction_memory|memo~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~484feeder_combout\,
	ena => \Instruction_memory|memo~894_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~484_q\);

-- Location: FF_X67_Y33_N19
\Instruction_memory|memo~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~228_q\);

-- Location: FF_X74_Y36_N7
\Instruction_memory|memo~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~873_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~356_q\);

-- Location: FF_X67_Y33_N29
\Instruction_memory|memo~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~100_q\);

-- Location: LCCOMB_X67_Y33_N28
\Instruction_memory|memo~859\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~859_combout\ = (\addr_mem[2]~3_combout\ & (((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & ((\addr_mem[3]~2_combout\ & (\Instruction_memory|memo~356_q\)) # (!\addr_mem[3]~2_combout\ & 
-- ((\Instruction_memory|memo~100_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~356_q\,
	datac => \Instruction_memory|memo~100_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~859_combout\);

-- Location: LCCOMB_X67_Y33_N18
\Instruction_memory|memo~860\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~860_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~859_combout\ & (\Instruction_memory|memo~484_q\)) # (!\Instruction_memory|memo~859_combout\ & ((\Instruction_memory|memo~228_q\))))) # (!\addr_mem[2]~3_combout\ 
-- & (((\Instruction_memory|memo~859_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~484_q\,
	datac => \Instruction_memory|memo~228_q\,
	datad => \Instruction_memory|memo~859_combout\,
	combout => \Instruction_memory|memo~860_combout\);

-- Location: LCCOMB_X72_Y37_N20
\Instruction_memory|memo~324feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~324feeder_combout\ = \instruction_in[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[31]~input_o\,
	combout => \Instruction_memory|memo~324feeder_combout\);

-- Location: FF_X72_Y37_N21
\Instruction_memory|memo~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~324feeder_combout\,
	ena => \Instruction_memory|memo~875_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~324_q\);

-- Location: FF_X71_Y34_N27
\Instruction_memory|memo~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~898_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~452_q\);

-- Location: LCCOMB_X67_Y34_N22
\Instruction_memory|memo~196feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~196feeder_combout\ = \instruction_in[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[31]~input_o\,
	combout => \Instruction_memory|memo~196feeder_combout\);

-- Location: FF_X67_Y34_N23
\Instruction_memory|memo~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~196feeder_combout\,
	ena => \Instruction_memory|memo~883_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~196_q\);

-- Location: FF_X71_Y34_N25
\Instruction_memory|memo~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~68_q\);

-- Location: LCCOMB_X71_Y34_N24
\Instruction_memory|memo~863\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~863_combout\ = (\addr_mem[3]~2_combout\ & (((\addr_mem[2]~3_combout\)))) # (!\addr_mem[3]~2_combout\ & ((\addr_mem[2]~3_combout\ & (\Instruction_memory|memo~196_q\)) # (!\addr_mem[2]~3_combout\ & 
-- ((\Instruction_memory|memo~68_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~196_q\,
	datac => \Instruction_memory|memo~68_q\,
	datad => \addr_mem[2]~3_combout\,
	combout => \Instruction_memory|memo~863_combout\);

-- Location: LCCOMB_X71_Y34_N26
\Instruction_memory|memo~864\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~864_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~863_combout\ & ((\Instruction_memory|memo~452_q\))) # (!\Instruction_memory|memo~863_combout\ & (\Instruction_memory|memo~324_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~863_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[3]~2_combout\,
	datab => \Instruction_memory|memo~324_q\,
	datac => \Instruction_memory|memo~452_q\,
	datad => \Instruction_memory|memo~863_combout\,
	combout => \Instruction_memory|memo~864_combout\);

-- Location: FF_X74_Y35_N9
\Instruction_memory|memo~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~871_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~388_q\);

-- Location: FF_X74_Y35_N7
\Instruction_memory|memo~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~896_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~516_q\);

-- Location: LCCOMB_X75_Y34_N28
\Instruction_memory|memo~260feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~260feeder_combout\ = \instruction_in[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruction_in[31]~input_o\,
	combout => \Instruction_memory|memo~260feeder_combout\);

-- Location: FF_X75_Y34_N29
\Instruction_memory|memo~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~260feeder_combout\,
	ena => \Instruction_memory|memo~881_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~260_q\);

-- Location: FF_X74_Y34_N7
\Instruction_memory|memo~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instruction_in[31]~input_o\,
	sload => VCC,
	ena => \Instruction_memory|memo~887_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~132_q\);

-- Location: LCCOMB_X74_Y34_N6
\Instruction_memory|memo~861\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~861_combout\ = (\addr_mem[2]~3_combout\ & ((\Instruction_memory|memo~260_q\) # ((\addr_mem[3]~2_combout\)))) # (!\addr_mem[2]~3_combout\ & (((\Instruction_memory|memo~132_q\ & !\addr_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[2]~3_combout\,
	datab => \Instruction_memory|memo~260_q\,
	datac => \Instruction_memory|memo~132_q\,
	datad => \addr_mem[3]~2_combout\,
	combout => \Instruction_memory|memo~861_combout\);

-- Location: LCCOMB_X74_Y35_N6
\Instruction_memory|memo~862\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~862_combout\ = (\addr_mem[3]~2_combout\ & ((\Instruction_memory|memo~861_combout\ & ((\Instruction_memory|memo~516_q\))) # (!\Instruction_memory|memo~861_combout\ & (\Instruction_memory|memo~388_q\)))) # (!\addr_mem[3]~2_combout\ 
-- & (((\Instruction_memory|memo~861_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo~388_q\,
	datab => \addr_mem[3]~2_combout\,
	datac => \Instruction_memory|memo~516_q\,
	datad => \Instruction_memory|memo~861_combout\,
	combout => \Instruction_memory|memo~862_combout\);

-- Location: LCCOMB_X69_Y35_N20
\Instruction_memory|memo~865\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~865_combout\ = (\addr_mem[0]~1_combout\ & (\addr_mem[1]~0_combout\)) # (!\addr_mem[0]~1_combout\ & ((\addr_mem[1]~0_combout\ & ((\Instruction_memory|memo~862_combout\))) # (!\addr_mem[1]~0_combout\ & 
-- (\Instruction_memory|memo~864_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \addr_mem[1]~0_combout\,
	datac => \Instruction_memory|memo~864_combout\,
	datad => \Instruction_memory|memo~862_combout\,
	combout => \Instruction_memory|memo~865_combout\);

-- Location: LCCOMB_X69_Y35_N22
\Instruction_memory|memo~868\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~868_combout\ = (\addr_mem[0]~1_combout\ & ((\Instruction_memory|memo~865_combout\ & (\Instruction_memory|memo~867_combout\)) # (!\Instruction_memory|memo~865_combout\ & ((\Instruction_memory|memo~860_combout\))))) # 
-- (!\addr_mem[0]~1_combout\ & (((\Instruction_memory|memo~865_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_mem[0]~1_combout\,
	datab => \Instruction_memory|memo~867_combout\,
	datac => \Instruction_memory|memo~860_combout\,
	datad => \Instruction_memory|memo~865_combout\,
	combout => \Instruction_memory|memo~868_combout\);

-- Location: FF_X69_Y35_N23
\Instruction_register|Instruc_R|memo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~868_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|etat.CHARG_IR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_register|Instruc_R|memo\(31));

-- Location: FF_X75_Y31_N1
\sequenceur|end_instr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sequenceur|etat.ECRITURE_PC~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequenceur|end_instr~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_next_PC(0) <= \next_PC[0]~output_o\;

ww_next_PC(1) <= \next_PC[1]~output_o\;

ww_next_PC(2) <= \next_PC[2]~output_o\;

ww_next_PC(3) <= \next_PC[3]~output_o\;

ww_next_PC(4) <= \next_PC[4]~output_o\;

ww_next_PC(5) <= \next_PC[5]~output_o\;

ww_next_PC(6) <= \next_PC[6]~output_o\;

ww_next_PC(7) <= \next_PC[7]~output_o\;

ww_next_PC(8) <= \next_PC[8]~output_o\;

ww_next_PC(9) <= \next_PC[9]~output_o\;

ww_next_PC(10) <= \next_PC[10]~output_o\;

ww_next_PC(11) <= \next_PC[11]~output_o\;

ww_next_PC(12) <= \next_PC[12]~output_o\;

ww_next_PC(13) <= \next_PC[13]~output_o\;

ww_next_PC(14) <= \next_PC[14]~output_o\;

ww_next_PC(15) <= \next_PC[15]~output_o\;

ww_next_PC(16) <= \next_PC[16]~output_o\;

ww_next_PC(17) <= \next_PC[17]~output_o\;

ww_next_PC(18) <= \next_PC[18]~output_o\;

ww_next_PC(19) <= \next_PC[19]~output_o\;

ww_next_PC(20) <= \next_PC[20]~output_o\;

ww_next_PC(21) <= \next_PC[21]~output_o\;

ww_next_PC(22) <= \next_PC[22]~output_o\;

ww_next_PC(23) <= \next_PC[23]~output_o\;

ww_next_PC(24) <= \next_PC[24]~output_o\;

ww_next_PC(25) <= \next_PC[25]~output_o\;

ww_next_PC(26) <= \next_PC[26]~output_o\;

ww_next_PC(27) <= \next_PC[27]~output_o\;

ww_next_PC(28) <= \next_PC[28]~output_o\;

ww_next_PC(29) <= \next_PC[29]~output_o\;

ww_next_PC(30) <= \next_PC[30]~output_o\;

ww_next_PC(31) <= \next_PC[31]~output_o\;

ww_out_PC(0) <= \out_PC[0]~output_o\;

ww_out_PC(1) <= \out_PC[1]~output_o\;

ww_out_PC(2) <= \out_PC[2]~output_o\;

ww_out_PC(3) <= \out_PC[3]~output_o\;

ww_out_PC(4) <= \out_PC[4]~output_o\;

ww_out_PC(5) <= \out_PC[5]~output_o\;

ww_out_PC(6) <= \out_PC[6]~output_o\;

ww_out_PC(7) <= \out_PC[7]~output_o\;

ww_out_PC(8) <= \out_PC[8]~output_o\;

ww_out_PC(9) <= \out_PC[9]~output_o\;

ww_out_PC(10) <= \out_PC[10]~output_o\;

ww_out_PC(11) <= \out_PC[11]~output_o\;

ww_out_PC(12) <= \out_PC[12]~output_o\;

ww_out_PC(13) <= \out_PC[13]~output_o\;

ww_out_PC(14) <= \out_PC[14]~output_o\;

ww_out_PC(15) <= \out_PC[15]~output_o\;

ww_out_PC(16) <= \out_PC[16]~output_o\;

ww_out_PC(17) <= \out_PC[17]~output_o\;

ww_out_PC(18) <= \out_PC[18]~output_o\;

ww_out_PC(19) <= \out_PC[19]~output_o\;

ww_out_PC(20) <= \out_PC[20]~output_o\;

ww_out_PC(21) <= \out_PC[21]~output_o\;

ww_out_PC(22) <= \out_PC[22]~output_o\;

ww_out_PC(23) <= \out_PC[23]~output_o\;

ww_out_PC(24) <= \out_PC[24]~output_o\;

ww_out_PC(25) <= \out_PC[25]~output_o\;

ww_out_PC(26) <= \out_PC[26]~output_o\;

ww_out_PC(27) <= \out_PC[27]~output_o\;

ww_out_PC(28) <= \out_PC[28]~output_o\;

ww_out_PC(29) <= \out_PC[29]~output_o\;

ww_out_PC(30) <= \out_PC[30]~output_o\;

ww_out_PC(31) <= \out_PC[31]~output_o\;

ww_instruction_out(0) <= \instruction_out[0]~output_o\;

ww_instruction_out(1) <= \instruction_out[1]~output_o\;

ww_instruction_out(2) <= \instruction_out[2]~output_o\;

ww_instruction_out(3) <= \instruction_out[3]~output_o\;

ww_instruction_out(4) <= \instruction_out[4]~output_o\;

ww_instruction_out(5) <= \instruction_out[5]~output_o\;

ww_instruction_out(6) <= \instruction_out[6]~output_o\;

ww_instruction_out(7) <= \instruction_out[7]~output_o\;

ww_instruction_out(8) <= \instruction_out[8]~output_o\;

ww_instruction_out(9) <= \instruction_out[9]~output_o\;

ww_instruction_out(10) <= \instruction_out[10]~output_o\;

ww_instruction_out(11) <= \instruction_out[11]~output_o\;

ww_instruction_out(12) <= \instruction_out[12]~output_o\;

ww_instruction_out(13) <= \instruction_out[13]~output_o\;

ww_instruction_out(14) <= \instruction_out[14]~output_o\;

ww_instruction_out(15) <= \instruction_out[15]~output_o\;

ww_instruction_out(16) <= \instruction_out[16]~output_o\;

ww_instruction_out(17) <= \instruction_out[17]~output_o\;

ww_instruction_out(18) <= \instruction_out[18]~output_o\;

ww_instruction_out(19) <= \instruction_out[19]~output_o\;

ww_instruction_out(20) <= \instruction_out[20]~output_o\;

ww_instruction_out(21) <= \instruction_out[21]~output_o\;

ww_instruction_out(22) <= \instruction_out[22]~output_o\;

ww_instruction_out(23) <= \instruction_out[23]~output_o\;

ww_instruction_out(24) <= \instruction_out[24]~output_o\;

ww_instruction_out(25) <= \instruction_out[25]~output_o\;

ww_instruction_out(26) <= \instruction_out[26]~output_o\;

ww_instruction_out(27) <= \instruction_out[27]~output_o\;

ww_instruction_out(28) <= \instruction_out[28]~output_o\;

ww_instruction_out(29) <= \instruction_out[29]~output_o\;

ww_instruction_out(30) <= \instruction_out[30]~output_o\;

ww_instruction_out(31) <= \instruction_out[31]~output_o\;

ww_end_instr <= \end_instr~output_o\;
END structure;


