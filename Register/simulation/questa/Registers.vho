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

-- DATE "11/07/2026 21:57:27"

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
	prog_addr : IN std_logic_vector(3 DOWNTO 0)
	);
END Processor;

-- Design Ports Information
-- next_PC[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[4]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[5]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[7]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[8]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[9]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[11]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[13]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[14]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[15]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[16]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[17]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[18]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[19]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[20]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[21]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[22]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[23]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[24]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[25]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[26]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[27]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[28]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[29]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[30]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_PC[31]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[9]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[10]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[11]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[12]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[13]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[14]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[15]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[16]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[17]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[18]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[19]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[20]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[21]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[22]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[23]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[24]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[25]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[26]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[27]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[28]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[29]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[30]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC[31]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[6]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[7]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[8]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[10]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[11]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[14]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[15]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[16]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[17]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[18]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[19]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[20]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[21]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[22]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[23]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[24]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[25]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[26]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[28]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[29]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[30]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_out[31]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pgr_valid	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_exe	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[0]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prog_addr[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prog_addr[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prog_addr[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prog_addr[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[3]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[5]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[7]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[8]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[10]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[11]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[12]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[13]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[15]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[16]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[17]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[18]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[19]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[20]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[22]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[23]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[24]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[25]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[26]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[27]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[28]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[29]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[30]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_in[31]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_prog_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \start_exe~input_o\ : std_logic;
SIGNAL \Instruction_memory|process_0~1_combout\ : std_logic;
SIGNAL \sequenceur|etat.CHARGEMENT_PGR~q\ : std_logic;
SIGNAL \sequenceur|etat.ECRITURE_PC~feeder_combout\ : std_logic;
SIGNAL \sequenceur|etat.ECRITURE_PC~q\ : std_logic;
SIGNAL \sequenceur|Selector0~0_combout\ : std_logic;
SIGNAL \sequenceur|etat.CHARG_IR~q\ : std_logic;
SIGNAL \sequenceur|etat.LECTURE_REG~feeder_combout\ : std_logic;
SIGNAL \sequenceur|etat.LECTURE_REG~q\ : std_logic;
SIGNAL \sequenceur|en_PC~0_combout\ : std_logic;
SIGNAL \next_PC_in[2]~0_combout\ : std_logic;
SIGNAL \Program_counter|PC_1|memo[3]~feeder_combout\ : std_logic;
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
SIGNAL \pgr_valid~input_o\ : std_logic;
SIGNAL \Instruction_memory|process_0~0_combout\ : std_logic;
SIGNAL \instruction_in[0]~input_o\ : std_logic;
SIGNAL \prog_addr[0]~input_o\ : std_logic;
SIGNAL \addr_mem[0]~0_combout\ : std_logic;
SIGNAL \prog_addr[1]~input_o\ : std_logic;
SIGNAL \addr_mem[1]~1_combout\ : std_logic;
SIGNAL \prog_addr[2]~input_o\ : std_logic;
SIGNAL \addr_mem[2]~2_combout\ : std_logic;
SIGNAL \prog_addr[3]~input_o\ : std_logic;
SIGNAL \addr_mem[3]~3_combout\ : std_logic;
SIGNAL \instruction_in[1]~input_o\ : std_logic;
SIGNAL \instruction_in[2]~input_o\ : std_logic;
SIGNAL \instruction_in[3]~input_o\ : std_logic;
SIGNAL \instruction_in[4]~input_o\ : std_logic;
SIGNAL \instruction_in[5]~input_o\ : std_logic;
SIGNAL \instruction_in[6]~input_o\ : std_logic;
SIGNAL \instruction_in[7]~input_o\ : std_logic;
SIGNAL \instruction_in[8]~input_o\ : std_logic;
SIGNAL \instruction_in[9]~input_o\ : std_logic;
SIGNAL \instruction_in[10]~input_o\ : std_logic;
SIGNAL \instruction_in[11]~input_o\ : std_logic;
SIGNAL \instruction_in[12]~input_o\ : std_logic;
SIGNAL \instruction_in[13]~input_o\ : std_logic;
SIGNAL \instruction_in[14]~input_o\ : std_logic;
SIGNAL \instruction_in[15]~input_o\ : std_logic;
SIGNAL \instruction_in[16]~input_o\ : std_logic;
SIGNAL \instruction_in[17]~input_o\ : std_logic;
SIGNAL \instruction_in[18]~input_o\ : std_logic;
SIGNAL \instruction_in[19]~input_o\ : std_logic;
SIGNAL \instruction_in[20]~input_o\ : std_logic;
SIGNAL \instruction_in[21]~input_o\ : std_logic;
SIGNAL \instruction_in[22]~input_o\ : std_logic;
SIGNAL \instruction_in[23]~input_o\ : std_logic;
SIGNAL \instruction_in[24]~input_o\ : std_logic;
SIGNAL \instruction_in[25]~input_o\ : std_logic;
SIGNAL \instruction_in[26]~input_o\ : std_logic;
SIGNAL \instruction_in[27]~input_o\ : std_logic;
SIGNAL \instruction_in[28]~input_o\ : std_logic;
SIGNAL \instruction_in[29]~input_o\ : std_logic;
SIGNAL \instruction_in[30]~input_o\ : std_logic;
SIGNAL \instruction_in[31]~input_o\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Instruction_memory|memo~70_combout\ : std_logic;
SIGNAL \Instruction_memory|memo~37_q\ : std_logic;
SIGNAL \Instruction_memory|memo~38_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Instruction_memory|memo~39_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Instruction_memory|memo~40_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Instruction_memory|memo~41_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Instruction_memory|memo~42_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Instruction_memory|memo~43_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Instruction_memory|memo~44_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Instruction_memory|memo~45_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Instruction_memory|memo~46_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Instruction_memory|memo~47_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Instruction_memory|memo~48_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Instruction_memory|memo~49_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Instruction_memory|memo~50_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Instruction_memory|memo~51_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Instruction_memory|memo~52_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Instruction_memory|memo~53_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Instruction_memory|memo~54_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Instruction_memory|memo~55_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Instruction_memory|memo~56_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Instruction_memory|memo~57_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Instruction_memory|memo~58_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Instruction_memory|memo~59_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Instruction_memory|memo~60_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Instruction_memory|memo~61_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Instruction_memory|memo~62_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Instruction_memory|memo~63_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Instruction_memory|memo~64_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Instruction_memory|memo~65_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Instruction_memory|memo~66_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Instruction_memory|memo~67_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Instruction_memory|memo~68_combout\ : std_logic;
SIGNAL \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Instruction_memory|memo~69_combout\ : std_logic;
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
ww_prog_addr <= prog_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \instruction_in[31]~input_o\ & \instruction_in[30]~input_o\ & \instruction_in[29]~input_o\ & \instruction_in[28]~input_o\ & 
\instruction_in[27]~input_o\ & \instruction_in[26]~input_o\ & \instruction_in[25]~input_o\ & \instruction_in[24]~input_o\ & \instruction_in[23]~input_o\ & \instruction_in[22]~input_o\ & \instruction_in[21]~input_o\ & \instruction_in[20]~input_o\ & 
\instruction_in[19]~input_o\ & \instruction_in[18]~input_o\ & \instruction_in[17]~input_o\ & \instruction_in[16]~input_o\ & \instruction_in[15]~input_o\ & \instruction_in[14]~input_o\ & \instruction_in[13]~input_o\ & \instruction_in[12]~input_o\ & 
\instruction_in[11]~input_o\ & \instruction_in[10]~input_o\ & \instruction_in[9]~input_o\ & \instruction_in[8]~input_o\ & \instruction_in[7]~input_o\ & \instruction_in[6]~input_o\ & \instruction_in[5]~input_o\ & \instruction_in[4]~input_o\ & 
\instruction_in[3]~input_o\ & \instruction_in[2]~input_o\ & \instruction_in[1]~input_o\ & \instruction_in[0]~input_o\);

\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr_mem[3]~3_combout\ & \addr_mem[2]~2_combout\ & \addr_mem[1]~1_combout\ & \addr_mem[0]~0_combout\);

\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr_mem[3]~3_combout\ & \addr_mem[2]~2_combout\ & \addr_mem[1]~1_combout\ & \addr_mem[0]~0_combout\);

\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a1\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a2\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a3\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a4\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a5\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a6\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a7\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a8\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a9\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a10\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a11\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a12\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a13\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a14\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a15\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a16\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a17\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a18\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a19\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a20\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a21\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a22\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a23\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a24\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a25\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a26\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a27\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a28\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a29\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a30\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a31\ <= \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

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

-- Location: LCCOMB_X44_Y46_N16
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

-- Location: IOOBUF_X69_Y54_N2
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X78_Y24_N24
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X78_Y20_N24
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

-- Location: IOOBUF_X78_Y20_N2
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

-- Location: IOOBUF_X20_Y0_N30
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

-- Location: IOOBUF_X18_Y0_N30
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

-- Location: IOOBUF_X78_Y21_N9
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

-- Location: IOOBUF_X78_Y16_N16
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

-- Location: IOOBUF_X78_Y20_N16
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

-- Location: IOOBUF_X78_Y24_N9
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

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X78_Y21_N2
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X31_Y0_N30
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X22_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X34_Y39_N16
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

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X31_Y0_N23
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

-- Location: IOOBUF_X56_Y0_N30
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X20_Y0_N23
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

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N30
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

-- Location: IOOBUF_X78_Y20_N9
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

-- Location: IOOBUF_X51_Y0_N30
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X58_Y0_N30
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N16
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

-- Location: IOOBUF_X78_Y25_N23
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

-- Location: IOOBUF_X22_Y0_N30
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X29_Y39_N16
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

-- Location: IOOBUF_X78_Y23_N9
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

-- Location: IOOBUF_X78_Y15_N23
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

-- Location: IOOBUF_X34_Y0_N16
\instruction_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~38_combout\,
	devoe => ww_devoe,
	o => \instruction_out[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\instruction_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~39_combout\,
	devoe => ww_devoe,
	o => \instruction_out[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\instruction_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~40_combout\,
	devoe => ww_devoe,
	o => \instruction_out[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\instruction_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~41_combout\,
	devoe => ww_devoe,
	o => \instruction_out[3]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\instruction_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~42_combout\,
	devoe => ww_devoe,
	o => \instruction_out[4]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\instruction_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~43_combout\,
	devoe => ww_devoe,
	o => \instruction_out[5]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\instruction_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~44_combout\,
	devoe => ww_devoe,
	o => \instruction_out[6]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\instruction_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~45_combout\,
	devoe => ww_devoe,
	o => \instruction_out[7]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\instruction_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~46_combout\,
	devoe => ww_devoe,
	o => \instruction_out[8]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\instruction_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~47_combout\,
	devoe => ww_devoe,
	o => \instruction_out[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\instruction_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~48_combout\,
	devoe => ww_devoe,
	o => \instruction_out[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\instruction_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~49_combout\,
	devoe => ww_devoe,
	o => \instruction_out[11]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\instruction_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~50_combout\,
	devoe => ww_devoe,
	o => \instruction_out[12]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\instruction_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~51_combout\,
	devoe => ww_devoe,
	o => \instruction_out[13]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\instruction_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~52_combout\,
	devoe => ww_devoe,
	o => \instruction_out[14]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\instruction_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~53_combout\,
	devoe => ww_devoe,
	o => \instruction_out[15]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\instruction_out[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~54_combout\,
	devoe => ww_devoe,
	o => \instruction_out[16]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\instruction_out[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~55_combout\,
	devoe => ww_devoe,
	o => \instruction_out[17]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\instruction_out[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~56_combout\,
	devoe => ww_devoe,
	o => \instruction_out[18]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\instruction_out[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~57_combout\,
	devoe => ww_devoe,
	o => \instruction_out[19]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\instruction_out[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~58_combout\,
	devoe => ww_devoe,
	o => \instruction_out[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\instruction_out[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~59_combout\,
	devoe => ww_devoe,
	o => \instruction_out[21]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\instruction_out[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~60_combout\,
	devoe => ww_devoe,
	o => \instruction_out[22]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\instruction_out[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~61_combout\,
	devoe => ww_devoe,
	o => \instruction_out[23]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\instruction_out[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~62_combout\,
	devoe => ww_devoe,
	o => \instruction_out[24]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\instruction_out[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~63_combout\,
	devoe => ww_devoe,
	o => \instruction_out[25]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\instruction_out[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~64_combout\,
	devoe => ww_devoe,
	o => \instruction_out[26]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\instruction_out[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~65_combout\,
	devoe => ww_devoe,
	o => \instruction_out[27]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\instruction_out[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~66_combout\,
	devoe => ww_devoe,
	o => \instruction_out[28]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\instruction_out[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~67_combout\,
	devoe => ww_devoe,
	o => \instruction_out[29]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\instruction_out[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~68_combout\,
	devoe => ww_devoe,
	o => \instruction_out[30]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\instruction_out[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_memory|memo~69_combout\,
	devoe => ww_devoe,
	o => \instruction_out[31]~output_o\);

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

-- Location: IOIBUF_X38_Y0_N1
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

-- Location: LCCOMB_X34_Y3_N12
\Instruction_memory|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|process_0~1_combout\ = (\start_exe~input_o\) # (\sequenceur|etat.CHARGEMENT_PGR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_exe~input_o\,
	datac => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \Instruction_memory|process_0~1_combout\);

-- Location: FF_X34_Y3_N13
\sequenceur|etat.CHARGEMENT_PGR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|process_0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequenceur|etat.CHARGEMENT_PGR~q\);

-- Location: LCCOMB_X31_Y3_N14
\sequenceur|etat.ECRITURE_PC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sequenceur|etat.ECRITURE_PC~feeder_combout\ = \sequenceur|etat.LECTURE_REG~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sequenceur|etat.LECTURE_REG~q\,
	combout => \sequenceur|etat.ECRITURE_PC~feeder_combout\);

-- Location: FF_X31_Y3_N15
\sequenceur|etat.ECRITURE_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sequenceur|etat.ECRITURE_PC~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequenceur|etat.ECRITURE_PC~q\);

-- Location: LCCOMB_X34_Y3_N30
\sequenceur|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sequenceur|Selector0~0_combout\ = (\sequenceur|etat.ECRITURE_PC~q\) # ((!\sequenceur|etat.CHARGEMENT_PGR~q\ & \start_exe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sequenceur|etat.CHARGEMENT_PGR~q\,
	datab => \start_exe~input_o\,
	datac => \sequenceur|etat.ECRITURE_PC~q\,
	combout => \sequenceur|Selector0~0_combout\);

-- Location: FF_X34_Y3_N31
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

-- Location: LCCOMB_X31_Y3_N20
\sequenceur|etat.LECTURE_REG~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sequenceur|etat.LECTURE_REG~feeder_combout\ = \sequenceur|etat.CHARG_IR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sequenceur|etat.CHARG_IR~q\,
	combout => \sequenceur|etat.LECTURE_REG~feeder_combout\);

-- Location: FF_X31_Y3_N21
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

-- Location: LCCOMB_X30_Y3_N0
\sequenceur|en_PC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sequenceur|en_PC~0_combout\ = \sequenceur|etat.LECTURE_REG~q\ $ (\sequenceur|etat.CHARGEMENT_PGR~q\ $ (\sequenceur|etat.CHARG_IR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sequenceur|etat.LECTURE_REG~q\,
	datac => \sequenceur|etat.CHARGEMENT_PGR~q\,
	datad => \sequenceur|etat.CHARG_IR~q\,
	combout => \sequenceur|en_PC~0_combout\);

-- Location: FF_X29_Y4_N3
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(2));

-- Location: LCCOMB_X29_Y4_N2
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

-- Location: LCCOMB_X29_Y4_N0
\Program_counter|PC_1|memo[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Program_counter|PC_1|memo[3]~feeder_combout\ = \next_PC_in[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_PC_in[3]~2_combout\,
	combout => \Program_counter|PC_1|memo[3]~feeder_combout\);

-- Location: FF_X29_Y4_N1
\Program_counter|PC_1|memo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Program_counter|PC_1|memo[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(3));

-- Location: LCCOMB_X29_Y4_N4
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

-- Location: FF_X29_Y4_N7
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(4));

-- Location: LCCOMB_X29_Y4_N6
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

-- Location: FF_X29_Y4_N9
\Program_counter|PC_1|memo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_PC_in[5]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(5));

-- Location: LCCOMB_X29_Y4_N8
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

-- Location: FF_X29_Y4_N11
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(6));

-- Location: LCCOMB_X29_Y4_N10
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

-- Location: FF_X29_Y4_N13
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(7));

-- Location: LCCOMB_X29_Y4_N12
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

-- Location: FF_X29_Y4_N15
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(8));

-- Location: LCCOMB_X29_Y4_N14
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

-- Location: FF_X29_Y4_N17
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(9));

-- Location: LCCOMB_X29_Y4_N16
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

-- Location: FF_X29_Y4_N19
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(10));

-- Location: LCCOMB_X29_Y4_N18
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

-- Location: FF_X29_Y4_N21
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(11));

-- Location: LCCOMB_X29_Y4_N20
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

-- Location: FF_X29_Y4_N23
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(12));

-- Location: LCCOMB_X29_Y4_N22
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

-- Location: FF_X29_Y4_N25
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(13));

-- Location: LCCOMB_X29_Y4_N24
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

-- Location: FF_X29_Y4_N27
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(14));

-- Location: LCCOMB_X29_Y4_N26
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

-- Location: FF_X29_Y4_N29
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(15));

-- Location: LCCOMB_X29_Y4_N28
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

-- Location: FF_X29_Y4_N31
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(16));

-- Location: LCCOMB_X29_Y4_N30
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

-- Location: LCCOMB_X29_Y3_N30
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

-- Location: FF_X29_Y3_N31
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(17));

-- Location: LCCOMB_X29_Y3_N0
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

-- Location: FF_X29_Y3_N3
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(18));

-- Location: LCCOMB_X29_Y3_N2
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

-- Location: FF_X29_Y3_N5
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(19));

-- Location: LCCOMB_X29_Y3_N4
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

-- Location: FF_X29_Y3_N7
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(20));

-- Location: LCCOMB_X29_Y3_N6
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

-- Location: FF_X29_Y3_N9
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(21));

