-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "10/12/2016 20:25:53"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traffic_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0)
	);
END traffic_top;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traffic_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \state_mach|Selector9~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.night_OFF~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \count2|Add0~45_sumout\ : std_logic;
SIGNAL \count2|Add0~14\ : std_logic;
SIGNAL \count2|Add0~65_sumout\ : std_logic;
SIGNAL \state_mach|Selector5~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.EW_green_short~q\ : std_logic;
SIGNAL \count3|Add0~45_sumout\ : std_logic;
SIGNAL \state_mach|Selector0~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \state_mach|Selector0~0_combout\ : std_logic;
SIGNAL \state_mach|Selector0~2_combout\ : std_logic;
SIGNAL \state_mach|current_state.NS_green~q\ : std_logic;
SIGNAL \count3|Add0~50\ : std_logic;
SIGNAL \count3|Add0~53_sumout\ : std_logic;
SIGNAL \count3|Add0~54\ : std_logic;
SIGNAL \count3|Add0~57_sumout\ : std_logic;
SIGNAL \count3|Add0~58\ : std_logic;
SIGNAL \count3|Add0~61_sumout\ : std_logic;
SIGNAL \count3|Add0~62\ : std_logic;
SIGNAL \count3|Add0~17_sumout\ : std_logic;
SIGNAL \count3|Add0~18\ : std_logic;
SIGNAL \count3|Add0~21_sumout\ : std_logic;
SIGNAL \count3|Add0~22\ : std_logic;
SIGNAL \count3|Add0~25_sumout\ : std_logic;
SIGNAL \count3|Add0~26\ : std_logic;
SIGNAL \count3|Add0~29_sumout\ : std_logic;
SIGNAL \count3|Add0~30\ : std_logic;
SIGNAL \count3|Add0~33_sumout\ : std_logic;
SIGNAL \count3|Add0~34\ : std_logic;
SIGNAL \count3|Add0~37_sumout\ : std_logic;
SIGNAL \count3|Add0~38\ : std_logic;
SIGNAL \count3|Add0~41_sumout\ : std_logic;
SIGNAL \count3|Add0~42\ : std_logic;
SIGNAL \count3|Add0~5_sumout\ : std_logic;
SIGNAL \count3|Add0~6\ : std_logic;
SIGNAL \count3|Add0~9_sumout\ : std_logic;
SIGNAL \count3|Add0~10\ : std_logic;
SIGNAL \count3|Add0~13_sumout\ : std_logic;
SIGNAL \count3|Add0~14\ : std_logic;
SIGNAL \count3|Add0~69_sumout\ : std_logic;
SIGNAL \count3|Add0~70\ : std_logic;
SIGNAL \count3|Add0~73_sumout\ : std_logic;
SIGNAL \count3|Add0~74\ : std_logic;
SIGNAL \count3|Add0~77_sumout\ : std_logic;
SIGNAL \count3|Add0~78\ : std_logic;
SIGNAL \count3|Add0~81_sumout\ : std_logic;
SIGNAL \count3|Add0~82\ : std_logic;
SIGNAL \count3|Add0~85_sumout\ : std_logic;
SIGNAL \count3|i_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \count3|term~3_combout\ : std_logic;
SIGNAL \count3|Add0~86\ : std_logic;
SIGNAL \count3|Add0~89_sumout\ : std_logic;
SIGNAL \count3|Add0~90\ : std_logic;
SIGNAL \count3|Add0~93_sumout\ : std_logic;
SIGNAL \count3|Add0~94\ : std_logic;
SIGNAL \count3|Add0~97_sumout\ : std_logic;
SIGNAL \count3|Add0~98\ : std_logic;
SIGNAL \count3|Add0~101_sumout\ : std_logic;
SIGNAL \count3|Add0~102\ : std_logic;
SIGNAL \count3|Add0~105_sumout\ : std_logic;
SIGNAL \count3|Add0~106\ : std_logic;
SIGNAL \count3|Add0~109_sumout\ : std_logic;
SIGNAL \count3|term~4_combout\ : std_logic;
SIGNAL \count3|i_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \count3|Add0~110\ : std_logic;
SIGNAL \count3|Add0~1_sumout\ : std_logic;
SIGNAL \count3|term~0_combout\ : std_logic;
SIGNAL \count3|term~1_combout\ : std_logic;
SIGNAL \count3|term~5_combout\ : std_logic;
SIGNAL \state_mach|Selector3~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.NS_left~q\ : std_logic;
SIGNAL \state_mach|Selector1~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.NS_green_short~q\ : std_logic;
SIGNAL \state_mach|Selector2~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.NS_yellow~q\ : std_logic;
SIGNAL \state_mach|Selector4~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.EW_green~q\ : std_logic;
SIGNAL \state_mach|count3_en~combout\ : std_logic;
SIGNAL \count3|Add0~46\ : std_logic;
SIGNAL \count3|Add0~65_sumout\ : std_logic;
SIGNAL \count3|Add0~66\ : std_logic;
SIGNAL \count3|Add0~49_sumout\ : std_logic;
SIGNAL \count3|term~2_combout\ : std_logic;
SIGNAL \count3|term~combout\ : std_logic;
SIGNAL \state_mach|Selector6~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.EW_yellow~q\ : std_logic;
SIGNAL \state_mach|WideOr16~combout\ : std_logic;
SIGNAL \count2|Add0~66\ : std_logic;
SIGNAL \count2|Add0~69_sumout\ : std_logic;
SIGNAL \count2|Add0~70\ : std_logic;
SIGNAL \count2|Add0~73_sumout\ : std_logic;
SIGNAL \count2|Add0~74\ : std_logic;
SIGNAL \count2|Add0~77_sumout\ : std_logic;
SIGNAL \count2|Add0~78\ : std_logic;
SIGNAL \count2|Add0~81_sumout\ : std_logic;
SIGNAL \count2|Add0~82\ : std_logic;
SIGNAL \count2|Add0~85_sumout\ : std_logic;
SIGNAL \count2|term~3_combout\ : std_logic;
SIGNAL \count2|Add0~86\ : std_logic;
SIGNAL \count2|Add0~89_sumout\ : std_logic;
SIGNAL \count2|Add0~90\ : std_logic;
SIGNAL \count2|Add0~93_sumout\ : std_logic;
SIGNAL \count2|Add0~94\ : std_logic;
SIGNAL \count2|Add0~97_sumout\ : std_logic;
SIGNAL \count2|Add0~98\ : std_logic;
SIGNAL \count2|Add0~101_sumout\ : std_logic;
SIGNAL \count2|Add0~102\ : std_logic;
SIGNAL \count2|Add0~105_sumout\ : std_logic;
SIGNAL \count2|Add0~106\ : std_logic;
SIGNAL \count2|Add0~109_sumout\ : std_logic;
SIGNAL \count2|term~4_combout\ : std_logic;
SIGNAL \count2|i_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \count2|term~1_combout\ : std_logic;
SIGNAL \count2|term~2_combout\ : std_logic;
SIGNAL \count2|term~combout\ : std_logic;
SIGNAL \count2|Add0~46\ : std_logic;
SIGNAL \count2|Add0~41_sumout\ : std_logic;
SIGNAL \count2|Add0~42\ : std_logic;
SIGNAL \count2|Add0~49_sumout\ : std_logic;
SIGNAL \count2|Add0~50\ : std_logic;
SIGNAL \count2|Add0~53_sumout\ : std_logic;
SIGNAL \count2|Add0~54\ : std_logic;
SIGNAL \count2|Add0~57_sumout\ : std_logic;
SIGNAL \count2|Add0~58\ : std_logic;
SIGNAL \count2|Add0~61_sumout\ : std_logic;
SIGNAL \count2|Add0~62\ : std_logic;
SIGNAL \count2|Add0~17_sumout\ : std_logic;
SIGNAL \count2|Add0~18\ : std_logic;
SIGNAL \count2|Add0~21_sumout\ : std_logic;
SIGNAL \count2|Add0~22\ : std_logic;
SIGNAL \count2|Add0~25_sumout\ : std_logic;
SIGNAL \count2|Add0~26\ : std_logic;
SIGNAL \count2|Add0~29_sumout\ : std_logic;
SIGNAL \count2|Add0~30\ : std_logic;
SIGNAL \count2|Add0~33_sumout\ : std_logic;
SIGNAL \count2|Add0~34\ : std_logic;
SIGNAL \count2|Add0~37_sumout\ : std_logic;
SIGNAL \count2|Add0~38\ : std_logic;
SIGNAL \count2|Add0~1_sumout\ : std_logic;
SIGNAL \count2|Add0~2\ : std_logic;
SIGNAL \count2|Add0~5_sumout\ : std_logic;
SIGNAL \count2|Add0~6\ : std_logic;
SIGNAL \count2|Add0~9_sumout\ : std_logic;
SIGNAL \count2|Add0~10\ : std_logic;
SIGNAL \count2|Add0~13_sumout\ : std_logic;
SIGNAL \count2|term~0_combout\ : std_logic;
SIGNAL \count2|term~5_combout\ : std_logic;
SIGNAL \state_mach|Selector7~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.EW_left~q\ : std_logic;
SIGNAL \count1|term~combout\ : std_logic;
SIGNAL \state_mach|WideOr9~combout\ : std_logic;
SIGNAL \count1|Add0~49_sumout\ : std_logic;
SIGNAL \count1|Add0~50\ : std_logic;
SIGNAL \count1|Add0~45_sumout\ : std_logic;
SIGNAL \count1|Add0~46\ : std_logic;
SIGNAL \count1|Add0~53_sumout\ : std_logic;
SIGNAL \count1|Add0~54\ : std_logic;
SIGNAL \count1|Add0~57_sumout\ : std_logic;
SIGNAL \count1|i_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|Add0~58\ : std_logic;
SIGNAL \count1|Add0~61_sumout\ : std_logic;
SIGNAL \count1|Add0~62\ : std_logic;
SIGNAL \count1|Add0~65_sumout\ : std_logic;
SIGNAL \count1|Add0~66\ : std_logic;
SIGNAL \count1|Add0~21_sumout\ : std_logic;
SIGNAL \count1|Add0~22\ : std_logic;
SIGNAL \count1|Add0~25_sumout\ : std_logic;
SIGNAL \count1|Add0~26\ : std_logic;
SIGNAL \count1|Add0~29_sumout\ : std_logic;
SIGNAL \count1|Add0~30\ : std_logic;
SIGNAL \count1|Add0~33_sumout\ : std_logic;
SIGNAL \count1|Add0~34\ : std_logic;
SIGNAL \count1|Add0~89_sumout\ : std_logic;
SIGNAL \count1|Add0~90\ : std_logic;
SIGNAL \count1|Add0~41_sumout\ : std_logic;
SIGNAL \count1|i_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|Add0~42\ : std_logic;
SIGNAL \count1|Add0~5_sumout\ : std_logic;
SIGNAL \count1|Add0~6\ : std_logic;
SIGNAL \count1|Add0~9_sumout\ : std_logic;
SIGNAL \count1|Add0~10\ : std_logic;
SIGNAL \count1|Add0~13_sumout\ : std_logic;
SIGNAL \count1|i_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|Add0~14\ : std_logic;
SIGNAL \count1|Add0~17_sumout\ : std_logic;
SIGNAL \count1|Add0~18\ : std_logic;
SIGNAL \count1|Add0~69_sumout\ : std_logic;
SIGNAL \count1|Add0~70\ : std_logic;
SIGNAL \count1|Add0~73_sumout\ : std_logic;
SIGNAL \count1|i_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|Add0~74\ : std_logic;
SIGNAL \count1|Add0~77_sumout\ : std_logic;
SIGNAL \count1|Add0~78\ : std_logic;
SIGNAL \count1|Add0~81_sumout\ : std_logic;
SIGNAL \count1|Add0~82\ : std_logic;
SIGNAL \count1|Add0~85_sumout\ : std_logic;
SIGNAL \count1|Add0~86\ : std_logic;
SIGNAL \count1|Add0~93_sumout\ : std_logic;
SIGNAL \count1|i_count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|Add0~94\ : std_logic;
SIGNAL \count1|Add0~97_sumout\ : std_logic;
SIGNAL \count1|Add0~98\ : std_logic;
SIGNAL \count1|Add0~101_sumout\ : std_logic;
SIGNAL \count1|Add0~102\ : std_logic;
SIGNAL \count1|Add0~105_sumout\ : std_logic;
SIGNAL \count1|Add0~106\ : std_logic;
SIGNAL \count1|Add0~109_sumout\ : std_logic;
SIGNAL \count1|Add0~110\ : std_logic;
SIGNAL \count1|Add0~1_sumout\ : std_logic;
SIGNAL \count1|i_count[26]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|i_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|i_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|term~2_combout\ : std_logic;
SIGNAL \count1|term~4_combout\ : std_logic;
SIGNAL \count1|i_count[27]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|Add0~2\ : std_logic;
SIGNAL \count1|Add0~37_sumout\ : std_logic;
SIGNAL \count1|term~1_combout\ : std_logic;
SIGNAL \count1|term~3_combout\ : std_logic;
SIGNAL \count1|term~0_combout\ : std_logic;
SIGNAL \count1|term~5_combout\ : std_logic;
SIGNAL \state_mach|Selector8~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.night_m~q\ : std_logic;
SIGNAL \state_mach|WideOr11~combout\ : std_logic;
SIGNAL \state_mach|WideOr10~combout\ : std_logic;
SIGNAL \hexF|Mux3~0_combout\ : std_logic;
SIGNAL \hexF|Mux2~0_combout\ : std_logic;
SIGNAL \state_mach|WideOr15~combout\ : std_logic;
SIGNAL \hexF|Mux7~0_combout\ : std_logic;
SIGNAL \hexF|Mux6~0_combout\ : std_logic;
SIGNAL \count2|i_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \count3|i_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \count1|i_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \state_mach|EW_light\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \count3|ALT_INV_i_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \count3|ALT_INV_i_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \count2|ALT_INV_i_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \count3|ALT_INV_term~5_combout\ : std_logic;
SIGNAL \count2|ALT_INV_term~5_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \count1|ALT_INV_term~5_combout\ : std_logic;
SIGNAL \count1|ALT_INV_term~4_combout\ : std_logic;
SIGNAL \count1|ALT_INV_term~3_combout\ : std_logic;
SIGNAL \count1|ALT_INV_term~2_combout\ : std_logic;
SIGNAL \count1|ALT_INV_term~1_combout\ : std_logic;
SIGNAL \count1|ALT_INV_term~0_combout\ : std_logic;
SIGNAL \count3|ALT_INV_term~combout\ : std_logic;
SIGNAL \count3|ALT_INV_term~4_combout\ : std_logic;
SIGNAL \count3|ALT_INV_term~3_combout\ : std_logic;
SIGNAL \count3|ALT_INV_term~2_combout\ : std_logic;
SIGNAL \count3|ALT_INV_term~1_combout\ : std_logic;
SIGNAL \count3|ALT_INV_term~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_count3_en~combout\ : std_logic;
SIGNAL \count2|ALT_INV_term~combout\ : std_logic;
SIGNAL \count2|ALT_INV_term~4_combout\ : std_logic;
SIGNAL \count2|ALT_INV_term~3_combout\ : std_logic;
SIGNAL \count2|ALT_INV_term~2_combout\ : std_logic;
SIGNAL \count2|ALT_INV_term~1_combout\ : std_logic;
SIGNAL \count2|ALT_INV_term~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_WideOr16~combout\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.EW_green_short~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.EW_green~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.EW_yellow~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.EW_left~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.NS_left~q\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.NS_green_short~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.NS_green~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.night_OFF~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.night_m~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.NS_yellow~q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \count3|ALT_INV_i_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \count2|ALT_INV_i_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \count1|ALT_INV_i_count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count[27]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \count1|ALT_INV_i_count[26]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\count3|ALT_INV_i_count[16]~DUPLICATE_q\ <= NOT \count3|i_count[16]~DUPLICATE_q\;
\count3|ALT_INV_i_count[13]~DUPLICATE_q\ <= NOT \count3|i_count[13]~DUPLICATE_q\;
\count2|ALT_INV_i_count[11]~DUPLICATE_q\ <= NOT \count2|i_count[11]~DUPLICATE_q\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\count3|ALT_INV_term~5_combout\ <= NOT \count3|term~5_combout\;
\count2|ALT_INV_term~5_combout\ <= NOT \count2|term~5_combout\;
\state_mach|ALT_INV_Selector0~1_combout\ <= NOT \state_mach|Selector0~1_combout\;
\state_mach|ALT_INV_Selector0~0_combout\ <= NOT \state_mach|Selector0~0_combout\;
\count1|ALT_INV_term~5_combout\ <= NOT \count1|term~5_combout\;
\count1|ALT_INV_term~4_combout\ <= NOT \count1|term~4_combout\;
\count1|ALT_INV_term~3_combout\ <= NOT \count1|term~3_combout\;
\count1|ALT_INV_term~2_combout\ <= NOT \count1|term~2_combout\;
\count1|ALT_INV_term~1_combout\ <= NOT \count1|term~1_combout\;
\count1|ALT_INV_term~0_combout\ <= NOT \count1|term~0_combout\;
\count3|ALT_INV_term~combout\ <= NOT \count3|term~combout\;
\count3|ALT_INV_term~4_combout\ <= NOT \count3|term~4_combout\;
\count3|ALT_INV_term~3_combout\ <= NOT \count3|term~3_combout\;
\count3|ALT_INV_term~2_combout\ <= NOT \count3|term~2_combout\;
\count3|ALT_INV_term~1_combout\ <= NOT \count3|term~1_combout\;
\count3|ALT_INV_term~0_combout\ <= NOT \count3|term~0_combout\;
\state_mach|ALT_INV_count3_en~combout\ <= NOT \state_mach|count3_en~combout\;
\count2|ALT_INV_term~combout\ <= NOT \count2|term~combout\;
\count2|ALT_INV_term~4_combout\ <= NOT \count2|term~4_combout\;
\count2|ALT_INV_term~3_combout\ <= NOT \count2|term~3_combout\;
\count2|ALT_INV_term~2_combout\ <= NOT \count2|term~2_combout\;
\count2|ALT_INV_term~1_combout\ <= NOT \count2|term~1_combout\;
\count2|ALT_INV_term~0_combout\ <= NOT \count2|term~0_combout\;
\state_mach|ALT_INV_WideOr16~combout\ <= NOT \state_mach|WideOr16~combout\;
\hexF|ALT_INV_Mux6~0_combout\ <= NOT \hexF|Mux6~0_combout\;
\state_mach|ALT_INV_current_state.EW_green_short~q\ <= NOT \state_mach|current_state.EW_green_short~q\;
\state_mach|ALT_INV_current_state.EW_green~q\ <= NOT \state_mach|current_state.EW_green~q\;
\state_mach|ALT_INV_current_state.EW_yellow~q\ <= NOT \state_mach|current_state.EW_yellow~q\;
\state_mach|ALT_INV_current_state.EW_left~q\ <= NOT \state_mach|current_state.EW_left~q\;
\state_mach|ALT_INV_current_state.NS_left~q\ <= NOT \state_mach|current_state.NS_left~q\;
\hexF|ALT_INV_Mux2~0_combout\ <= NOT \hexF|Mux2~0_combout\;
\state_mach|ALT_INV_current_state.NS_green_short~q\ <= NOT \state_mach|current_state.NS_green_short~q\;
\state_mach|ALT_INV_current_state.NS_green~q\ <= NOT \state_mach|current_state.NS_green~q\;
\state_mach|ALT_INV_current_state.night_OFF~q\ <= NOT \state_mach|current_state.night_OFF~q\;
\state_mach|ALT_INV_current_state.night_m~q\ <= NOT \state_mach|current_state.night_m~q\;
\state_mach|ALT_INV_current_state.NS_yellow~q\ <= NOT \state_mach|current_state.NS_yellow~q\;
\count1|ALT_INV_i_count\(25) <= NOT \count1|i_count\(25);
\count1|ALT_INV_i_count\(24) <= NOT \count1|i_count\(24);
\count1|ALT_INV_i_count\(23) <= NOT \count1|i_count\(23);
\count1|ALT_INV_i_count\(22) <= NOT \count1|i_count\(22);
\count1|ALT_INV_i_count\(21) <= NOT \count1|i_count\(21);
\count1|ALT_INV_i_count\(10) <= NOT \count1|i_count\(10);
\count1|ALT_INV_i_count\(20) <= NOT \count1|i_count\(20);
\count1|ALT_INV_i_count\(19) <= NOT \count1|i_count\(19);
\count1|ALT_INV_i_count\(18) <= NOT \count1|i_count\(18);
\count1|ALT_INV_i_count\(17) <= NOT \count1|i_count\(17);
\count1|ALT_INV_i_count\(16) <= NOT \count1|i_count\(16);
\count1|ALT_INV_i_count\(5) <= NOT \count1|i_count\(5);
\count1|ALT_INV_i_count\(4) <= NOT \count1|i_count\(4);
\count1|ALT_INV_i_count\(3) <= NOT \count1|i_count\(3);
\count1|ALT_INV_i_count\(2) <= NOT \count1|i_count\(2);
\count1|ALT_INV_i_count\(0) <= NOT \count1|i_count\(0);
\count1|ALT_INV_i_count\(1) <= NOT \count1|i_count\(1);
\count1|ALT_INV_i_count\(11) <= NOT \count1|i_count\(11);
\count1|ALT_INV_i_count\(27) <= NOT \count1|i_count\(27);
\count1|ALT_INV_i_count\(9) <= NOT \count1|i_count\(9);
\count1|ALT_INV_i_count\(8) <= NOT \count1|i_count\(8);
\count1|ALT_INV_i_count\(7) <= NOT \count1|i_count\(7);
\count1|ALT_INV_i_count\(6) <= NOT \count1|i_count\(6);
\count1|ALT_INV_i_count\(15) <= NOT \count1|i_count\(15);
\count1|ALT_INV_i_count\(14) <= NOT \count1|i_count\(14);
\count1|ALT_INV_i_count\(13) <= NOT \count1|i_count\(13);
\count1|ALT_INV_i_count\(12) <= NOT \count1|i_count\(12);
\count1|ALT_INV_i_count\(26) <= NOT \count1|i_count\(26);
\count3|ALT_INV_i_count\(26) <= NOT \count3|i_count\(26);
\count3|ALT_INV_i_count\(25) <= NOT \count3|i_count\(25);
\count3|ALT_INV_i_count\(24) <= NOT \count3|i_count\(24);
\count3|ALT_INV_i_count\(23) <= NOT \count3|i_count\(23);
\count3|ALT_INV_i_count\(22) <= NOT \count3|i_count\(22);
\count3|ALT_INV_i_count\(21) <= NOT \count3|i_count\(21);
\count3|ALT_INV_i_count\(20) <= NOT \count3|i_count\(20);
\count3|ALT_INV_i_count\(19) <= NOT \count3|i_count\(19);
\count3|ALT_INV_i_count\(18) <= NOT \count3|i_count\(18);
\count3|ALT_INV_i_count\(17) <= NOT \count3|i_count\(17);
\count3|ALT_INV_i_count\(16) <= NOT \count3|i_count\(16);
\count3|ALT_INV_i_count\(1) <= NOT \count3|i_count\(1);
\count3|ALT_INV_i_count\(5) <= NOT \count3|i_count\(5);
\count3|ALT_INV_i_count\(4) <= NOT \count3|i_count\(4);
\count3|ALT_INV_i_count\(3) <= NOT \count3|i_count\(3);
\count3|ALT_INV_i_count\(2) <= NOT \count3|i_count\(2);
\count3|ALT_INV_i_count\(0) <= NOT \count3|i_count\(0);
\count3|ALT_INV_i_count\(12) <= NOT \count3|i_count\(12);
\count3|ALT_INV_i_count\(11) <= NOT \count3|i_count\(11);
\count3|ALT_INV_i_count\(10) <= NOT \count3|i_count\(10);
\count3|ALT_INV_i_count\(9) <= NOT \count3|i_count\(9);
\count3|ALT_INV_i_count\(8) <= NOT \count3|i_count\(8);
\count3|ALT_INV_i_count\(7) <= NOT \count3|i_count\(7);
\count3|ALT_INV_i_count\(6) <= NOT \count3|i_count\(6);
\count3|ALT_INV_i_count\(15) <= NOT \count3|i_count\(15);
\count3|ALT_INV_i_count\(14) <= NOT \count3|i_count\(14);
\count3|ALT_INV_i_count\(13) <= NOT \count3|i_count\(13);
\count3|ALT_INV_i_count\(27) <= NOT \count3|i_count\(27);
\count2|ALT_INV_i_count\(27) <= NOT \count2|i_count\(27);
\count2|ALT_INV_i_count\(26) <= NOT \count2|i_count\(26);
\count2|ALT_INV_i_count\(25) <= NOT \count2|i_count\(25);
\count2|ALT_INV_i_count\(24) <= NOT \count2|i_count\(24);
\count2|ALT_INV_i_count\(23) <= NOT \count2|i_count\(23);
\count2|ALT_INV_i_count\(22) <= NOT \count2|i_count\(22);
\count2|ALT_INV_i_count\(21) <= NOT \count2|i_count\(21);
\count2|ALT_INV_i_count\(20) <= NOT \count2|i_count\(20);
\count2|ALT_INV_i_count\(19) <= NOT \count2|i_count\(19);
\count2|ALT_INV_i_count\(18) <= NOT \count2|i_count\(18);
\count2|ALT_INV_i_count\(17) <= NOT \count2|i_count\(17);
\count2|ALT_INV_i_count\(16) <= NOT \count2|i_count\(16);
\count2|ALT_INV_i_count\(5) <= NOT \count2|i_count\(5);
\count2|ALT_INV_i_count\(4) <= NOT \count2|i_count\(4);
\count2|ALT_INV_i_count\(3) <= NOT \count2|i_count\(3);
\count2|ALT_INV_i_count\(2) <= NOT \count2|i_count\(2);
\count2|ALT_INV_i_count\(0) <= NOT \count2|i_count\(0);
\count2|ALT_INV_i_count\(1) <= NOT \count2|i_count\(1);
\count2|ALT_INV_i_count\(11) <= NOT \count2|i_count\(11);
\count2|ALT_INV_i_count\(10) <= NOT \count2|i_count\(10);
\count2|ALT_INV_i_count\(9) <= NOT \count2|i_count\(9);
\count2|ALT_INV_i_count\(8) <= NOT \count2|i_count\(8);
\count2|ALT_INV_i_count\(7) <= NOT \count2|i_count\(7);
\count2|ALT_INV_i_count\(6) <= NOT \count2|i_count\(6);
\count2|ALT_INV_i_count\(15) <= NOT \count2|i_count\(15);
\count2|ALT_INV_i_count\(14) <= NOT \count2|i_count\(14);
\count2|ALT_INV_i_count\(13) <= NOT \count2|i_count\(13);
\count2|ALT_INV_i_count\(12) <= NOT \count2|i_count\(12);
\count1|ALT_INV_i_count[21]~DUPLICATE_q\ <= NOT \count1|i_count[21]~DUPLICATE_q\;
\count1|ALT_INV_i_count[17]~DUPLICATE_q\ <= NOT \count1|i_count[17]~DUPLICATE_q\;
\count1|ALT_INV_i_count[4]~DUPLICATE_q\ <= NOT \count1|i_count[4]~DUPLICATE_q\;
\count1|ALT_INV_i_count[3]~DUPLICATE_q\ <= NOT \count1|i_count[3]~DUPLICATE_q\;
\count1|ALT_INV_i_count[0]~DUPLICATE_q\ <= NOT \count1|i_count[0]~DUPLICATE_q\;
\count1|ALT_INV_i_count[11]~DUPLICATE_q\ <= NOT \count1|i_count[11]~DUPLICATE_q\;
\count1|ALT_INV_i_count[27]~DUPLICATE_q\ <= NOT \count1|i_count[27]~DUPLICATE_q\;
\count1|ALT_INV_i_count[14]~DUPLICATE_q\ <= NOT \count1|i_count[14]~DUPLICATE_q\;
\count1|ALT_INV_i_count[26]~DUPLICATE_q\ <= NOT \count1|i_count[26]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|WideOr11~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|WideOr10~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|WideOr11~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|ALT_INV_current_state.NS_left~q\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|ALT_INV_current_state.NS_left~q\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|ALT_INV_current_state.NS_left~q\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|ALT_INV_current_state.EW_left~q\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|ALT_INV_current_state.EW_left~q\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|ALT_INV_current_state.EW_left~q\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|EW_light\(0),
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|WideOr15~combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_mach|EW_light\(0),
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X84_Y10_N12
\state_mach|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector9~0_combout\ = ( \count1|term~5_combout\ & ( (\state_mach|current_state.night_m~q\ & \SW[0]~input_o\) ) ) # ( !\count1|term~5_combout\ & ( (\SW[0]~input_o\ & \state_mach|current_state.night_OFF~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.night_m~q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \state_mach|ALT_INV_current_state.night_OFF~q\,
	dataf => \count1|ALT_INV_term~5_combout\,
	combout => \state_mach|Selector9~0_combout\);