-- Location: LCCOMB_X29_Y3_N8
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

-- Location: FF_X29_Y3_N11
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(22));

-- Location: LCCOMB_X29_Y3_N10
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

-- Location: FF_X29_Y3_N13
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(23));

-- Location: LCCOMB_X29_Y3_N12
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

-- Location: FF_X29_Y3_N15
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(24));

-- Location: LCCOMB_X29_Y3_N14
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

-- Location: FF_X29_Y3_N17
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(25));

-- Location: LCCOMB_X29_Y3_N16
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

-- Location: FF_X29_Y3_N19
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(26));

-- Location: LCCOMB_X29_Y3_N18
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

-- Location: FF_X29_Y3_N21
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(27));

-- Location: LCCOMB_X29_Y3_N20
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

-- Location: FF_X29_Y3_N23
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(28));

-- Location: LCCOMB_X29_Y3_N22
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

-- Location: FF_X29_Y3_N25
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(29));

-- Location: LCCOMB_X29_Y3_N24
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

-- Location: FF_X29_Y3_N27
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(30));

-- Location: LCCOMB_X29_Y3_N26
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

-- Location: FF_X29_Y3_N29
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
	ena => \sequenceur|en_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Program_counter|PC_1|memo\(31));

-- Location: LCCOMB_X29_Y3_N28
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