-- Location: FF_X84_Y10_N14
\state_mach|current_state.night_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.night_OFF~q\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X85_Y12_N30
\count2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~45_sumout\ = SUM(( \count2|i_count\(0) ) + ( VCC ) + ( !VCC ))
-- \count2|Add0~46\ = CARRY(( \count2|i_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(0),
	cin => GND,
	sumout => \count2|Add0~45_sumout\,
	cout => \count2|Add0~46\);

-- Location: LABCELL_X85_Y11_N15
\count2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~13_sumout\ = SUM(( \count2|i_count\(15) ) + ( GND ) + ( \count2|Add0~10\ ))
-- \count2|Add0~14\ = CARRY(( \count2|i_count\(15) ) + ( GND ) + ( \count2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(15),
	cin => \count2|Add0~10\,
	sumout => \count2|Add0~13_sumout\,
	cout => \count2|Add0~14\);

-- Location: LABCELL_X85_Y11_N18
\count2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~65_sumout\ = SUM(( \count2|i_count\(16) ) + ( GND ) + ( \count2|Add0~14\ ))
-- \count2|Add0~66\ = CARRY(( \count2|i_count\(16) ) + ( GND ) + ( \count2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(16),
	cin => \count2|Add0~14\,
	sumout => \count2|Add0~65_sumout\,
	cout => \count2|Add0~66\);

-- Location: MLABCELL_X84_Y11_N6
\state_mach|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector5~0_combout\ = ( \count2|term~5_combout\ & ( (!\SW[0]~input_o\ & (\count1|term~5_combout\ & \state_mach|current_state.EW_left~q\)) ) ) # ( !\count2|term~5_combout\ & ( (!\SW[0]~input_o\ & (((\count1|term~5_combout\ & 
-- \state_mach|current_state.EW_left~q\)) # (\state_mach|current_state.EW_green_short~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101010001000100010101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \state_mach|ALT_INV_current_state.EW_green_short~q\,
	datac => \count1|ALT_INV_term~5_combout\,
	datad => \state_mach|ALT_INV_current_state.EW_left~q\,
	dataf => \count2|ALT_INV_term~5_combout\,
	combout => \state_mach|Selector5~0_combout\);