-- Location: IOIBUF_X78_Y17_N15
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

-- Location: LCCOMB_X34_Y3_N20
\Instruction_memory|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|process_0~0_combout\ = (!\reset~input_o\ & (!\start_exe~input_o\ & (\pgr_valid~input_o\ & !\sequenceur|etat.CHARGEMENT_PGR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \start_exe~input_o\,
	datac => \pgr_valid~input_o\,
	datad => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \Instruction_memory|process_0~0_combout\);

-- Location: IOIBUF_X62_Y0_N8
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

-- Location: IOIBUF_X56_Y0_N15
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

-- Location: LCCOMB_X32_Y3_N0
\addr_mem[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_mem[0]~0_combout\ = (\sequenceur|etat.CHARGEMENT_PGR~q\ & ((\Program_counter|PC_1|memo\(2)))) # (!\sequenceur|etat.CHARGEMENT_PGR~q\ & (\prog_addr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_addr[0]~input_o\,
	datac => \Program_counter|PC_1|memo\(2),
	datad => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \addr_mem[0]~0_combout\);

-- Location: IOIBUF_X62_Y0_N15
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

-- Location: LCCOMB_X34_Y3_N6
\addr_mem[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_mem[1]~1_combout\ = (\sequenceur|etat.CHARGEMENT_PGR~q\ & ((\Program_counter|PC_1|memo\(3)))) # (!\sequenceur|etat.CHARGEMENT_PGR~q\ & (\prog_addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prog_addr[1]~input_o\,
	datab => \Program_counter|PC_1|memo\(3),
	datad => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \addr_mem[1]~1_combout\);

-- Location: IOIBUF_X56_Y0_N8
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

-- Location: LCCOMB_X32_Y3_N10
\addr_mem[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_mem[2]~2_combout\ = (\sequenceur|etat.CHARGEMENT_PGR~q\ & (\Program_counter|PC_1|memo\(4))) # (!\sequenceur|etat.CHARGEMENT_PGR~q\ & ((\prog_addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(4),
	datac => \prog_addr[2]~input_o\,
	datad => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \addr_mem[2]~2_combout\);

-- Location: IOIBUF_X51_Y0_N15
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

-- Location: LCCOMB_X32_Y3_N4
\addr_mem[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_mem[3]~3_combout\ = (\sequenceur|etat.CHARGEMENT_PGR~q\ & (\Program_counter|PC_1|memo\(5))) # (!\sequenceur|etat.CHARGEMENT_PGR~q\ & ((\prog_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_counter|PC_1|memo\(5),
	datac => \prog_addr[3]~input_o\,
	datad => \sequenceur|etat.CHARGEMENT_PGR~q\,
	combout => \addr_mem[3]~3_combout\);

-- Location: IOIBUF_X54_Y0_N15
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

-- Location: IOIBUF_X78_Y18_N15
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

-- Location: IOIBUF_X78_Y18_N8
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

-- Location: IOIBUF_X40_Y0_N15
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

-- Location: IOIBUF_X78_Y3_N15
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

-- Location: IOIBUF_X34_Y0_N8
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

-- Location: IOIBUF_X54_Y0_N8
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

-- Location: IOIBUF_X78_Y23_N22
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

-- Location: IOIBUF_X49_Y0_N1
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

-- Location: IOIBUF_X78_Y16_N1
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

-- Location: IOIBUF_X69_Y0_N1
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

-- Location: IOIBUF_X58_Y0_N8
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

-- Location: IOIBUF_X54_Y0_N29
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

-- Location: IOIBUF_X38_Y0_N8
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

-- Location: IOIBUF_X34_Y39_N29
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

-- Location: IOIBUF_X40_Y0_N29
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

-- Location: IOIBUF_X78_Y21_N15
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

-- Location: IOIBUF_X58_Y0_N1
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

-- Location: IOIBUF_X78_Y17_N8
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

-- Location: IOIBUF_X34_Y0_N1
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

-- Location: IOIBUF_X40_Y0_N1
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

-- Location: IOIBUF_X78_Y23_N15
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

-- Location: IOIBUF_X58_Y0_N15
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

-- Location: IOIBUF_X78_Y15_N8
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

-- Location: IOIBUF_X54_Y0_N1
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

-- Location: IOIBUF_X78_Y18_N1
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

-- Location: IOIBUF_X38_Y0_N15
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

-- Location: IOIBUF_X78_Y15_N15
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

-- Location: IOIBUF_X60_Y0_N29
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

-- Location: IOIBUF_X78_Y18_N22
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

-- Location: IOIBUF_X56_Y0_N22
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

-- Location: M9K_X33_Y3_N0
\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Registers.ram0_Imem_46f396bb.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Imem:Instruction_memory|altsyncram:memo_rtl_0|altsyncram_7lh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Instruction_memory|process_0~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Instruction_memory|process_0~0_combout\,
	ena1 => \sequenceur|etat.CHARG_IR~q\,
	portadatain => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y3_N0
\Instruction_memory|memo~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~70_combout\ = (\sequenceur|etat.CHARG_IR~q\) # (\Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sequenceur|etat.CHARG_IR~q\,
	datac => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~70_combout\);

-- Location: FF_X34_Y3_N1
\Instruction_memory|memo~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Instruction_memory|memo~70_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instruction_memory|memo~37_q\);

-- Location: LCCOMB_X34_Y3_N14
\Instruction_memory|memo~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~38_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~38_combout\);

-- Location: LCCOMB_X37_Y3_N8
\Instruction_memory|memo~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~39_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a1\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a1\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~39_combout\);

-- Location: LCCOMB_X34_Y3_N28
\Instruction_memory|memo~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~40_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a2\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a2\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~40_combout\);

-- Location: LCCOMB_X41_Y3_N12
\Instruction_memory|memo~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~41_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a3\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a3\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~41_combout\);

-- Location: LCCOMB_X40_Y3_N20
\Instruction_memory|memo~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~42_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a4\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a4\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~42_combout\);

-- Location: LCCOMB_X34_Y3_N10
\Instruction_memory|memo~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~43_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a5\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a5\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~43_combout\);

-- Location: LCCOMB_X34_Y3_N24
\Instruction_memory|memo~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~44_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a6\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a6\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~44_combout\);

-- Location: LCCOMB_X36_Y3_N16
\Instruction_memory|memo~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~45_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a7\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a7\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~45_combout\);

-- Location: LCCOMB_X40_Y3_N6
\Instruction_memory|memo~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~46_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a8\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a8\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~46_combout\);

-- Location: LCCOMB_X34_Y3_N22
\Instruction_memory|memo~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~47_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a9\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a9\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~47_combout\);