-- Location: FF_X84_Y11_N8
\state_mach|current_state.EW_green_short\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.EW_green_short~q\);

-- Location: MLABCELL_X84_Y10_N30
\count3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~45_sumout\ = SUM(( \count3|i_count\(0) ) + ( VCC ) + ( !VCC ))
-- \count3|Add0~46\ = CARRY(( \count3|i_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(0),
	cin => GND,
	sumout => \count3|Add0~45_sumout\,
	cout => \count3|Add0~46\);

-- Location: MLABCELL_X84_Y11_N36
\state_mach|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector0~1_combout\ = ( \state_mach|current_state.night_OFF~q\ & ( !\SW[0]~input_o\ ) ) # ( !\state_mach|current_state.night_OFF~q\ & ( (\state_mach|current_state.night_m~q\ & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.night_m~q\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \state_mach|ALT_INV_current_state.night_OFF~q\,
	combout => \state_mach|Selector0~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X84_Y11_N45
\state_mach|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector0~0_combout\ = ( \state_mach|current_state.EW_yellow~q\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	dataf => \state_mach|ALT_INV_current_state.EW_yellow~q\,
	combout => \state_mach|Selector0~0_combout\);

-- Location: MLABCELL_X84_Y11_N24
\state_mach|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector0~2_combout\ = ( \state_mach|current_state.NS_green~q\ & ( \count2|term~combout\ & ( (!\state_mach|Selector0~1_combout\ & ((!\state_mach|Selector0~0_combout\) # (\SW[0]~input_o\))) ) ) ) # ( !\state_mach|current_state.NS_green~q\ & ( 
-- \count2|term~combout\ & ( (!\state_mach|Selector0~1_combout\ & (((!\state_mach|Selector0~0_combout\ & \count3|term~combout\)) # (\SW[0]~input_o\))) ) ) ) # ( \state_mach|current_state.NS_green~q\ & ( !\count2|term~combout\ & ( 
-- !\state_mach|Selector0~1_combout\ ) ) ) # ( !\state_mach|current_state.NS_green~q\ & ( !\count2|term~combout\ & ( (!\state_mach|Selector0~1_combout\ & ((\count3|term~combout\) # (\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010101010101010101000001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Selector0~1_combout\,
	datab => \state_mach|ALT_INV_Selector0~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \count3|ALT_INV_term~combout\,
	datae => \state_mach|ALT_INV_current_state.NS_green~q\,
	dataf => \count2|ALT_INV_term~combout\,
	combout => \state_mach|Selector0~2_combout\);

-- Location: FF_X84_Y11_N26
\state_mach|current_state.NS_green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.NS_green~q\);

-- Location: MLABCELL_X84_Y10_N36
\count3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~49_sumout\ = SUM(( \count3|i_count\(2) ) + ( GND ) + ( \count3|Add0~66\ ))
-- \count3|Add0~50\ = CARRY(( \count3|i_count\(2) ) + ( GND ) + ( \count3|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count3|ALT_INV_i_count\(2),
	cin => \count3|Add0~66\,
	sumout => \count3|Add0~49_sumout\,
	cout => \count3|Add0~50\);

-- Location: MLABCELL_X84_Y10_N39
\count3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~53_sumout\ = SUM(( \count3|i_count\(3) ) + ( GND ) + ( \count3|Add0~50\ ))
-- \count3|Add0~54\ = CARRY(( \count3|i_count\(3) ) + ( GND ) + ( \count3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(3),
	cin => \count3|Add0~50\,
	sumout => \count3|Add0~53_sumout\,
	cout => \count3|Add0~54\);

-- Location: FF_X84_Y10_N41
\count3|i_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~53_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(3));

-- Location: MLABCELL_X84_Y10_N42
\count3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~57_sumout\ = SUM(( \count3|i_count\(4) ) + ( GND ) + ( \count3|Add0~54\ ))
-- \count3|Add0~58\ = CARRY(( \count3|i_count\(4) ) + ( GND ) + ( \count3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count3|ALT_INV_i_count\(4),
	cin => \count3|Add0~54\,
	sumout => \count3|Add0~57_sumout\,
	cout => \count3|Add0~58\);

-- Location: FF_X84_Y10_N43
\count3|i_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~57_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(4));

-- Location: MLABCELL_X84_Y10_N45
\count3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~61_sumout\ = SUM(( \count3|i_count\(5) ) + ( GND ) + ( \count3|Add0~58\ ))
-- \count3|Add0~62\ = CARRY(( \count3|i_count\(5) ) + ( GND ) + ( \count3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count3|ALT_INV_i_count\(5),
	cin => \count3|Add0~58\,
	sumout => \count3|Add0~61_sumout\,
	cout => \count3|Add0~62\);

-- Location: FF_X84_Y10_N47
\count3|i_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~61_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(5));

-- Location: MLABCELL_X84_Y10_N48
\count3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~17_sumout\ = SUM(( \count3|i_count\(6) ) + ( GND ) + ( \count3|Add0~62\ ))
-- \count3|Add0~18\ = CARRY(( \count3|i_count\(6) ) + ( GND ) + ( \count3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(6),
	cin => \count3|Add0~62\,
	sumout => \count3|Add0~17_sumout\,
	cout => \count3|Add0~18\);

-- Location: FF_X84_Y10_N50
\count3|i_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~17_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(6));

-- Location: MLABCELL_X84_Y10_N51
\count3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~21_sumout\ = SUM(( \count3|i_count\(7) ) + ( GND ) + ( \count3|Add0~18\ ))
-- \count3|Add0~22\ = CARRY(( \count3|i_count\(7) ) + ( GND ) + ( \count3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(7),
	cin => \count3|Add0~18\,
	sumout => \count3|Add0~21_sumout\,
	cout => \count3|Add0~22\);

-- Location: FF_X84_Y10_N52
\count3|i_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~21_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(7));

-- Location: MLABCELL_X84_Y10_N54
\count3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~25_sumout\ = SUM(( \count3|i_count\(8) ) + ( GND ) + ( \count3|Add0~22\ ))
-- \count3|Add0~26\ = CARRY(( \count3|i_count\(8) ) + ( GND ) + ( \count3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count3|ALT_INV_i_count\(8),
	cin => \count3|Add0~22\,
	sumout => \count3|Add0~25_sumout\,
	cout => \count3|Add0~26\);

-- Location: FF_X84_Y10_N55
\count3|i_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~25_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(8));

-- Location: MLABCELL_X84_Y10_N57
\count3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~29_sumout\ = SUM(( \count3|i_count\(9) ) + ( GND ) + ( \count3|Add0~26\ ))
-- \count3|Add0~30\ = CARRY(( \count3|i_count\(9) ) + ( GND ) + ( \count3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(9),
	cin => \count3|Add0~26\,
	sumout => \count3|Add0~29_sumout\,
	cout => \count3|Add0~30\);

-- Location: FF_X84_Y10_N59
\count3|i_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~29_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(9));

-- Location: MLABCELL_X84_Y9_N0
\count3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~33_sumout\ = SUM(( \count3|i_count\(10) ) + ( GND ) + ( \count3|Add0~30\ ))
-- \count3|Add0~34\ = CARRY(( \count3|i_count\(10) ) + ( GND ) + ( \count3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(10),
	cin => \count3|Add0~30\,
	sumout => \count3|Add0~33_sumout\,
	cout => \count3|Add0~34\);

-- Location: FF_X84_Y9_N1
\count3|i_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~33_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(10));

-- Location: MLABCELL_X84_Y9_N3
\count3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~37_sumout\ = SUM(( \count3|i_count\(11) ) + ( GND ) + ( \count3|Add0~34\ ))
-- \count3|Add0~38\ = CARRY(( \count3|i_count\(11) ) + ( GND ) + ( \count3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count3|ALT_INV_i_count\(11),
	cin => \count3|Add0~34\,
	sumout => \count3|Add0~37_sumout\,
	cout => \count3|Add0~38\);

-- Location: FF_X84_Y9_N5
\count3|i_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~37_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(11));

-- Location: MLABCELL_X84_Y9_N6
\count3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~41_sumout\ = SUM(( \count3|i_count\(12) ) + ( GND ) + ( \count3|Add0~38\ ))
-- \count3|Add0~42\ = CARRY(( \count3|i_count\(12) ) + ( GND ) + ( \count3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count3|ALT_INV_i_count\(12),
	cin => \count3|Add0~38\,
	sumout => \count3|Add0~41_sumout\,
	cout => \count3|Add0~42\);

-- Location: FF_X84_Y9_N8
\count3|i_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~41_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(12));

-- Location: MLABCELL_X84_Y9_N9
\count3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~5_sumout\ = SUM(( \count3|i_count\(13) ) + ( GND ) + ( \count3|Add0~42\ ))
-- \count3|Add0~6\ = CARRY(( \count3|i_count\(13) ) + ( GND ) + ( \count3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(13),
	cin => \count3|Add0~42\,
	sumout => \count3|Add0~5_sumout\,
	cout => \count3|Add0~6\);

-- Location: FF_X84_Y9_N11
\count3|i_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~5_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(13));

-- Location: MLABCELL_X84_Y9_N12
\count3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~9_sumout\ = SUM(( \count3|i_count\(14) ) + ( GND ) + ( \count3|Add0~6\ ))
-- \count3|Add0~10\ = CARRY(( \count3|i_count\(14) ) + ( GND ) + ( \count3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count3|ALT_INV_i_count\(14),
	cin => \count3|Add0~6\,
	sumout => \count3|Add0~9_sumout\,
	cout => \count3|Add0~10\);

-- Location: FF_X84_Y9_N13
\count3|i_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~9_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(14));

-- Location: MLABCELL_X84_Y9_N15
\count3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~13_sumout\ = SUM(( \count3|i_count\(15) ) + ( GND ) + ( \count3|Add0~10\ ))
-- \count3|Add0~14\ = CARRY(( \count3|i_count\(15) ) + ( GND ) + ( \count3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(15),
	cin => \count3|Add0~10\,
	sumout => \count3|Add0~13_sumout\,
	cout => \count3|Add0~14\);

-- Location: FF_X84_Y9_N17
\count3|i_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~13_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(15));

-- Location: MLABCELL_X84_Y9_N18
\count3|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~69_sumout\ = SUM(( \count3|i_count\(16) ) + ( GND ) + ( \count3|Add0~14\ ))
-- \count3|Add0~70\ = CARRY(( \count3|i_count\(16) ) + ( GND ) + ( \count3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(16),
	cin => \count3|Add0~14\,
	sumout => \count3|Add0~69_sumout\,
	cout => \count3|Add0~70\);

-- Location: FF_X84_Y9_N20
\count3|i_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~69_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(16));

-- Location: MLABCELL_X84_Y9_N21
\count3|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~73_sumout\ = SUM(( \count3|i_count\(17) ) + ( GND ) + ( \count3|Add0~70\ ))
-- \count3|Add0~74\ = CARRY(( \count3|i_count\(17) ) + ( GND ) + ( \count3|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(17),
	cin => \count3|Add0~70\,
	sumout => \count3|Add0~73_sumout\,
	cout => \count3|Add0~74\);

-- Location: FF_X84_Y9_N22
\count3|i_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~73_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(17));

-- Location: MLABCELL_X84_Y9_N24
\count3|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~77_sumout\ = SUM(( \count3|i_count\(18) ) + ( GND ) + ( \count3|Add0~74\ ))
-- \count3|Add0~78\ = CARRY(( \count3|i_count\(18) ) + ( GND ) + ( \count3|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(18),
	cin => \count3|Add0~74\,
	sumout => \count3|Add0~77_sumout\,
	cout => \count3|Add0~78\);

-- Location: FF_X84_Y9_N26
\count3|i_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~77_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(18));

-- Location: MLABCELL_X84_Y9_N27
\count3|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~81_sumout\ = SUM(( \count3|i_count\(19) ) + ( GND ) + ( \count3|Add0~78\ ))
-- \count3|Add0~82\ = CARRY(( \count3|i_count\(19) ) + ( GND ) + ( \count3|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(19),
	cin => \count3|Add0~78\,
	sumout => \count3|Add0~81_sumout\,
	cout => \count3|Add0~82\);

-- Location: FF_X84_Y9_N28
\count3|i_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~81_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(19));

-- Location: MLABCELL_X84_Y9_N30
\count3|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~85_sumout\ = SUM(( \count3|i_count\(20) ) + ( GND ) + ( \count3|Add0~82\ ))
-- \count3|Add0~86\ = CARRY(( \count3|i_count\(20) ) + ( GND ) + ( \count3|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(20),
	cin => \count3|Add0~82\,
	sumout => \count3|Add0~85_sumout\,
	cout => \count3|Add0~86\);

-- Location: FF_X84_Y9_N31
\count3|i_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~85_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(20));

-- Location: FF_X84_Y9_N19
\count3|i_count[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~69_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count[16]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y10_N18
\count3|term~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|term~3_combout\ = ( !\count3|i_count\(17) & ( !\count3|i_count\(19) & ( (!\count3|i_count\(1) & (\count3|i_count\(20) & (!\count3|i_count[16]~DUPLICATE_q\ & !\count3|i_count\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count3|ALT_INV_i_count\(1),
	datab => \count3|ALT_INV_i_count\(20),
	datac => \count3|ALT_INV_i_count[16]~DUPLICATE_q\,
	datad => \count3|ALT_INV_i_count\(18),
	datae => \count3|ALT_INV_i_count\(17),
	dataf => \count3|ALT_INV_i_count\(19),
	combout => \count3|term~3_combout\);

-- Location: MLABCELL_X84_Y9_N33
\count3|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~89_sumout\ = SUM(( \count3|i_count\(21) ) + ( GND ) + ( \count3|Add0~86\ ))
-- \count3|Add0~90\ = CARRY(( \count3|i_count\(21) ) + ( GND ) + ( \count3|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count3|ALT_INV_i_count\(21),
	cin => \count3|Add0~86\,
	sumout => \count3|Add0~89_sumout\,
	cout => \count3|Add0~90\);

-- Location: FF_X84_Y9_N35
\count3|i_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~89_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(21));

-- Location: MLABCELL_X84_Y9_N36
\count3|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~93_sumout\ = SUM(( \count3|i_count\(22) ) + ( GND ) + ( \count3|Add0~90\ ))
-- \count3|Add0~94\ = CARRY(( \count3|i_count\(22) ) + ( GND ) + ( \count3|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(22),
	cin => \count3|Add0~90\,
	sumout => \count3|Add0~93_sumout\,
	cout => \count3|Add0~94\);

-- Location: FF_X84_Y9_N38
\count3|i_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~93_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(22));

-- Location: MLABCELL_X84_Y9_N39
\count3|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~97_sumout\ = SUM(( \count3|i_count\(23) ) + ( GND ) + ( \count3|Add0~94\ ))
-- \count3|Add0~98\ = CARRY(( \count3|i_count\(23) ) + ( GND ) + ( \count3|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(23),
	cin => \count3|Add0~94\,
	sumout => \count3|Add0~97_sumout\,
	cout => \count3|Add0~98\);

-- Location: FF_X84_Y9_N41
\count3|i_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~97_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(23));

-- Location: MLABCELL_X84_Y9_N42
\count3|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~101_sumout\ = SUM(( \count3|i_count\(24) ) + ( GND ) + ( \count3|Add0~98\ ))
-- \count3|Add0~102\ = CARRY(( \count3|i_count\(24) ) + ( GND ) + ( \count3|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count3|ALT_INV_i_count\(24),
	cin => \count3|Add0~98\,
	sumout => \count3|Add0~101_sumout\,
	cout => \count3|Add0~102\);

-- Location: FF_X84_Y9_N44
\count3|i_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~101_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(24));

-- Location: MLABCELL_X84_Y9_N45
\count3|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~105_sumout\ = SUM(( \count3|i_count\(25) ) + ( GND ) + ( \count3|Add0~102\ ))
-- \count3|Add0~106\ = CARRY(( \count3|i_count\(25) ) + ( GND ) + ( \count3|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(25),
	cin => \count3|Add0~102\,
	sumout => \count3|Add0~105_sumout\,
	cout => \count3|Add0~106\);

-- Location: FF_X84_Y9_N47
\count3|i_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~105_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(25));

-- Location: MLABCELL_X84_Y9_N48
\count3|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~109_sumout\ = SUM(( \count3|i_count\(26) ) + ( GND ) + ( \count3|Add0~106\ ))
-- \count3|Add0~110\ = CARRY(( \count3|i_count\(26) ) + ( GND ) + ( \count3|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(26),
	cin => \count3|Add0~106\,
	sumout => \count3|Add0~109_sumout\,
	cout => \count3|Add0~110\);

-- Location: FF_X84_Y9_N50
\count3|i_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~109_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(26));

-- Location: MLABCELL_X84_Y9_N54
\count3|term~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|term~4_combout\ = ( !\count3|i_count\(25) & ( \count3|i_count\(21) & ( (\count3|i_count\(22) & (!\count3|i_count\(24) & (!\count3|i_count\(26) & \count3|i_count\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count3|ALT_INV_i_count\(22),
	datab => \count3|ALT_INV_i_count\(24),
	datac => \count3|ALT_INV_i_count\(26),
	datad => \count3|ALT_INV_i_count\(23),
	datae => \count3|ALT_INV_i_count\(25),
	dataf => \count3|ALT_INV_i_count\(21),
	combout => \count3|term~4_combout\);

-- Location: FF_X84_Y9_N10
\count3|i_count[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~5_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count[13]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y9_N51
\count3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~1_sumout\ = SUM(( \count3|i_count\(27) ) + ( GND ) + ( \count3|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count3|ALT_INV_i_count\(27),
	cin => \count3|Add0~110\,
	sumout => \count3|Add0~1_sumout\);

-- Location: FF_X84_Y9_N52
\count3|i_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~1_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(27));

-- Location: MLABCELL_X84_Y10_N15
\count3|term~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|term~0_combout\ = ( \count3|i_count\(15) & ( (!\count3|i_count[13]~DUPLICATE_q\ & (\count3|i_count\(14) & \count3|i_count\(27))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count3|ALT_INV_i_count[13]~DUPLICATE_q\,
	datac => \count3|ALT_INV_i_count\(14),
	datad => \count3|ALT_INV_i_count\(27),
	dataf => \count3|ALT_INV_i_count\(15),
	combout => \count3|term~0_combout\);

-- Location: MLABCELL_X84_Y10_N6
\count3|term~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|term~1_combout\ = ( \count3|i_count\(7) & ( !\count3|i_count\(10) & ( (!\count3|i_count\(6) & (!\count3|i_count\(9) & (!\count3|i_count\(11) & \count3|i_count\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count3|ALT_INV_i_count\(6),
	datab => \count3|ALT_INV_i_count\(9),
	datac => \count3|ALT_INV_i_count\(11),
	datad => \count3|ALT_INV_i_count\(8),
	datae => \count3|ALT_INV_i_count\(7),
	dataf => \count3|ALT_INV_i_count\(10),
	combout => \count3|term~1_combout\);

-- Location: LABCELL_X83_Y10_N48
\count3|term~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|term~5_combout\ = ( \count3|term~1_combout\ & ( (\count3|term~3_combout\ & (\count3|term~4_combout\ & (\count3|term~0_combout\ & \count3|term~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count3|ALT_INV_term~3_combout\,
	datab => \count3|ALT_INV_term~4_combout\,
	datac => \count3|ALT_INV_term~0_combout\,
	datad => \count3|ALT_INV_term~2_combout\,
	dataf => \count3|ALT_INV_term~1_combout\,
	combout => \count3|term~5_combout\);

-- Location: MLABCELL_X84_Y11_N0
\state_mach|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector3~0_combout\ = ( \state_mach|current_state.NS_left~q\ & ( \count2|term~5_combout\ & ( (!\SW[0]~input_o\ & ((!\count1|term~5_combout\) # ((\SW[1]~input_o\ & \state_mach|current_state.EW_yellow~q\)))) ) ) ) # ( 
-- !\state_mach|current_state.NS_left~q\ & ( \count2|term~5_combout\ & ( (!\SW[0]~input_o\ & (\SW[1]~input_o\ & \state_mach|current_state.EW_yellow~q\)) ) ) ) # ( \state_mach|current_state.NS_left~q\ & ( !\count2|term~5_combout\ & ( (!\SW[0]~input_o\ & 
-- !\count1|term~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000001000101010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \count1|ALT_INV_term~5_combout\,
	datad => \state_mach|ALT_INV_current_state.EW_yellow~q\,
	datae => \state_mach|ALT_INV_current_state.NS_left~q\,
	dataf => \count2|ALT_INV_term~5_combout\,
	combout => \state_mach|Selector3~0_combout\);

-- Location: FF_X84_Y11_N2
\state_mach|current_state.NS_left\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.NS_left~q\);

-- Location: LABCELL_X83_Y10_N9
\state_mach|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector1~0_combout\ = ( \count2|term~5_combout\ & ( (!\SW[0]~input_o\ & (\state_mach|current_state.NS_left~q\ & \count1|term~5_combout\)) ) ) # ( !\count2|term~5_combout\ & ( (!\SW[0]~input_o\ & (((\state_mach|current_state.NS_left~q\ & 
-- \count1|term~5_combout\)) # (\state_mach|current_state.NS_green_short~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101010000000101010101000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \state_mach|ALT_INV_current_state.NS_left~q\,
	datac => \count1|ALT_INV_term~5_combout\,
	datad => \state_mach|ALT_INV_current_state.NS_green_short~q\,
	dataf => \count2|ALT_INV_term~5_combout\,
	combout => \state_mach|Selector1~0_combout\);

-- Location: FF_X83_Y10_N11
\state_mach|current_state.NS_green_short\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.NS_green_short~q\);

-- Location: LABCELL_X83_Y10_N42
\state_mach|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector2~0_combout\ = ( \state_mach|current_state.NS_yellow~q\ & ( \state_mach|current_state.NS_green_short~q\ & ( !\SW[0]~input_o\ ) ) ) # ( !\state_mach|current_state.NS_yellow~q\ & ( \state_mach|current_state.NS_green_short~q\ & ( 
-- (!\SW[0]~input_o\ & (((!\state_mach|current_state.NS_green~q\ & \count3|term~combout\)) # (\count2|term~combout\))) ) ) ) # ( \state_mach|current_state.NS_yellow~q\ & ( !\state_mach|current_state.NS_green_short~q\ & ( (!\SW[0]~input_o\ & 
-- ((!\count2|term~combout\) # ((!\state_mach|current_state.NS_green~q\ & \count3|term~combout\)))) ) ) ) # ( !\state_mach|current_state.NS_yellow~q\ & ( !\state_mach|current_state.NS_green_short~q\ & ( (!\state_mach|current_state.NS_green~q\ & 
-- (!\SW[0]~input_o\ & \count3|term~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000110000001110000000110000101100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.NS_green~q\,
	datab => \count2|ALT_INV_term~combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \count3|ALT_INV_term~combout\,
	datae => \state_mach|ALT_INV_current_state.NS_yellow~q\,
	dataf => \state_mach|ALT_INV_current_state.NS_green_short~q\,
	combout => \state_mach|Selector2~0_combout\);

-- Location: FF_X83_Y10_N44
\state_mach|current_state.NS_yellow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.NS_yellow~q\);

-- Location: LABCELL_X83_Y10_N54
\state_mach|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector4~0_combout\ = ( \state_mach|current_state.EW_green~q\ & ( \state_mach|current_state.NS_yellow~q\ & ( (!\SW[0]~input_o\ & ((!\count3|term~5_combout\) # ((\count2|term~5_combout\ & !\SW[2]~input_o\)))) ) ) ) # ( 
-- !\state_mach|current_state.EW_green~q\ & ( \state_mach|current_state.NS_yellow~q\ & ( (\count2|term~5_combout\ & (!\SW[0]~input_o\ & !\SW[2]~input_o\)) ) ) ) # ( \state_mach|current_state.EW_green~q\ & ( !\state_mach|current_state.NS_yellow~q\ & ( 
-- (!\count3|term~5_combout\ & !\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000001010000000000001101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_term~5_combout\,
	datab => \count3|ALT_INV_term~5_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \state_mach|ALT_INV_current_state.EW_green~q\,
	dataf => \state_mach|ALT_INV_current_state.NS_yellow~q\,
	combout => \state_mach|Selector4~0_combout\);

-- Location: FF_X83_Y10_N56
\state_mach|current_state.EW_green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.EW_green~q\);

-- Location: MLABCELL_X84_Y11_N42
\state_mach|count3_en\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|count3_en~combout\ = ( \state_mach|current_state.EW_green~q\ ) # ( !\state_mach|current_state.EW_green~q\ & ( !\state_mach|current_state.NS_green~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_current_state.NS_green~q\,
	dataf => \state_mach|ALT_INV_current_state.EW_green~q\,
	combout => \state_mach|count3_en~combout\);

-- Location: FF_X84_Y10_N31
\count3|i_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~45_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(0));

-- Location: MLABCELL_X84_Y10_N33
\count3|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|Add0~65_sumout\ = SUM(( \count3|i_count\(1) ) + ( GND ) + ( \count3|Add0~46\ ))
-- \count3|Add0~66\ = CARRY(( \count3|i_count\(1) ) + ( GND ) + ( \count3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count3|ALT_INV_i_count\(1),
	cin => \count3|Add0~46\,
	sumout => \count3|Add0~65_sumout\,
	cout => \count3|Add0~66\);

-- Location: FF_X84_Y10_N35
\count3|i_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~65_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(1));

-- Location: FF_X84_Y10_N38
\count3|i_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count3|Add0~49_sumout\,
	sclr => \count3|term~combout\,
	ena => \state_mach|count3_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count3|i_count\(2));

-- Location: MLABCELL_X84_Y10_N0
\count3|term~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|term~2_combout\ = ( !\count3|i_count\(5) & ( \count3|i_count\(12) & ( (!\count3|i_count\(2) & (!\count3|i_count\(4) & (!\count3|i_count\(0) & !\count3|i_count\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count3|ALT_INV_i_count\(2),
	datab => \count3|ALT_INV_i_count\(4),
	datac => \count3|ALT_INV_i_count\(0),
	datad => \count3|ALT_INV_i_count\(3),
	datae => \count3|ALT_INV_i_count\(5),
	dataf => \count3|ALT_INV_i_count\(12),
	combout => \count3|term~2_combout\);

-- Location: MLABCELL_X84_Y10_N24
\count3|term\ : cyclonev_lcell_comb
-- Equation(s):
-- \count3|term~combout\ = ( \state_mach|count3_en~combout\ & ( \count3|term~1_combout\ & ( (\count3|term~2_combout\ & (\count3|term~4_combout\ & (\count3|term~3_combout\ & \count3|term~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count3|ALT_INV_term~2_combout\,
	datab => \count3|ALT_INV_term~4_combout\,
	datac => \count3|ALT_INV_term~3_combout\,
	datad => \count3|ALT_INV_term~0_combout\,
	datae => \state_mach|ALT_INV_count3_en~combout\,
	dataf => \count3|ALT_INV_term~1_combout\,
	combout => \count3|term~combout\);

-- Location: LABCELL_X83_Y10_N0
\state_mach|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector6~0_combout\ = ( \state_mach|current_state.EW_yellow~q\ & ( \state_mach|current_state.EW_green~q\ & ( (!\SW[0]~input_o\ & (((!\count2|term~combout\) # (\count3|term~combout\)) # (\state_mach|current_state.EW_green_short~q\))) ) ) ) # ( 
-- !\state_mach|current_state.EW_yellow~q\ & ( \state_mach|current_state.EW_green~q\ & ( (!\SW[0]~input_o\ & (((\state_mach|current_state.EW_green_short~q\ & \count2|term~combout\)) # (\count3|term~combout\))) ) ) ) # ( \state_mach|current_state.EW_yellow~q\ 
-- & ( !\state_mach|current_state.EW_green~q\ & ( (!\SW[0]~input_o\ & ((!\count2|term~combout\) # (\state_mach|current_state.EW_green_short~q\))) ) ) ) # ( !\state_mach|current_state.EW_yellow~q\ & ( !\state_mach|current_state.EW_green~q\ & ( 
-- (\state_mach|current_state.EW_green_short~q\ & (\count2|term~combout\ & !\SW[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000110100001101000000010000111100001101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.EW_green_short~q\,
	datab => \count2|ALT_INV_term~combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \count3|ALT_INV_term~combout\,
	datae => \state_mach|ALT_INV_current_state.EW_yellow~q\,
	dataf => \state_mach|ALT_INV_current_state.EW_green~q\,
	combout => \state_mach|Selector6~0_combout\);

-- Location: FF_X83_Y10_N2
\state_mach|current_state.EW_yellow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.EW_yellow~q\);

-- Location: MLABCELL_X84_Y11_N39
\state_mach|WideOr16\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|WideOr16~combout\ = ( \state_mach|current_state.NS_yellow~q\ ) # ( !\state_mach|current_state.NS_yellow~q\ & ( ((\state_mach|current_state.NS_green_short~q\) # (\state_mach|current_state.EW_green_short~q\)) # 
-- (\state_mach|current_state.EW_yellow~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_current_state.EW_yellow~q\,
	datac => \state_mach|ALT_INV_current_state.EW_green_short~q\,
	datad => \state_mach|ALT_INV_current_state.NS_green_short~q\,
	dataf => \state_mach|ALT_INV_current_state.NS_yellow~q\,
	combout => \state_mach|WideOr16~combout\);

-- Location: FF_X85_Y11_N20
\count2|i_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~65_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(16));

-- Location: LABCELL_X85_Y11_N21
\count2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~69_sumout\ = SUM(( \count2|i_count\(17) ) + ( GND ) + ( \count2|Add0~66\ ))
-- \count2|Add0~70\ = CARRY(( \count2|i_count\(17) ) + ( GND ) + ( \count2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count2|ALT_INV_i_count\(17),
	cin => \count2|Add0~66\,
	sumout => \count2|Add0~69_sumout\,
	cout => \count2|Add0~70\);

-- Location: FF_X85_Y11_N23
\count2|i_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~69_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(17));

-- Location: LABCELL_X85_Y11_N24
\count2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~73_sumout\ = SUM(( \count2|i_count\(18) ) + ( GND ) + ( \count2|Add0~70\ ))
-- \count2|Add0~74\ = CARRY(( \count2|i_count\(18) ) + ( GND ) + ( \count2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(18),
	cin => \count2|Add0~70\,
	sumout => \count2|Add0~73_sumout\,
	cout => \count2|Add0~74\);

-- Location: FF_X85_Y11_N26
\count2|i_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~73_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(18));

-- Location: LABCELL_X85_Y11_N27
\count2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~77_sumout\ = SUM(( \count2|i_count\(19) ) + ( GND ) + ( \count2|Add0~74\ ))
-- \count2|Add0~78\ = CARRY(( \count2|i_count\(19) ) + ( GND ) + ( \count2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count2|ALT_INV_i_count\(19),
	cin => \count2|Add0~74\,
	sumout => \count2|Add0~77_sumout\,
	cout => \count2|Add0~78\);

-- Location: FF_X85_Y11_N29
\count2|i_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~77_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(19));

-- Location: LABCELL_X85_Y11_N30
\count2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~81_sumout\ = SUM(( \count2|i_count\(20) ) + ( GND ) + ( \count2|Add0~78\ ))
-- \count2|Add0~82\ = CARRY(( \count2|i_count\(20) ) + ( GND ) + ( \count2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(20),
	cin => \count2|Add0~78\,
	sumout => \count2|Add0~81_sumout\,
	cout => \count2|Add0~82\);

-- Location: FF_X85_Y11_N31
\count2|i_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~81_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(20));

-- Location: LABCELL_X85_Y11_N33
\count2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~85_sumout\ = SUM(( \count2|i_count\(21) ) + ( GND ) + ( \count2|Add0~82\ ))
-- \count2|Add0~86\ = CARRY(( \count2|i_count\(21) ) + ( GND ) + ( \count2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_i_count\(21),
	cin => \count2|Add0~82\,
	sumout => \count2|Add0~85_sumout\,
	cout => \count2|Add0~86\);

-- Location: FF_X85_Y11_N35
\count2|i_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~85_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(21));

-- Location: MLABCELL_X84_Y11_N18
\count2|term~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|term~3_combout\ = ( !\count2|i_count\(17) & ( \count2|i_count\(21) & ( (\count2|i_count\(20) & (\count2|i_count\(16) & (!\count2|i_count\(19) & \count2|i_count\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_i_count\(20),
	datab => \count2|ALT_INV_i_count\(16),
	datac => \count2|ALT_INV_i_count\(19),
	datad => \count2|ALT_INV_i_count\(18),
	datae => \count2|ALT_INV_i_count\(17),
	dataf => \count2|ALT_INV_i_count\(21),
	combout => \count2|term~3_combout\);

-- Location: LABCELL_X85_Y11_N36
\count2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~89_sumout\ = SUM(( \count2|i_count\(22) ) + ( GND ) + ( \count2|Add0~86\ ))
-- \count2|Add0~90\ = CARRY(( \count2|i_count\(22) ) + ( GND ) + ( \count2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(22),
	cin => \count2|Add0~86\,
	sumout => \count2|Add0~89_sumout\,
	cout => \count2|Add0~90\);

-- Location: FF_X85_Y11_N38
\count2|i_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~89_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(22));

-- Location: LABCELL_X85_Y11_N39
\count2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~93_sumout\ = SUM(( \count2|i_count\(23) ) + ( GND ) + ( \count2|Add0~90\ ))
-- \count2|Add0~94\ = CARRY(( \count2|i_count\(23) ) + ( GND ) + ( \count2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(23),
	cin => \count2|Add0~90\,
	sumout => \count2|Add0~93_sumout\,
	cout => \count2|Add0~94\);

-- Location: FF_X85_Y11_N41
\count2|i_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~93_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(23));

-- Location: LABCELL_X85_Y11_N42
\count2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~97_sumout\ = SUM(( \count2|i_count\(24) ) + ( GND ) + ( \count2|Add0~94\ ))
-- \count2|Add0~98\ = CARRY(( \count2|i_count\(24) ) + ( GND ) + ( \count2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count2|ALT_INV_i_count\(24),
	cin => \count2|Add0~94\,
	sumout => \count2|Add0~97_sumout\,
	cout => \count2|Add0~98\);

-- Location: FF_X85_Y11_N44
\count2|i_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~97_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(24));

-- Location: LABCELL_X85_Y11_N45
\count2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~101_sumout\ = SUM(( \count2|i_count\(25) ) + ( GND ) + ( \count2|Add0~98\ ))
-- \count2|Add0~102\ = CARRY(( \count2|i_count\(25) ) + ( GND ) + ( \count2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(25),
	cin => \count2|Add0~98\,
	sumout => \count2|Add0~101_sumout\,
	cout => \count2|Add0~102\);

-- Location: FF_X85_Y11_N47
\count2|i_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~101_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(25));

-- Location: LABCELL_X85_Y11_N48
\count2|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~105_sumout\ = SUM(( \count2|i_count\(26) ) + ( GND ) + ( \count2|Add0~102\ ))
-- \count2|Add0~106\ = CARRY(( \count2|i_count\(26) ) + ( GND ) + ( \count2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(26),
	cin => \count2|Add0~102\,
	sumout => \count2|Add0~105_sumout\,
	cout => \count2|Add0~106\);

-- Location: FF_X85_Y11_N50
\count2|i_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~105_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(26));

-- Location: LABCELL_X85_Y11_N51
\count2|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~109_sumout\ = SUM(( \count2|i_count\(27) ) + ( GND ) + ( \count2|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_i_count\(27),
	cin => \count2|Add0~106\,
	sumout => \count2|Add0~109_sumout\);

-- Location: FF_X85_Y11_N53
\count2|i_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~109_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(27));

-- Location: LABCELL_X85_Y11_N54
\count2|term~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|term~4_combout\ = ( !\count2|i_count\(25) & ( \count2|i_count\(26) & ( (!\count2|i_count\(27) & (\count2|i_count\(24) & (\count2|i_count\(22) & \count2|i_count\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_i_count\(27),
	datab => \count2|ALT_INV_i_count\(24),
	datac => \count2|ALT_INV_i_count\(22),
	datad => \count2|ALT_INV_i_count\(23),
	datae => \count2|ALT_INV_i_count\(25),
	dataf => \count2|ALT_INV_i_count\(26),
	combout => \count2|term~4_combout\);

-- Location: FF_X85_Y11_N4
\count2|i_count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~37_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count[11]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y12_N12
\count2|term~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|term~1_combout\ = ( \count2|i_count\(8) & ( !\count2|i_count[11]~DUPLICATE_q\ & ( (!\count2|i_count\(6) & (!\count2|i_count\(9) & (!\count2|i_count\(10) & !\count2|i_count\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_i_count\(6),
	datab => \count2|ALT_INV_i_count\(9),
	datac => \count2|ALT_INV_i_count\(10),
	datad => \count2|ALT_INV_i_count\(7),
	datae => \count2|ALT_INV_i_count\(8),
	dataf => \count2|ALT_INV_i_count[11]~DUPLICATE_q\,
	combout => \count2|term~1_combout\);

-- Location: LABCELL_X85_Y12_N18
\count2|term~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|term~2_combout\ = ( !\count2|i_count\(2) & ( !\count2|i_count\(3) & ( (!\count2|i_count\(1) & (!\count2|i_count\(5) & (!\count2|i_count\(0) & !\count2|i_count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_i_count\(1),
	datab => \count2|ALT_INV_i_count\(5),
	datac => \count2|ALT_INV_i_count\(0),
	datad => \count2|ALT_INV_i_count\(4),
	datae => \count2|ALT_INV_i_count\(2),
	dataf => \count2|ALT_INV_i_count\(3),
	combout => \count2|term~2_combout\);

-- Location: MLABCELL_X84_Y11_N48
\count2|term\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|term~combout\ = ( \count2|term~1_combout\ & ( \count2|term~2_combout\ & ( (\count2|term~3_combout\ & (\state_mach|WideOr16~combout\ & (\count2|term~0_combout\ & \count2|term~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_term~3_combout\,
	datab => \state_mach|ALT_INV_WideOr16~combout\,
	datac => \count2|ALT_INV_term~0_combout\,
	datad => \count2|ALT_INV_term~4_combout\,
	datae => \count2|ALT_INV_term~1_combout\,
	dataf => \count2|ALT_INV_term~2_combout\,
	combout => \count2|term~combout\);

-- Location: FF_X85_Y12_N31
\count2|i_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~45_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(0));

-- Location: LABCELL_X85_Y12_N33
\count2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~41_sumout\ = SUM(( \count2|i_count\(1) ) + ( GND ) + ( \count2|Add0~46\ ))
-- \count2|Add0~42\ = CARRY(( \count2|i_count\(1) ) + ( GND ) + ( \count2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_i_count\(1),
	cin => \count2|Add0~46\,
	sumout => \count2|Add0~41_sumout\,
	cout => \count2|Add0~42\);

-- Location: FF_X85_Y12_N35
\count2|i_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~41_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(1));

-- Location: LABCELL_X85_Y12_N36
\count2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~49_sumout\ = SUM(( \count2|i_count\(2) ) + ( GND ) + ( \count2|Add0~42\ ))
-- \count2|Add0~50\ = CARRY(( \count2|i_count\(2) ) + ( GND ) + ( \count2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count2|ALT_INV_i_count\(2),
	cin => \count2|Add0~42\,
	sumout => \count2|Add0~49_sumout\,
	cout => \count2|Add0~50\);

-- Location: FF_X85_Y12_N38
\count2|i_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~49_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(2));

-- Location: LABCELL_X85_Y12_N39
\count2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~53_sumout\ = SUM(( \count2|i_count\(3) ) + ( GND ) + ( \count2|Add0~50\ ))
-- \count2|Add0~54\ = CARRY(( \count2|i_count\(3) ) + ( GND ) + ( \count2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(3),
	cin => \count2|Add0~50\,
	sumout => \count2|Add0~53_sumout\,
	cout => \count2|Add0~54\);

-- Location: FF_X85_Y12_N41
\count2|i_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~53_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(3));

-- Location: LABCELL_X85_Y12_N42
\count2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~57_sumout\ = SUM(( \count2|i_count\(4) ) + ( GND ) + ( \count2|Add0~54\ ))
-- \count2|Add0~58\ = CARRY(( \count2|i_count\(4) ) + ( GND ) + ( \count2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count2|ALT_INV_i_count\(4),
	cin => \count2|Add0~54\,
	sumout => \count2|Add0~57_sumout\,
	cout => \count2|Add0~58\);

-- Location: FF_X85_Y12_N43
\count2|i_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~57_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(4));

-- Location: LABCELL_X85_Y12_N45
\count2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~61_sumout\ = SUM(( \count2|i_count\(5) ) + ( GND ) + ( \count2|Add0~58\ ))
-- \count2|Add0~62\ = CARRY(( \count2|i_count\(5) ) + ( GND ) + ( \count2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count2|ALT_INV_i_count\(5),
	cin => \count2|Add0~58\,
	sumout => \count2|Add0~61_sumout\,
	cout => \count2|Add0~62\);

-- Location: FF_X85_Y12_N47
\count2|i_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~61_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(5));

-- Location: LABCELL_X85_Y12_N48
\count2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~17_sumout\ = SUM(( \count2|i_count\(6) ) + ( GND ) + ( \count2|Add0~62\ ))
-- \count2|Add0~18\ = CARRY(( \count2|i_count\(6) ) + ( GND ) + ( \count2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(6),
	cin => \count2|Add0~62\,
	sumout => \count2|Add0~17_sumout\,
	cout => \count2|Add0~18\);

-- Location: FF_X85_Y12_N50
\count2|i_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~17_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(6));

-- Location: LABCELL_X85_Y12_N51
\count2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~21_sumout\ = SUM(( \count2|i_count\(7) ) + ( GND ) + ( \count2|Add0~18\ ))
-- \count2|Add0~22\ = CARRY(( \count2|i_count\(7) ) + ( GND ) + ( \count2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(7),
	cin => \count2|Add0~18\,
	sumout => \count2|Add0~21_sumout\,
	cout => \count2|Add0~22\);

-- Location: FF_X85_Y12_N52
\count2|i_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~21_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(7));

-- Location: LABCELL_X85_Y12_N54
\count2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~25_sumout\ = SUM(( \count2|i_count\(8) ) + ( GND ) + ( \count2|Add0~22\ ))
-- \count2|Add0~26\ = CARRY(( \count2|i_count\(8) ) + ( GND ) + ( \count2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(8),
	cin => \count2|Add0~22\,
	sumout => \count2|Add0~25_sumout\,
	cout => \count2|Add0~26\);

-- Location: FF_X85_Y12_N56
\count2|i_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~25_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(8));

-- Location: LABCELL_X85_Y12_N57
\count2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~29_sumout\ = SUM(( \count2|i_count\(9) ) + ( GND ) + ( \count2|Add0~26\ ))
-- \count2|Add0~30\ = CARRY(( \count2|i_count\(9) ) + ( GND ) + ( \count2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(9),
	cin => \count2|Add0~26\,
	sumout => \count2|Add0~29_sumout\,
	cout => \count2|Add0~30\);

-- Location: FF_X85_Y12_N59
\count2|i_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~29_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(9));

-- Location: LABCELL_X85_Y11_N0
\count2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~33_sumout\ = SUM(( \count2|i_count\(10) ) + ( GND ) + ( \count2|Add0~30\ ))
-- \count2|Add0~34\ = CARRY(( \count2|i_count\(10) ) + ( GND ) + ( \count2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(10),
	cin => \count2|Add0~30\,
	sumout => \count2|Add0~33_sumout\,
	cout => \count2|Add0~34\);

-- Location: FF_X85_Y11_N2
\count2|i_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~33_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(10));

-- Location: LABCELL_X85_Y11_N3
\count2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~37_sumout\ = SUM(( \count2|i_count\(11) ) + ( GND ) + ( \count2|Add0~34\ ))
-- \count2|Add0~38\ = CARRY(( \count2|i_count\(11) ) + ( GND ) + ( \count2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count2|ALT_INV_i_count\(11),
	cin => \count2|Add0~34\,
	sumout => \count2|Add0~37_sumout\,
	cout => \count2|Add0~38\);

-- Location: FF_X85_Y11_N5
\count2|i_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~37_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(11));

-- Location: LABCELL_X85_Y11_N6
\count2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~1_sumout\ = SUM(( \count2|i_count\(12) ) + ( GND ) + ( \count2|Add0~38\ ))
-- \count2|Add0~2\ = CARRY(( \count2|i_count\(12) ) + ( GND ) + ( \count2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(12),
	cin => \count2|Add0~38\,
	sumout => \count2|Add0~1_sumout\,
	cout => \count2|Add0~2\);

-- Location: FF_X85_Y11_N7
\count2|i_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~1_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(12));

-- Location: LABCELL_X85_Y11_N9
\count2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~5_sumout\ = SUM(( \count2|i_count\(13) ) + ( GND ) + ( \count2|Add0~2\ ))
-- \count2|Add0~6\ = CARRY(( \count2|i_count\(13) ) + ( GND ) + ( \count2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count2|ALT_INV_i_count\(13),
	cin => \count2|Add0~2\,
	sumout => \count2|Add0~5_sumout\,
	cout => \count2|Add0~6\);

-- Location: FF_X85_Y11_N11
\count2|i_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~5_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(13));

-- Location: LABCELL_X85_Y11_N12
\count2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|Add0~9_sumout\ = SUM(( \count2|i_count\(14) ) + ( GND ) + ( \count2|Add0~6\ ))
-- \count2|Add0~10\ = CARRY(( \count2|i_count\(14) ) + ( GND ) + ( \count2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count2|ALT_INV_i_count\(14),
	cin => \count2|Add0~6\,
	sumout => \count2|Add0~9_sumout\,
	cout => \count2|Add0~10\);

-- Location: FF_X85_Y11_N14
\count2|i_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~9_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(14));

-- Location: FF_X85_Y11_N17
\count2|i_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count2|Add0~13_sumout\,
	sclr => \count2|term~combout\,
	ena => \state_mach|WideOr16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count2|i_count\(15));

-- Location: MLABCELL_X84_Y11_N33
\count2|term~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|term~0_combout\ = ( !\count2|i_count\(12) & ( (\count2|i_count\(15) & (\count2|i_count\(14) & \count2|i_count\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_i_count\(15),
	datac => \count2|ALT_INV_i_count\(14),
	datad => \count2|ALT_INV_i_count\(13),
	dataf => \count2|ALT_INV_i_count\(12),
	combout => \count2|term~0_combout\);

-- Location: MLABCELL_X84_Y11_N12
\count2|term~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count2|term~5_combout\ = ( \count2|term~2_combout\ & ( (\count2|term~0_combout\ & (\count2|term~4_combout\ & (\count2|term~3_combout\ & \count2|term~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count2|ALT_INV_term~0_combout\,
	datab => \count2|ALT_INV_term~4_combout\,
	datac => \count2|ALT_INV_term~3_combout\,
	datad => \count2|ALT_INV_term~1_combout\,
	dataf => \count2|ALT_INV_term~2_combout\,
	combout => \count2|term~5_combout\);

-- Location: LABCELL_X83_Y10_N18
\state_mach|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector7~0_combout\ = ( \state_mach|current_state.EW_left~q\ & ( \state_mach|current_state.NS_yellow~q\ & ( (!\SW[0]~input_o\ & ((!\count1|term~5_combout\) # ((\SW[2]~input_o\ & \count2|term~5_combout\)))) ) ) ) # ( 
-- !\state_mach|current_state.EW_left~q\ & ( \state_mach|current_state.NS_yellow~q\ & ( (!\SW[0]~input_o\ & (\SW[2]~input_o\ & \count2|term~5_combout\)) ) ) ) # ( \state_mach|current_state.EW_left~q\ & ( !\state_mach|current_state.NS_yellow~q\ & ( 
-- (!\SW[0]~input_o\ & !\count1|term~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000010000000101010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \count2|ALT_INV_term~5_combout\,
	datad => \count1|ALT_INV_term~5_combout\,
	datae => \state_mach|ALT_INV_current_state.EW_left~q\,
	dataf => \state_mach|ALT_INV_current_state.NS_yellow~q\,
	combout => \state_mach|Selector7~0_combout\);

-- Location: FF_X83_Y10_N20
\state_mach|current_state.EW_left\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.EW_left~q\);

-- Location: LABCELL_X83_Y10_N30
\count1|term\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|term~combout\ = ( \count1|term~5_combout\ & ( (((\state_mach|current_state.NS_left~q\) # (\state_mach|current_state.EW_left~q\)) # (\state_mach|current_state.night_OFF~q\)) # (\state_mach|current_state.night_m~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.night_m~q\,
	datab => \state_mach|ALT_INV_current_state.night_OFF~q\,
	datac => \state_mach|ALT_INV_current_state.EW_left~q\,
	datad => \state_mach|ALT_INV_current_state.NS_left~q\,
	dataf => \count1|ALT_INV_term~5_combout\,
	combout => \count1|term~combout\);

-- Location: LABCELL_X83_Y10_N6
\state_mach|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|WideOr9~combout\ = ( \state_mach|current_state.night_OFF~q\ ) # ( !\state_mach|current_state.night_OFF~q\ & ( ((\state_mach|current_state.night_m~q\) # (\state_mach|current_state.EW_left~q\)) # (\state_mach|current_state.NS_left~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_current_state.NS_left~q\,
	datac => \state_mach|ALT_INV_current_state.EW_left~q\,
	datad => \state_mach|ALT_INV_current_state.night_m~q\,
	dataf => \state_mach|ALT_INV_current_state.night_OFF~q\,
	combout => \state_mach|WideOr9~combout\);

-- Location: FF_X82_Y9_N50
\count1|i_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~1_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(26));

-- Location: MLABCELL_X82_Y10_N30
\count1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~49_sumout\ = SUM(( \count1|i_count\(0) ) + ( VCC ) + ( !VCC ))
-- \count1|Add0~50\ = CARRY(( \count1|i_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(0),
	cin => GND,
	sumout => \count1|Add0~49_sumout\,
	cout => \count1|Add0~50\);

-- Location: FF_X82_Y10_N31
\count1|i_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~49_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(0));

-- Location: MLABCELL_X82_Y10_N33
\count1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~45_sumout\ = SUM(( \count1|i_count\(1) ) + ( GND ) + ( \count1|Add0~50\ ))
-- \count1|Add0~46\ = CARRY(( \count1|i_count\(1) ) + ( GND ) + ( \count1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(1),
	cin => \count1|Add0~50\,
	sumout => \count1|Add0~45_sumout\,
	cout => \count1|Add0~46\);

-- Location: FF_X82_Y10_N35
\count1|i_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~45_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(1));

-- Location: MLABCELL_X82_Y10_N36
\count1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~53_sumout\ = SUM(( \count1|i_count\(2) ) + ( GND ) + ( \count1|Add0~46\ ))
-- \count1|Add0~54\ = CARRY(( \count1|i_count\(2) ) + ( GND ) + ( \count1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(2),
	cin => \count1|Add0~46\,
	sumout => \count1|Add0~53_sumout\,
	cout => \count1|Add0~54\);

-- Location: FF_X82_Y10_N38
\count1|i_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~53_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(2));

-- Location: MLABCELL_X82_Y10_N39
\count1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~57_sumout\ = SUM(( \count1|i_count[3]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~54\ ))
-- \count1|Add0~58\ = CARRY(( \count1|i_count[3]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count[3]~DUPLICATE_q\,
	cin => \count1|Add0~54\,
	sumout => \count1|Add0~57_sumout\,
	cout => \count1|Add0~58\);

-- Location: FF_X82_Y10_N41
\count1|i_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~57_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[3]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y10_N42
\count1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~61_sumout\ = SUM(( \count1|i_count\(4) ) + ( GND ) + ( \count1|Add0~58\ ))
-- \count1|Add0~62\ = CARRY(( \count1|i_count\(4) ) + ( GND ) + ( \count1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(4),
	cin => \count1|Add0~58\,
	sumout => \count1|Add0~61_sumout\,
	cout => \count1|Add0~62\);

-- Location: FF_X82_Y10_N43
\count1|i_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~61_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(4));

-- Location: MLABCELL_X82_Y10_N45
\count1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~65_sumout\ = SUM(( \count1|i_count\(5) ) + ( GND ) + ( \count1|Add0~62\ ))
-- \count1|Add0~66\ = CARRY(( \count1|i_count\(5) ) + ( GND ) + ( \count1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(5),
	cin => \count1|Add0~62\,
	sumout => \count1|Add0~65_sumout\,
	cout => \count1|Add0~66\);

-- Location: FF_X82_Y10_N47
\count1|i_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~65_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(5));

-- Location: MLABCELL_X82_Y10_N48
\count1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~21_sumout\ = SUM(( \count1|i_count\(6) ) + ( GND ) + ( \count1|Add0~66\ ))
-- \count1|Add0~22\ = CARRY(( \count1|i_count\(6) ) + ( GND ) + ( \count1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(6),
	cin => \count1|Add0~66\,
	sumout => \count1|Add0~21_sumout\,
	cout => \count1|Add0~22\);

-- Location: FF_X82_Y10_N50
\count1|i_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~21_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(6));

-- Location: MLABCELL_X82_Y10_N51
\count1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~25_sumout\ = SUM(( \count1|i_count\(7) ) + ( GND ) + ( \count1|Add0~22\ ))
-- \count1|Add0~26\ = CARRY(( \count1|i_count\(7) ) + ( GND ) + ( \count1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(7),
	cin => \count1|Add0~22\,
	sumout => \count1|Add0~25_sumout\,
	cout => \count1|Add0~26\);

-- Location: FF_X82_Y10_N52
\count1|i_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~25_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(7));

-- Location: MLABCELL_X82_Y10_N54
\count1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~29_sumout\ = SUM(( \count1|i_count\(8) ) + ( GND ) + ( \count1|Add0~26\ ))
-- \count1|Add0~30\ = CARRY(( \count1|i_count\(8) ) + ( GND ) + ( \count1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(8),
	cin => \count1|Add0~26\,
	sumout => \count1|Add0~29_sumout\,
	cout => \count1|Add0~30\);

-- Location: FF_X82_Y10_N56
\count1|i_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~29_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(8));

-- Location: MLABCELL_X82_Y10_N57
\count1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~33_sumout\ = SUM(( \count1|i_count\(9) ) + ( GND ) + ( \count1|Add0~30\ ))
-- \count1|Add0~34\ = CARRY(( \count1|i_count\(9) ) + ( GND ) + ( \count1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(9),
	cin => \count1|Add0~30\,
	sumout => \count1|Add0~33_sumout\,
	cout => \count1|Add0~34\);

-- Location: FF_X82_Y10_N59
\count1|i_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~33_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(9));

-- Location: MLABCELL_X82_Y9_N0
\count1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~89_sumout\ = SUM(( \count1|i_count\(10) ) + ( GND ) + ( \count1|Add0~34\ ))
-- \count1|Add0~90\ = CARRY(( \count1|i_count\(10) ) + ( GND ) + ( \count1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(10),
	cin => \count1|Add0~34\,
	sumout => \count1|Add0~89_sumout\,
	cout => \count1|Add0~90\);

-- Location: FF_X82_Y9_N2
\count1|i_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~89_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(10));

-- Location: MLABCELL_X82_Y9_N3
\count1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~41_sumout\ = SUM(( \count1|i_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~90\ ))
-- \count1|Add0~42\ = CARRY(( \count1|i_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count[11]~DUPLICATE_q\,
	cin => \count1|Add0~90\,
	sumout => \count1|Add0~41_sumout\,
	cout => \count1|Add0~42\);

-- Location: FF_X82_Y9_N5
\count1|i_count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~41_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[11]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N6
\count1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~5_sumout\ = SUM(( \count1|i_count\(12) ) + ( GND ) + ( \count1|Add0~42\ ))
-- \count1|Add0~6\ = CARRY(( \count1|i_count\(12) ) + ( GND ) + ( \count1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(12),
	cin => \count1|Add0~42\,
	sumout => \count1|Add0~5_sumout\,
	cout => \count1|Add0~6\);

-- Location: FF_X83_Y10_N14
\count1|i_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \count1|Add0~5_sumout\,
	sclr => \count1|term~combout\,
	sload => VCC,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(12));

-- Location: MLABCELL_X82_Y9_N9
\count1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~9_sumout\ = SUM(( \count1|i_count\(13) ) + ( GND ) + ( \count1|Add0~6\ ))
-- \count1|Add0~10\ = CARRY(( \count1|i_count\(13) ) + ( GND ) + ( \count1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(13),
	cin => \count1|Add0~6\,
	sumout => \count1|Add0~9_sumout\,
	cout => \count1|Add0~10\);

-- Location: FF_X83_Y10_N35
\count1|i_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \count1|Add0~9_sumout\,
	sclr => \count1|term~combout\,
	sload => VCC,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(13));

-- Location: MLABCELL_X82_Y9_N12
\count1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~13_sumout\ = SUM(( \count1|i_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~10\ ))
-- \count1|Add0~14\ = CARRY(( \count1|i_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count[14]~DUPLICATE_q\,
	cin => \count1|Add0~10\,
	sumout => \count1|Add0~13_sumout\,
	cout => \count1|Add0~14\);

-- Location: FF_X82_Y9_N14
\count1|i_count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~13_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[14]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N15
\count1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~17_sumout\ = SUM(( \count1|i_count\(15) ) + ( GND ) + ( \count1|Add0~14\ ))
-- \count1|Add0~18\ = CARRY(( \count1|i_count\(15) ) + ( GND ) + ( \count1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(15),
	cin => \count1|Add0~14\,
	sumout => \count1|Add0~17_sumout\,
	cout => \count1|Add0~18\);

-- Location: FF_X82_Y9_N17
\count1|i_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~17_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(15));

-- Location: MLABCELL_X82_Y9_N18
\count1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~69_sumout\ = SUM(( \count1|i_count\(16) ) + ( GND ) + ( \count1|Add0~18\ ))
-- \count1|Add0~70\ = CARRY(( \count1|i_count\(16) ) + ( GND ) + ( \count1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(16),
	cin => \count1|Add0~18\,
	sumout => \count1|Add0~69_sumout\,
	cout => \count1|Add0~70\);

-- Location: FF_X82_Y9_N20
\count1|i_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~69_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(16));

-- Location: MLABCELL_X82_Y9_N21
\count1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~73_sumout\ = SUM(( \count1|i_count[17]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~70\ ))
-- \count1|Add0~74\ = CARRY(( \count1|i_count[17]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count[17]~DUPLICATE_q\,
	cin => \count1|Add0~70\,
	sumout => \count1|Add0~73_sumout\,
	cout => \count1|Add0~74\);

-- Location: FF_X82_Y9_N23
\count1|i_count[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~73_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[17]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N24
\count1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~77_sumout\ = SUM(( \count1|i_count\(18) ) + ( GND ) + ( \count1|Add0~74\ ))
-- \count1|Add0~78\ = CARRY(( \count1|i_count\(18) ) + ( GND ) + ( \count1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(18),
	cin => \count1|Add0~74\,
	sumout => \count1|Add0~77_sumout\,
	cout => \count1|Add0~78\);

-- Location: FF_X82_Y9_N26
\count1|i_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~77_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(18));

-- Location: MLABCELL_X82_Y9_N27
\count1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~81_sumout\ = SUM(( \count1|i_count\(19) ) + ( GND ) + ( \count1|Add0~78\ ))
-- \count1|Add0~82\ = CARRY(( \count1|i_count\(19) ) + ( GND ) + ( \count1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(19),
	cin => \count1|Add0~78\,
	sumout => \count1|Add0~81_sumout\,
	cout => \count1|Add0~82\);

-- Location: FF_X82_Y9_N29
\count1|i_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~81_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(19));

-- Location: MLABCELL_X82_Y9_N30
\count1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~85_sumout\ = SUM(( \count1|i_count\(20) ) + ( GND ) + ( \count1|Add0~82\ ))
-- \count1|Add0~86\ = CARRY(( \count1|i_count\(20) ) + ( GND ) + ( \count1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(20),
	cin => \count1|Add0~82\,
	sumout => \count1|Add0~85_sumout\,
	cout => \count1|Add0~86\);

-- Location: FF_X82_Y9_N32
\count1|i_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~85_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(20));

-- Location: MLABCELL_X82_Y9_N33
\count1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~93_sumout\ = SUM(( \count1|i_count[21]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~86\ ))
-- \count1|Add0~94\ = CARRY(( \count1|i_count[21]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count[21]~DUPLICATE_q\,
	cin => \count1|Add0~86\,
	sumout => \count1|Add0~93_sumout\,
	cout => \count1|Add0~94\);

-- Location: FF_X82_Y9_N35
\count1|i_count[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~93_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[21]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N36
\count1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~97_sumout\ = SUM(( \count1|i_count\(22) ) + ( GND ) + ( \count1|Add0~94\ ))
-- \count1|Add0~98\ = CARRY(( \count1|i_count\(22) ) + ( GND ) + ( \count1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(22),
	cin => \count1|Add0~94\,
	sumout => \count1|Add0~97_sumout\,
	cout => \count1|Add0~98\);

-- Location: FF_X82_Y9_N38
\count1|i_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~97_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(22));

-- Location: MLABCELL_X82_Y9_N39
\count1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~101_sumout\ = SUM(( \count1|i_count\(23) ) + ( GND ) + ( \count1|Add0~98\ ))
-- \count1|Add0~102\ = CARRY(( \count1|i_count\(23) ) + ( GND ) + ( \count1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(23),
	cin => \count1|Add0~98\,
	sumout => \count1|Add0~101_sumout\,
	cout => \count1|Add0~102\);

-- Location: FF_X83_Y10_N38
\count1|i_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \count1|Add0~101_sumout\,
	sclr => \count1|term~combout\,
	sload => VCC,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(23));

-- Location: MLABCELL_X82_Y9_N42
\count1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~105_sumout\ = SUM(( \count1|i_count\(24) ) + ( GND ) + ( \count1|Add0~102\ ))
-- \count1|Add0~106\ = CARRY(( \count1|i_count\(24) ) + ( GND ) + ( \count1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(24),
	cin => \count1|Add0~102\,
	sumout => \count1|Add0~105_sumout\,
	cout => \count1|Add0~106\);

-- Location: FF_X82_Y9_N44
\count1|i_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~105_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(24));

-- Location: MLABCELL_X82_Y9_N45
\count1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~109_sumout\ = SUM(( \count1|i_count\(25) ) + ( GND ) + ( \count1|Add0~106\ ))
-- \count1|Add0~110\ = CARRY(( \count1|i_count\(25) ) + ( GND ) + ( \count1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(25),
	cin => \count1|Add0~106\,
	sumout => \count1|Add0~109_sumout\,
	cout => \count1|Add0~110\);

-- Location: FF_X82_Y9_N47
\count1|i_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~109_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(25));

-- Location: MLABCELL_X82_Y9_N48
\count1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~1_sumout\ = SUM(( \count1|i_count\(26) ) + ( GND ) + ( \count1|Add0~110\ ))
-- \count1|Add0~2\ = CARRY(( \count1|i_count\(26) ) + ( GND ) + ( \count1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(26),
	cin => \count1|Add0~110\,
	sumout => \count1|Add0~1_sumout\,
	cout => \count1|Add0~2\);

-- Location: FF_X82_Y9_N49
\count1|i_count[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~1_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[26]~DUPLICATE_q\);

-- Location: FF_X82_Y10_N40
\count1|i_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~57_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(3));

-- Location: FF_X82_Y10_N44
\count1|i_count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~61_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[4]~DUPLICATE_q\);

-- Location: FF_X82_Y10_N32
\count1|i_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~49_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y10_N18
\count1|term~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|term~2_combout\ = ( !\count1|i_count\(5) & ( !\count1|i_count[0]~DUPLICATE_q\ & ( (!\count1|i_count\(2) & (!\count1|i_count\(3) & (!\count1|i_count\(1) & !\count1|i_count[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(2),
	datab => \count1|ALT_INV_i_count\(3),
	datac => \count1|ALT_INV_i_count\(1),
	datad => \count1|ALT_INV_i_count[4]~DUPLICATE_q\,
	datae => \count1|ALT_INV_i_count\(5),
	dataf => \count1|ALT_INV_i_count[0]~DUPLICATE_q\,
	combout => \count1|term~2_combout\);

-- Location: FF_X82_Y9_N34
\count1|i_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~93_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(21));

-- Location: LABCELL_X83_Y10_N39
\count1|term~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|term~4_combout\ = ( \count1|i_count\(25) & ( (\count1|i_count\(23) & (\count1|i_count\(22) & (\count1|i_count\(21) & !\count1|i_count\(24)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(23),
	datab => \count1|ALT_INV_i_count\(22),
	datac => \count1|ALT_INV_i_count\(21),
	datad => \count1|ALT_INV_i_count\(24),
	dataf => \count1|ALT_INV_i_count\(25),
	combout => \count1|term~4_combout\);

-- Location: FF_X82_Y9_N4
\count1|i_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~41_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(11));

-- Location: FF_X82_Y9_N52
\count1|i_count[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~37_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count[27]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N51
\count1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~37_sumout\ = SUM(( \count1|i_count[27]~DUPLICATE_q\ ) + ( GND ) + ( \count1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count[27]~DUPLICATE_q\,
	cin => \count1|Add0~2\,
	sumout => \count1|Add0~37_sumout\);

-- Location: FF_X82_Y9_N53
\count1|i_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~37_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(27));

-- Location: MLABCELL_X82_Y10_N12
\count1|term~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|term~1_combout\ = ( !\count1|i_count\(11) & ( !\count1|i_count\(27) & ( (!\count1|i_count\(8) & (\count1|i_count\(7) & (!\count1|i_count\(6) & !\count1|i_count\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(8),
	datab => \count1|ALT_INV_i_count\(7),
	datac => \count1|ALT_INV_i_count\(6),
	datad => \count1|ALT_INV_i_count\(9),
	datae => \count1|ALT_INV_i_count\(11),
	dataf => \count1|ALT_INV_i_count\(27),
	combout => \count1|term~1_combout\);

-- Location: FF_X82_Y9_N22
\count1|i_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~73_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(17));

-- Location: MLABCELL_X82_Y9_N54
\count1|term~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|term~3_combout\ = ( !\count1|i_count\(10) & ( !\count1|i_count\(16) & ( (\count1|i_count\(19) & (\count1|i_count\(20) & (!\count1|i_count\(18) & \count1|i_count\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(19),
	datab => \count1|ALT_INV_i_count\(20),
	datac => \count1|ALT_INV_i_count\(18),
	datad => \count1|ALT_INV_i_count\(17),
	datae => \count1|ALT_INV_i_count\(10),
	dataf => \count1|ALT_INV_i_count\(16),
	combout => \count1|term~3_combout\);

-- Location: FF_X82_Y9_N13
\count1|i_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~13_sumout\,
	sclr => \count1|term~combout\,
	ena => \state_mach|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(14));

-- Location: LABCELL_X83_Y10_N24
\count1|term~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|term~0_combout\ = ( \count1|i_count\(14) & ( (\count1|i_count\(12) & (\count1|i_count\(13) & \count1|i_count\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(12),
	datac => \count1|ALT_INV_i_count\(13),
	datad => \count1|ALT_INV_i_count\(15),
	dataf => \count1|ALT_INV_i_count\(14),
	combout => \count1|term~0_combout\);

-- Location: LABCELL_X83_Y10_N15
\count1|term~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|term~5_combout\ = ( \count1|term~3_combout\ & ( \count1|term~0_combout\ & ( (!\count1|i_count[26]~DUPLICATE_q\ & (\count1|term~2_combout\ & (\count1|term~4_combout\ & \count1|term~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count[26]~DUPLICATE_q\,
	datab => \count1|ALT_INV_term~2_combout\,
	datac => \count1|ALT_INV_term~4_combout\,
	datad => \count1|ALT_INV_term~1_combout\,
	datae => \count1|ALT_INV_term~3_combout\,
	dataf => \count1|ALT_INV_term~0_combout\,
	combout => \count1|term~5_combout\);

-- Location: LABCELL_X83_Y10_N27
\state_mach|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector8~0_combout\ = ( \state_mach|current_state.night_OFF~q\ & ( (\SW[0]~input_o\ & (\count1|term~5_combout\ & !\state_mach|current_state.night_m~q\)) ) ) # ( !\state_mach|current_state.night_OFF~q\ & ( (\SW[0]~input_o\ & 
-- ((!\count1|term~5_combout\) # (!\state_mach|current_state.night_m~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \count1|ALT_INV_term~5_combout\,
	datad => \state_mach|ALT_INV_current_state.night_m~q\,
	dataf => \state_mach|ALT_INV_current_state.night_OFF~q\,
	combout => \state_mach|Selector8~0_combout\);

-- Location: FF_X83_Y10_N29
\state_mach|current_state.night_m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state_mach|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.night_m~q\);

-- Location: LABCELL_X83_Y10_N33
\state_mach|WideOr11\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|WideOr11~combout\ = ( \state_mach|current_state.NS_yellow~q\ ) # ( !\state_mach|current_state.NS_yellow~q\ & ( (\state_mach|current_state.night_OFF~q\) # (\state_mach|current_state.night_m~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.night_m~q\,
	datab => \state_mach|ALT_INV_current_state.night_OFF~q\,
	dataf => \state_mach|ALT_INV_current_state.NS_yellow~q\,
	combout => \state_mach|WideOr11~combout\);

-- Location: LABCELL_X83_Y10_N51
\state_mach|WideOr10\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|WideOr10~combout\ = ( \state_mach|current_state.night_OFF~q\ ) # ( !\state_mach|current_state.night_OFF~q\ & ( (!\state_mach|current_state.NS_green~q\) # (\state_mach|current_state.NS_green_short~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_current_state.NS_green_short~q\,
	datad => \state_mach|ALT_INV_current_state.NS_green~q\,
	dataf => \state_mach|ALT_INV_current_state.night_OFF~q\,
	combout => \state_mach|WideOr10~combout\);

-- Location: MLABCELL_X84_Y11_N54
\hexF|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux3~0_combout\ = ( \state_mach|current_state.NS_yellow~q\ & ( (!\state_mach|current_state.NS_green~q\) # ((\state_mach|current_state.NS_green_short~q\) # (\state_mach|current_state.night_OFF~q\)) ) ) # ( !\state_mach|current_state.NS_yellow~q\ & ( 
-- ((\state_mach|current_state.night_m~q\ & ((!\state_mach|current_state.NS_green~q\) # (\state_mach|current_state.NS_green_short~q\)))) # (\state_mach|current_state.night_OFF~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111111001110110011111110111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.NS_green~q\,
	datab => \state_mach|ALT_INV_current_state.night_OFF~q\,
	datac => \state_mach|ALT_INV_current_state.night_m~q\,
	datad => \state_mach|ALT_INV_current_state.NS_green_short~q\,
	dataf => \state_mach|ALT_INV_current_state.NS_yellow~q\,
	combout => \hexF|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y11_N57
\hexF|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux2~0_combout\ = ( \state_mach|current_state.night_m~q\ & ( (\state_mach|current_state.NS_green~q\ & (!\state_mach|current_state.night_OFF~q\ & !\state_mach|current_state.NS_green_short~q\)) ) ) # ( !\state_mach|current_state.night_m~q\ & ( 
-- (!\state_mach|current_state.night_OFF~q\ & (!\state_mach|current_state.NS_yellow~q\ $ (((\state_mach|current_state.NS_green~q\ & !\state_mach|current_state.NS_green_short~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110001000000100011000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.NS_green~q\,
	datab => \state_mach|ALT_INV_current_state.night_OFF~q\,
	datac => \state_mach|ALT_INV_current_state.NS_green_short~q\,
	datad => \state_mach|ALT_INV_current_state.NS_yellow~q\,
	dataf => \state_mach|ALT_INV_current_state.night_m~q\,
	combout => \hexF|Mux2~0_combout\);

-- Location: LABCELL_X83_Y10_N36
\state_mach|EW_light[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|EW_light\(0) = ( \state_mach|current_state.night_OFF~q\ ) # ( !\state_mach|current_state.night_OFF~q\ & ( \state_mach|current_state.EW_yellow~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_current_state.EW_yellow~q\,
	dataf => \state_mach|ALT_INV_current_state.night_OFF~q\,
	combout => \state_mach|EW_light\(0));

-- Location: MLABCELL_X84_Y11_N15
\state_mach|WideOr15\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|WideOr15~combout\ = ( \state_mach|current_state.EW_green_short~q\ ) # ( !\state_mach|current_state.EW_green_short~q\ & ( (\state_mach|current_state.EW_green~q\) # (\state_mach|current_state.night_OFF~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_current_state.night_OFF~q\,
	datad => \state_mach|ALT_INV_current_state.EW_green~q\,
	dataf => \state_mach|ALT_INV_current_state.EW_green_short~q\,
	combout => \state_mach|WideOr15~combout\);

-- Location: MLABCELL_X84_Y11_N9
\hexF|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux7~0_combout\ = ( \state_mach|current_state.night_OFF~q\ ) # ( !\state_mach|current_state.night_OFF~q\ & ( (\state_mach|current_state.EW_yellow~q\ & ((\state_mach|current_state.EW_green~q\) # (\state_mach|current_state.EW_green_short~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_current_state.EW_green_short~q\,
	datac => \state_mach|ALT_INV_current_state.EW_green~q\,
	datad => \state_mach|ALT_INV_current_state.EW_yellow~q\,
	dataf => \state_mach|ALT_INV_current_state.night_OFF~q\,
	combout => \hexF|Mux7~0_combout\);

-- Location: MLABCELL_X84_Y11_N30
\hexF|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux6~0_combout\ = ( \state_mach|current_state.EW_green_short~q\ & ( (!\state_mach|current_state.night_OFF~q\ & !\state_mach|current_state.EW_yellow~q\) ) ) # ( !\state_mach|current_state.EW_green_short~q\ & ( (!\state_mach|current_state.night_OFF~q\ 
-- & (!\state_mach|current_state.EW_yellow~q\ $ (!\state_mach|current_state.EW_green~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_current_state.night_OFF~q\,
	datac => \state_mach|ALT_INV_current_state.EW_yellow~q\,
	datad => \state_mach|ALT_INV_current_state.EW_green~q\,
	dataf => \state_mach|ALT_INV_current_state.EW_green_short~q\,
	combout => \hexF|Mux6~0_combout\);

-- Location: LABCELL_X19_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