-- Location: LCCOMB_X34_Y3_N16
\Instruction_memory|memo~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~48_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a10\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a10\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~48_combout\);

-- Location: LCCOMB_X41_Y3_N6
\Instruction_memory|memo~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~49_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a11\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a11\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~49_combout\);

-- Location: LCCOMB_X38_Y3_N20
\Instruction_memory|memo~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~50_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a12\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a12\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~50_combout\);

-- Location: LCCOMB_X37_Y3_N10
\Instruction_memory|memo~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~51_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a13\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a13\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~51_combout\);

-- Location: LCCOMB_X39_Y3_N24
\Instruction_memory|memo~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~52_combout\ = (\Instruction_memory|memo~37_q\ & \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_memory|memo~37_q\,
	datad => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a14\,
	combout => \Instruction_memory|memo~52_combout\);

-- Location: LCCOMB_X36_Y3_N14
\Instruction_memory|memo~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~53_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a15\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a15\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~53_combout\);

-- Location: LCCOMB_X34_Y3_N18
\Instruction_memory|memo~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~54_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a16\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a16\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~54_combout\);

-- Location: LCCOMB_X40_Y3_N0
\Instruction_memory|memo~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~55_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a17\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a17\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~55_combout\);

-- Location: LCCOMB_X34_Y3_N8
\Instruction_memory|memo~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~56_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a18\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a18\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~56_combout\);

-- Location: LCCOMB_X36_Y3_N28
\Instruction_memory|memo~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~57_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a19\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a19\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~57_combout\);

-- Location: LCCOMB_X41_Y3_N16
\Instruction_memory|memo~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~58_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a20\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a20\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~58_combout\);

-- Location: LCCOMB_X41_Y3_N30
\Instruction_memory|memo~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~59_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a21\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a21\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~59_combout\);

-- Location: LCCOMB_X38_Y3_N26
\Instruction_memory|memo~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~60_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a22\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a22\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~60_combout\);

-- Location: LCCOMB_X34_Y3_N2
\Instruction_memory|memo~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~61_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a23\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a23\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~61_combout\);

-- Location: LCCOMB_X37_Y3_N28
\Instruction_memory|memo~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~62_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a24\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a24\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~62_combout\);

-- Location: LCCOMB_X34_Y3_N4
\Instruction_memory|memo~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~63_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a25\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a25\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~63_combout\);

-- Location: LCCOMB_X37_Y3_N26
\Instruction_memory|memo~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~64_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a26\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a26\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~64_combout\);

-- Location: LCCOMB_X40_Y3_N2
\Instruction_memory|memo~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~65_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a27\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a27\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~65_combout\);

-- Location: LCCOMB_X36_Y3_N10
\Instruction_memory|memo~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~66_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a28\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a28\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~66_combout\);

-- Location: LCCOMB_X41_Y3_N28
\Instruction_memory|memo~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~67_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a29\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a29\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~67_combout\);

-- Location: LCCOMB_X41_Y3_N26
\Instruction_memory|memo~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~68_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a30\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a30\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~68_combout\);

-- Location: LCCOMB_X34_Y3_N26
\Instruction_memory|memo~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instruction_memory|memo~69_combout\ = (\Instruction_memory|memo_rtl_0|auto_generated|ram_block1a31\ & \Instruction_memory|memo~37_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instruction_memory|memo_rtl_0|auto_generated|ram_block1a31\,
	datad => \Instruction_memory|memo~37_q\,
	combout => \Instruction_memory|memo~69_combout\);

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
END structure;


