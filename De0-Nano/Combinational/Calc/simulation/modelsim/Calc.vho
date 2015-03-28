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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/28/2015 17:04:27"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Calc IS
    PORT (
	clock_50 : IN std_logic;
	TDI : IN std_logic;
	TDO : OUT std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END Calc;

-- Design Ports Information
-- clock_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TDO	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRST	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TMS	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TCLK	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TDI	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Calc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \TCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \TDO~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \TCLK~input_o\ : std_logic;
SIGNAL \TCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \TMS~input_o\ : std_logic;
SIGNAL \SC|next_state~1_combout\ : std_logic;
SIGNAL \TRST~input_o\ : std_logic;
SIGNAL \SC|next_state.s_DR_193~combout\ : std_logic;
SIGNAL \SC|current_state.s_DR~q\ : std_logic;
SIGNAL \SC|next_state~0_combout\ : std_logic;
SIGNAL \SC|next_state.s_capture_186~combout\ : std_logic;
SIGNAL \SC|current_state.s_capture~q\ : std_logic;
SIGNAL \SC|Selector3~0_combout\ : std_logic;
SIGNAL \SC|next_state.s_shift_179~combout\ : std_logic;
SIGNAL \SC|current_state.s_shift~q\ : std_logic;
SIGNAL \SC|In_Reg|L2~21_combout\ : std_logic;
SIGNAL \SC|next_state.s_update_172~combout\ : std_logic;
SIGNAL \SC|current_state.s_update~q\ : std_logic;
SIGNAL \SC|Selector0~0_combout\ : std_logic;
SIGNAL \SC|next_state.s_idle_200~combout\ : std_logic;
SIGNAL \SC|current_state.s_idle~0_combout\ : std_logic;
SIGNAL \SC|current_state.s_idle~q\ : std_logic;
SIGNAL \SC|sel_reg~0_combout\ : std_logic;
SIGNAL \TDI~input_o\ : std_logic;
SIGNAL \SC|In_Reg|L1~3_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1[3]~7_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~2_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~1_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~2_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~4_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1[3]~1_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~13_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~14_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~15_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~16_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~17_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~18_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~19_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~12_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~4_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~7_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~5_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~6_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~10_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~11_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~8_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~9_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~13_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~9_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~10_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[0]~2_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[8]~3_combout\ : std_logic;
SIGNAL \DUT|Add0~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~3_combout\ : std_logic;
SIGNAL \DUT|process_0~0_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1[3]~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~5_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[7]~13_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~8_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~7_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[4]~7_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~11_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[3]~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~12_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[2]~1_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[9]~10_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~14_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[0]~8_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[0]~9_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~15_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[9]~11_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~16_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[13]~5_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~17_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[12]~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~18_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[11]~8_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[5]~9_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~19_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[10]~10_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[6]~11_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~20_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[9]~12_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \DUT|Add1~0_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~4_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~5_combout\ : std_logic;
SIGNAL \SC|cap_shft~0_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \DUT|Add0~1\ : std_logic;
SIGNAL \DUT|Add0~2_combout\ : std_logic;
SIGNAL \DUT|Add1~1\ : std_logic;
SIGNAL \DUT|Add1~2_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~8_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~9_combout\ : std_logic;
SIGNAL \DUT|Equal4~1_combout\ : std_logic;
SIGNAL \DUT|Equal4~0_combout\ : std_logic;
SIGNAL \DUT|Equal4~2_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1[3]~2_combout\ : std_logic;
SIGNAL \DUT|process_0~1_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1[3]~3_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \DUT|Add0~3\ : std_logic;
SIGNAL \DUT|Add0~4_combout\ : std_logic;
SIGNAL \DUT|Add1~3\ : std_logic;
SIGNAL \DUT|Add1~4_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~11_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[45]~17_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~12_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[14]~14_combout\ : std_logic;
SIGNAL \DUT|Add1~5\ : std_logic;
SIGNAL \DUT|Add1~7\ : std_logic;
SIGNAL \DUT|Add1~9\ : std_logic;
SIGNAL \DUT|Add1~11\ : std_logic;
SIGNAL \DUT|Add1~12_combout\ : std_logic;
SIGNAL \DUT|Add0~5\ : std_logic;
SIGNAL \DUT|Add0~7\ : std_logic;
SIGNAL \DUT|Add0~9\ : std_logic;
SIGNAL \DUT|Add0~11\ : std_logic;
SIGNAL \DUT|Add0~12_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~23_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~24_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[15]~15_combout\ : std_logic;
SIGNAL \DUT|Add0~13\ : std_logic;
SIGNAL \DUT|Add0~14_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \DUT|Add1~13\ : std_logic;
SIGNAL \DUT|Add1~14_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[0]~16_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~26_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~27_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~28_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~25_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \DUT|Add0~10_combout\ : std_logic;
SIGNAL \DUT|Add1~10_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~20_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~21_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~22_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[27]~18_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \DUT|Add1~8_combout\ : std_logic;
SIGNAL \DUT|Add0~8_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~17_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~18_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~19_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \DUT|Add1~6_combout\ : std_logic;
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose[36]~15_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~14_combout\ : std_logic;
SIGNAL \DUT|Add0~6_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~15_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~16_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~13_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~10_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~6_combout\ : std_logic;
SIGNAL \SC|state~3_combout\ : std_logic;
SIGNAL \SC|WideOr2~0_combout\ : std_logic;
SIGNAL \DUT|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DUT|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DUT|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DUT|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SC|Out_Reg|L1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SC|In_Reg|L1\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \SC|state\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SC|In_Reg|L2\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_TRST~input_o\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\TCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \TCLK~input_o\);
\ALT_INV_TRST~input_o\ <= NOT \TRST~input_o\;

-- Location: IOOBUF_X31_Y34_N2
\TDO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SC|Out_Reg|L1\(0),
	devoe => ww_devoe,
	o => \TDO~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SC|state\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SC|state\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SC|state\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOIBUF_X51_Y34_N22
\TCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TCLK,
	o => \TCLK~input_o\);

-- Location: CLKCTRL_G7
\TCLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \TCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \TCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X38_Y34_N1
\TMS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TMS,
	o => \TMS~input_o\);

-- Location: LCCOMB_X31_Y24_N28
\SC|next_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state~1_combout\ = (\TMS~input_o\ & ((\SC|current_state.s_DR~q\) # (!\SC|current_state.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_idle~q\,
	datab => \TMS~input_o\,
	datad => \SC|current_state.s_DR~q\,
	combout => \SC|next_state~1_combout\);

-- Location: IOIBUF_X43_Y34_N15
\TRST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TRST,
	o => \TRST~input_o\);

-- Location: LCCOMB_X31_Y24_N22
\SC|next_state.s_DR_193\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_DR_193~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_DR_193~combout\))) # (!\TRST~input_o\ & (\SC|next_state~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|next_state~1_combout\,
	datac => \SC|next_state.s_DR_193~combout\,
	datad => \TRST~input_o\,
	combout => \SC|next_state.s_DR_193~combout\);

-- Location: FF_X31_Y24_N23
\SC|current_state.s_DR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|next_state.s_DR_193~combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_DR~q\);

-- Location: LCCOMB_X31_Y24_N6
\SC|next_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state~0_combout\ = (\TMS~input_o\) # (!\SC|current_state.s_DR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|current_state.s_DR~q\,
	datad => \TMS~input_o\,
	combout => \SC|next_state~0_combout\);

-- Location: LCCOMB_X31_Y24_N0
\SC|next_state.s_capture_186\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_capture_186~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_capture_186~combout\))) # (!\TRST~input_o\ & (!\SC|next_state~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|next_state~0_combout\,
	datab => \TRST~input_o\,
	datad => \SC|next_state.s_capture_186~combout\,
	combout => \SC|next_state.s_capture_186~combout\);

-- Location: FF_X31_Y24_N1
\SC|current_state.s_capture\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|next_state.s_capture_186~combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_capture~q\);

-- Location: LCCOMB_X31_Y24_N26
\SC|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Selector3~0_combout\ = (!\TMS~input_o\ & ((\SC|current_state.s_shift~q\) # (\SC|current_state.s_capture~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_shift~q\,
	datac => \SC|current_state.s_capture~q\,
	datad => \TMS~input_o\,
	combout => \SC|Selector3~0_combout\);

-- Location: LCCOMB_X31_Y26_N16
\SC|next_state.s_shift_179\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_shift_179~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_shift_179~combout\))) # (!\TRST~input_o\ & (\SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datac => \TRST~input_o\,
	datad => \SC|next_state.s_shift_179~combout\,
	combout => \SC|next_state.s_shift_179~combout\);

-- Location: FF_X31_Y26_N17
\SC|current_state.s_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|next_state.s_shift_179~combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_shift~q\);

-- Location: LCCOMB_X31_Y24_N18
\SC|In_Reg|L2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~21_combout\ = (\TMS~input_o\ & ((\SC|current_state.s_shift~q\) # (\SC|current_state.s_capture~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_shift~q\,
	datac => \SC|current_state.s_capture~q\,
	datad => \TMS~input_o\,
	combout => \SC|In_Reg|L2~21_combout\);

-- Location: LCCOMB_X31_Y24_N30
\SC|next_state.s_update_172\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_update_172~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_update_172~combout\))) # (!\TRST~input_o\ & (\SC|In_Reg|L2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L2~21_combout\,
	datac => \SC|next_state.s_update_172~combout\,
	datad => \TRST~input_o\,
	combout => \SC|next_state.s_update_172~combout\);

-- Location: FF_X31_Y24_N31
\SC|current_state.s_update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|next_state.s_update_172~combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_update~q\);

-- Location: LCCOMB_X31_Y24_N8
\SC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Selector0~0_combout\ = (\SC|current_state.s_update~q\) # ((!\SC|current_state.s_idle~q\ & !\TMS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_idle~q\,
	datac => \SC|current_state.s_update~q\,
	datad => \TMS~input_o\,
	combout => \SC|Selector0~0_combout\);

-- Location: LCCOMB_X31_Y24_N14
\SC|next_state.s_idle_200\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_idle_200~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_idle_200~combout\))) # (!\TRST~input_o\ & (\SC|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Selector0~0_combout\,
	datac => \SC|next_state.s_idle_200~combout\,
	datad => \TRST~input_o\,
	combout => \SC|next_state.s_idle_200~combout\);

-- Location: LCCOMB_X31_Y24_N12
\SC|current_state.s_idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|current_state.s_idle~0_combout\ = !\SC|next_state.s_idle_200~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|next_state.s_idle_200~combout\,
	combout => \SC|current_state.s_idle~0_combout\);

-- Location: FF_X31_Y24_N13
\SC|current_state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|current_state.s_idle~0_combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_idle~q\);

-- Location: LCCOMB_X31_Y24_N16
\SC|sel_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|sel_reg~0_combout\ = (!\TRST~input_o\ & ((\SC|current_state.s_idle~q\ & ((!\SC|current_state.s_update~q\))) # (!\SC|current_state.s_idle~q\ & (\TMS~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_idle~q\,
	datab => \TMS~input_o\,
	datac => \SC|current_state.s_update~q\,
	datad => \TRST~input_o\,
	combout => \SC|sel_reg~0_combout\);

-- Location: IOIBUF_X45_Y34_N8
\TDI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TDI,
	o => \TDI~input_o\);

-- Location: LCCOMB_X31_Y26_N24
\SC|In_Reg|L1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~3_combout\ = (\SC|Selector3~0_combout\ & (!\TRST~input_o\ & \TDI~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datac => \TRST~input_o\,
	datad => \TDI~input_o\,
	combout => \SC|In_Reg|L1~3_combout\);

-- Location: LCCOMB_X31_Y24_N4
\SC|Out_Reg|L1[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1[3]~7_combout\ = (\TRST~input_o\) # ((\SC|current_state.s_idle~q\ & (!\TMS~input_o\ & !\SC|current_state.s_update~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_idle~q\,
	datab => \TMS~input_o\,
	datac => \SC|current_state.s_update~q\,
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1[3]~7_combout\);

-- Location: FF_X31_Y26_N25
\SC|In_Reg|L1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~3_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(19));

-- Location: LCCOMB_X31_Y26_N18
\SC|In_Reg|L1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~0_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(19) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(19),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~0_combout\);

-- Location: FF_X31_Y26_N19
\SC|In_Reg|L1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~0_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(18));

-- Location: LCCOMB_X30_Y25_N24
\SC|In_Reg|L2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~0_combout\ = (\SC|In_Reg|L1\(18) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(18),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~0_combout\);

-- Location: LCCOMB_X31_Y24_N20
\SC|In_Reg|L2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~1_combout\ = (\TRST~input_o\) # ((\TMS~input_o\ & ((\SC|current_state.s_shift~q\) # (\SC|current_state.s_capture~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_shift~q\,
	datab => \TMS~input_o\,
	datac => \SC|current_state.s_capture~q\,
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~1_combout\);

-- Location: FF_X30_Y25_N25
\SC|In_Reg|L2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~0_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(18));

-- Location: LCCOMB_X31_Y26_N30
\SC|In_Reg|L1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~2_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(18) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(18),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~2_combout\);

-- Location: FF_X31_Y26_N31
\SC|In_Reg|L1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~2_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(17));

-- Location: LCCOMB_X31_Y26_N28
\SC|In_Reg|L1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~1_combout\ = (\SC|Selector3~0_combout\ & (!\TRST~input_o\ & \SC|In_Reg|L1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datac => \TRST~input_o\,
	datad => \SC|In_Reg|L1\(17),
	combout => \SC|In_Reg|L1~1_combout\);

-- Location: FF_X31_Y26_N29
\SC|In_Reg|L1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~1_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(16));

-- Location: LCCOMB_X36_Y27_N16
\SC|In_Reg|L2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~2_combout\ = (\SC|In_Reg|L1\(16) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(16),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~2_combout\);

-- Location: FF_X36_Y27_N17
\SC|In_Reg|L2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~2_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(16));

-- Location: LCCOMB_X34_Y25_N2
\SC|In_Reg|L2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~4_combout\ = (\SC|In_Reg|L1\(19) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(19),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~4_combout\);

-- Location: FF_X34_Y25_N3
\SC|In_Reg|L2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~4_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(19));

-- Location: LCCOMB_X34_Y25_N0
\SC|Out_Reg|L1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1[3]~1_combout\ = (\SC|sel_reg~0_combout\ & (!\SC|In_Reg|L2\(18) & (\SC|In_Reg|L2\(16) & !\SC|In_Reg|L2\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datab => \SC|In_Reg|L2\(18),
	datac => \SC|In_Reg|L2\(16),
	datad => \SC|In_Reg|L2\(19),
	combout => \SC|Out_Reg|L1[3]~1_combout\);

-- Location: LCCOMB_X31_Y26_N14
\SC|In_Reg|L1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~13_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(16) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(16),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~13_combout\);

-- Location: FF_X31_Y26_N15
\SC|In_Reg|L1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~13_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(15));

-- Location: LCCOMB_X31_Y26_N10
\SC|In_Reg|L1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~14_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(15) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(15),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~14_combout\);

-- Location: FF_X31_Y26_N11
\SC|In_Reg|L1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~14_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(14));

-- Location: LCCOMB_X30_Y25_N6
\SC|In_Reg|L1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~15_combout\ = (!\TRST~input_o\ & (\SC|Selector3~0_combout\ & \SC|In_Reg|L1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|Selector3~0_combout\,
	datac => \SC|In_Reg|L1\(14),
	combout => \SC|In_Reg|L1~15_combout\);

-- Location: FF_X30_Y25_N7
\SC|In_Reg|L1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~15_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(13));

-- Location: LCCOMB_X30_Y25_N16
\SC|In_Reg|L1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~16_combout\ = (\SC|In_Reg|L1\(13) & (\SC|Selector3~0_combout\ & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(13),
	datab => \SC|Selector3~0_combout\,
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~16_combout\);

-- Location: FF_X30_Y25_N17
\SC|In_Reg|L1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~16_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(12));

-- Location: LCCOMB_X30_Y25_N2
\SC|In_Reg|L1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~17_combout\ = (\SC|In_Reg|L1\(12) & (!\TRST~input_o\ & \SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(12),
	datac => \TRST~input_o\,
	datad => \SC|Selector3~0_combout\,
	combout => \SC|In_Reg|L1~17_combout\);

-- Location: FF_X30_Y25_N3
\SC|In_Reg|L1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~17_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(11));

-- Location: LCCOMB_X30_Y25_N28
\SC|In_Reg|L1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~18_combout\ = (\SC|In_Reg|L1\(11) & (!\TRST~input_o\ & \SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(11),
	datac => \TRST~input_o\,
	datad => \SC|Selector3~0_combout\,
	combout => \SC|In_Reg|L1~18_combout\);

-- Location: FF_X30_Y25_N29
\SC|In_Reg|L1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~18_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(10));

-- Location: LCCOMB_X30_Y25_N14
\SC|In_Reg|L1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~19_combout\ = (\SC|In_Reg|L1\(10) & (!\TRST~input_o\ & \SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(10),
	datac => \TRST~input_o\,
	datad => \SC|Selector3~0_combout\,
	combout => \SC|In_Reg|L1~19_combout\);

-- Location: FF_X30_Y25_N15
\SC|In_Reg|L1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~19_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(9));

-- Location: LCCOMB_X30_Y25_N20
\SC|In_Reg|L1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~12_combout\ = (!\TRST~input_o\ & (\SC|Selector3~0_combout\ & \SC|In_Reg|L1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|Selector3~0_combout\,
	datac => \SC|In_Reg|L1\(9),
	combout => \SC|In_Reg|L1~12_combout\);

-- Location: FF_X30_Y25_N21
\SC|In_Reg|L1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~12_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(8));

-- Location: LCCOMB_X31_Y26_N2
\SC|In_Reg|L1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~4_combout\ = (\SC|In_Reg|L1\(8) & (!\TRST~input_o\ & \SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(8),
	datac => \TRST~input_o\,
	datad => \SC|Selector3~0_combout\,
	combout => \SC|In_Reg|L1~4_combout\);

-- Location: FF_X31_Y26_N3
\SC|In_Reg|L1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~4_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(7));

-- Location: LCCOMB_X31_Y26_N0
\SC|In_Reg|L1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~7_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(7) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(7),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~7_combout\);

-- Location: FF_X31_Y26_N1
\SC|In_Reg|L1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~7_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(6));

-- Location: LCCOMB_X31_Y26_N20
\SC|In_Reg|L1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~5_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(6) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(6),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~5_combout\);

-- Location: FF_X31_Y26_N21
\SC|In_Reg|L1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~5_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(5));

-- Location: LCCOMB_X31_Y26_N22
\SC|In_Reg|L1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~6_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(5) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(5),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~6_combout\);

-- Location: FF_X31_Y26_N23
\SC|In_Reg|L1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~6_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(4));

-- Location: LCCOMB_X31_Y26_N4
\SC|In_Reg|L1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~10_combout\ = (\SC|In_Reg|L1\(4) & (!\TRST~input_o\ & \SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(4),
	datac => \TRST~input_o\,
	datad => \SC|Selector3~0_combout\,
	combout => \SC|In_Reg|L1~10_combout\);

-- Location: FF_X31_Y26_N5
\SC|In_Reg|L1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~10_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(3));

-- Location: LCCOMB_X34_Y25_N22
\SC|In_Reg|L1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~11_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(3) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(3),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~11_combout\);

-- Location: FF_X34_Y25_N23
\SC|In_Reg|L1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~11_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(2));

-- Location: LCCOMB_X34_Y25_N28
\SC|In_Reg|L1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~8_combout\ = (\SC|In_Reg|L1\(2) & (!\TRST~input_o\ & \SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(2),
	datac => \TRST~input_o\,
	datad => \SC|Selector3~0_combout\,
	combout => \SC|In_Reg|L1~8_combout\);

-- Location: FF_X34_Y25_N29
\SC|In_Reg|L1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~8_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(1));

-- Location: LCCOMB_X34_Y25_N14
\SC|In_Reg|L2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~9_combout\ = (\SC|In_Reg|L1\(1) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(1),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~9_combout\);

-- Location: FF_X32_Y25_N25
\SC|In_Reg|L2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	asdata => \SC|In_Reg|L2~9_combout\,
	sload => VCC,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(1));

-- Location: LCCOMB_X32_Y25_N24
\DUT|Mult0|auto_generated|le3a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le3a\(5) = (\SC|In_Reg|L2\(1) & \SC|sel_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|In_Reg|L2\(1),
	datad => \SC|sel_reg~0_combout\,
	combout => \DUT|Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X30_Y25_N10
\SC|In_Reg|L2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~13_combout\ = (\SC|In_Reg|L1\(8) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(8),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~13_combout\);

-- Location: FF_X30_Y25_N11
\SC|In_Reg|L2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~13_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(8));

-- Location: LCCOMB_X34_Y25_N16
\SC|In_Reg|L1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~9_combout\ = (\SC|Selector3~0_combout\ & (\SC|In_Reg|L1\(1) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector3~0_combout\,
	datab => \SC|In_Reg|L1\(1),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L1~9_combout\);

-- Location: FF_X34_Y25_N17
\SC|In_Reg|L1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~9_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(0));

-- Location: LCCOMB_X34_Y25_N18
\SC|In_Reg|L2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~10_combout\ = (\SC|In_Reg|L1\(0) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(0),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~10_combout\);

-- Location: FF_X32_Y25_N27
\SC|In_Reg|L2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	asdata => \SC|In_Reg|L2~10_combout\,
	sload => VCC,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(0));

-- Location: LCCOMB_X26_Y25_N18
\DUT|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le3a\(0) = (\SC|sel_reg~0_combout\ & (\SC|In_Reg|L2\(1) $ (((\SC|In_Reg|L2\(8) & \SC|In_Reg|L2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(1),
	datab => \SC|In_Reg|L2\(8),
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(0),
	combout => \DUT|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X27_Y24_N2
\DUT|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_3~0_combout\ = (\DUT|Mult0|auto_generated|le3a\(5) & (\DUT|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\DUT|Mult0|auto_generated|le3a\(5) & (\DUT|Mult0|auto_generated|le3a\(0) & VCC))
-- \DUT|Mult0|auto_generated|op_3~1\ = CARRY((\DUT|Mult0|auto_generated|le3a\(5) & \DUT|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \DUT|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \DUT|Mult0|auto_generated|op_3~0_combout\,
	cout => \DUT|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X26_Y25_N24
\SC|In_Reg|PO[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[0]~2_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(0),
	combout => \SC|In_Reg|PO[0]~2_combout\);

-- Location: LCCOMB_X26_Y25_N10
\SC|In_Reg|PO[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[8]~3_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(8),
	combout => \SC|In_Reg|PO[8]~3_combout\);

-- Location: LCCOMB_X27_Y29_N0
\DUT|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~0_combout\ = (\SC|In_Reg|PO[0]~2_combout\ & (\SC|In_Reg|PO[8]~3_combout\ $ (VCC))) # (!\SC|In_Reg|PO[0]~2_combout\ & (\SC|In_Reg|PO[8]~3_combout\ & VCC))
-- \DUT|Add0~1\ = CARRY((\SC|In_Reg|PO[0]~2_combout\ & \SC|In_Reg|PO[8]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[0]~2_combout\,
	datab => \SC|In_Reg|PO[8]~3_combout\,
	datad => VCC,
	combout => \DUT|Add0~0_combout\,
	cout => \DUT|Add0~1\);

-- Location: LCCOMB_X34_Y25_N24
\SC|In_Reg|L2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~3_combout\ = (\SC|In_Reg|L1\(17) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(17),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~3_combout\);

-- Location: FF_X34_Y25_N25
\SC|In_Reg|L2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~3_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(17));

-- Location: LCCOMB_X34_Y25_N20
\DUT|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|process_0~0_combout\ = (\SC|sel_reg~0_combout\ & !\SC|In_Reg|L2\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(19),
	combout => \DUT|process_0~0_combout\);

-- Location: LCCOMB_X34_Y25_N6
\SC|Out_Reg|L1[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1[3]~0_combout\ = (\SC|In_Reg|L2\(18)) # ((\SC|In_Reg|L2\(17) $ (!\SC|In_Reg|L2\(16))) # (!\DUT|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(18),
	datab => \SC|In_Reg|L2\(17),
	datac => \SC|In_Reg|L2\(16),
	datad => \DUT|process_0~0_combout\,
	combout => \SC|Out_Reg|L1[3]~0_combout\);

-- Location: LCCOMB_X36_Y27_N10
\SC|In_Reg|L2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~5_combout\ = (\SC|In_Reg|L1\(7) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(7),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~5_combout\);

-- Location: FF_X36_Y27_N11
\SC|In_Reg|L2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~5_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(7));

-- Location: LCCOMB_X36_Y27_N14
\SC|In_Reg|PO[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[7]~13_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(7),
	combout => \SC|In_Reg|PO[7]~13_combout\);

-- Location: LCCOMB_X31_Y26_N26
\SC|In_Reg|L2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~8_combout\ = (\SC|In_Reg|L1\(6) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(6),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~8_combout\);

-- Location: FF_X36_Y27_N19
\SC|In_Reg|L2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	asdata => \SC|In_Reg|L2~8_combout\,
	sload => VCC,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(6));

-- Location: LCCOMB_X36_Y27_N26
\DUT|Div0|auto_generated|divider|divider|selnose[45]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ = (\SC|sel_reg~0_combout\ & ((\SC|In_Reg|L2\(7)) # (\SC|In_Reg|L2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(7),
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(6),
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\);

-- Location: LCCOMB_X36_Y27_N28
\SC|In_Reg|L2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~6_combout\ = (\SC|In_Reg|L1\(5) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(5),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~6_combout\);

-- Location: FF_X36_Y27_N29
\SC|In_Reg|L2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~6_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(5));

-- Location: LCCOMB_X36_Y27_N6
\DUT|Div0|auto_generated|divider|divider|selnose[36]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ = (\SC|sel_reg~0_combout\ & ((\SC|In_Reg|L2\(7)) # ((\SC|In_Reg|L2\(5)) # (\SC|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(7),
	datab => \SC|In_Reg|L2\(5),
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(6),
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\);

-- Location: LCCOMB_X36_Y27_N22
\SC|In_Reg|L2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~7_combout\ = (\SC|In_Reg|L1\(4) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(4),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~7_combout\);

-- Location: FF_X36_Y27_N23
\SC|In_Reg|L2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~7_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(4));

-- Location: LCCOMB_X36_Y27_N20
\SC|In_Reg|PO[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[4]~7_combout\ = (\SC|In_Reg|L2\(4) & \SC|sel_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(4),
	datac => \SC|sel_reg~0_combout\,
	combout => \SC|In_Reg|PO[4]~7_combout\);

-- Location: LCCOMB_X36_Y27_N18
\DUT|Div0|auto_generated|divider|divider|sel[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\ = (!\SC|In_Reg|L2\(4) & (!\SC|In_Reg|L2\(5) & (!\SC|In_Reg|L2\(6) & !\SC|In_Reg|L2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(4),
	datab => \SC|In_Reg|L2\(5),
	datac => \SC|In_Reg|L2\(6),
	datad => \SC|In_Reg|L2\(7),
	combout => \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\);

-- Location: LCCOMB_X35_Y24_N30
\DUT|Div0|auto_generated|divider|divider|selnose[27]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ = (\SC|sel_reg~0_combout\ & !\DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\);

-- Location: LCCOMB_X34_Y25_N4
\SC|In_Reg|L2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~11_combout\ = (\SC|In_Reg|L1\(3) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(3),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~11_combout\);

-- Location: FF_X32_Y25_N7
\SC|In_Reg|L2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	asdata => \SC|In_Reg|L2~11_combout\,
	sload => VCC,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(3));

-- Location: LCCOMB_X32_Y25_N16
\SC|In_Reg|PO[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[3]~0_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(3),
	combout => \SC|In_Reg|PO[3]~0_combout\);

-- Location: LCCOMB_X34_Y25_N8
\SC|In_Reg|L2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~12_combout\ = (!\TRST~input_o\ & \SC|In_Reg|L1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datac => \SC|In_Reg|L1\(2),
	combout => \SC|In_Reg|L2~12_combout\);

-- Location: FF_X32_Y25_N11
\SC|In_Reg|L2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	asdata => \SC|In_Reg|L2~12_combout\,
	sload => VCC,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(2));

-- Location: LCCOMB_X32_Y25_N20
\SC|In_Reg|PO[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[2]~1_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(2),
	combout => \SC|In_Reg|PO[2]~1_combout\);

-- Location: LCCOMB_X32_Y25_N10
\DUT|Div0|auto_generated|divider|divider|selnose[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[9]~10_combout\ = (\SC|sel_reg~0_combout\ & ((\SC|In_Reg|L2\(3)) # ((\SC|In_Reg|L2\(2)) # (!\DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(3),
	datab => \SC|sel_reg~0_combout\,
	datac => \SC|In_Reg|L2\(2),
	datad => \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[9]~10_combout\);

-- Location: LCCOMB_X31_Y26_N8
\SC|In_Reg|L2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~14_combout\ = (!\TRST~input_o\ & \SC|In_Reg|L1\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datac => \SC|In_Reg|L1\(15),
	combout => \SC|In_Reg|L2~14_combout\);

-- Location: FF_X32_Y25_N9
\SC|In_Reg|L2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	asdata => \SC|In_Reg|L2~14_combout\,
	sload => VCC,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(15));

-- Location: LCCOMB_X32_Y25_N8
\DUT|Div0|auto_generated|divider|divider|selnose[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[0]~8_combout\ = (\SC|In_Reg|L2\(1)) # ((!\SC|In_Reg|L2\(15) & \SC|In_Reg|L2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(1),
	datac => \SC|In_Reg|L2\(15),
	datad => \SC|In_Reg|L2\(0),
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[0]~8_combout\);

-- Location: LCCOMB_X32_Y25_N6
\DUT|Div0|auto_generated|divider|divider|selnose[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[0]~9_combout\ = (\SC|In_Reg|L2\(2)) # ((\DUT|Div0|auto_generated|divider|divider|selnose[0]~8_combout\) # ((\SC|In_Reg|L2\(3)) # (!\DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(2),
	datab => \DUT|Div0|auto_generated|divider|divider|selnose[0]~8_combout\,
	datac => \SC|In_Reg|L2\(3),
	datad => \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[0]~9_combout\);

-- Location: LCCOMB_X32_Y25_N18
\DUT|Div0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\SC|sel_reg~0_combout\ & (\SC|In_Reg|L2\(15) $ (((!\DUT|Div0|auto_generated|divider|divider|selnose[0]~9_combout\ & \SC|In_Reg|L2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[0]~9_combout\,
	datab => \SC|sel_reg~0_combout\,
	datac => \SC|In_Reg|L2\(0),
	datad => \SC|In_Reg|L2\(15),
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X30_Y25_N4
\SC|In_Reg|L2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~15_combout\ = (!\TRST~input_o\ & \SC|In_Reg|L1\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datac => \SC|In_Reg|L1\(14),
	combout => \SC|In_Reg|L2~15_combout\);

-- Location: FF_X30_Y25_N5
\SC|In_Reg|L2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~15_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(14));

-- Location: LCCOMB_X32_Y25_N26
\DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn\(0) = (\SC|In_Reg|L2\(14)) # ((!\SC|sel_reg~0_combout\) # (!\SC|In_Reg|L2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L2\(14),
	datac => \SC|In_Reg|L2\(0),
	datad => \SC|sel_reg~0_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn\(0));

-- Location: LCCOMB_X32_Y25_N28
\DUT|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\DUT|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[9]~10_combout\) # 
-- (\DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn\(0) $ (\DUT|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[9]~10_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn\(0),
	datad => \DUT|Mult0|auto_generated|le3a\(5),
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X32_Y25_N14
\DUT|Div0|auto_generated|divider|divider|selnose[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[9]~11_combout\ = (\DUT|Div0|auto_generated|divider|divider|selnose[9]~10_combout\) # ((\DUT|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn\(0) & \DUT|Mult0|auto_generated|le3a\(5))) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[9]~10_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn\(0),
	datad => \DUT|Mult0|auto_generated|le3a\(5),
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[9]~11_combout\);

-- Location: LCCOMB_X32_Y25_N0
\DUT|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\SC|sel_reg~0_combout\ & (\SC|In_Reg|L2\(14) $ (((\SC|In_Reg|L2\(0) & !\DUT|Div0|auto_generated|divider|divider|selnose[9]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(0),
	datab => \SC|sel_reg~0_combout\,
	datac => \SC|In_Reg|L2\(14),
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[9]~11_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X30_Y25_N30
\SC|In_Reg|L2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~16_combout\ = (\SC|In_Reg|L1\(13) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(13),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~16_combout\);

-- Location: FF_X30_Y25_N31
\SC|In_Reg|L2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~16_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(13));

-- Location: LCCOMB_X30_Y25_N0
\SC|In_Reg|PO[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[13]~5_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datac => \SC|In_Reg|L2\(13),
	combout => \SC|In_Reg|PO[13]~5_combout\);

-- Location: LCCOMB_X37_Y23_N8
\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SC|In_Reg|PO[0]~2_combout\ & (\SC|In_Reg|PO[13]~5_combout\ $ (VCC))) # (!\SC|In_Reg|PO[0]~2_combout\ & ((\SC|In_Reg|PO[13]~5_combout\) # (GND)))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SC|In_Reg|PO[13]~5_combout\) # (!\SC|In_Reg|PO[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[0]~2_combout\,
	datab => \SC|In_Reg|PO[13]~5_combout\,
	datad => VCC,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X37_Y23_N10
\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) 
-- # (!\DUT|Mult0|auto_generated|le3a\(5) & (\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\DUT|Mult0|auto_generated|le3a\(5) & !\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5)) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \DUT|Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X37_Y23_N12
\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SC|In_Reg|PO[2]~1_combout\ $ (\DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # 
-- (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SC|In_Reg|PO[2]~1_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\SC|In_Reg|PO[2]~1_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[2]~1_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X37_Y23_N14
\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X35_Y24_N12
\DUT|Div0|auto_generated|divider|divider|sel[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\ = (\SC|sel_reg~0_combout\ & ((\SC|In_Reg|L2\(3)) # (!\DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datab => \SC|In_Reg|L2\(3),
	datad => \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\);

-- Location: LCCOMB_X37_Y23_N16
\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X37_Y23_N2
\DUT|Div0|auto_generated|divider|divider|StageOut[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X37_Y23_N28
\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\SC|In_Reg|PO[13]~5_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\ & (\SC|In_Reg|PO[13]~5_combout\)) # (!\DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \SC|In_Reg|PO[13]~5_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|sel[18]~1_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X30_Y25_N18
\SC|In_Reg|L2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~17_combout\ = (\SC|In_Reg|L1\(12) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(12),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~17_combout\);

-- Location: FF_X30_Y25_N19
\SC|In_Reg|L2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~17_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(12));

-- Location: LCCOMB_X30_Y25_N12
\SC|In_Reg|PO[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[12]~6_combout\ = (\SC|In_Reg|L2\(12) & \SC|sel_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L2\(12),
	datac => \SC|sel_reg~0_combout\,
	combout => \SC|In_Reg|PO[12]~6_combout\);

-- Location: LCCOMB_X37_Y23_N18
\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SC|In_Reg|PO[0]~2_combout\ & (\SC|In_Reg|PO[12]~6_combout\ $ (VCC))) # (!\SC|In_Reg|PO[0]~2_combout\ & ((\SC|In_Reg|PO[12]~6_combout\) # (GND)))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SC|In_Reg|PO[12]~6_combout\) # (!\SC|In_Reg|PO[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[0]~2_combout\,
	datab => \SC|In_Reg|PO[12]~6_combout\,
	datad => VCC,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X37_Y23_N20
\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # 
-- (!\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\DUT|Mult0|auto_generated|le3a\(5) & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\))) # (!\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X37_Y23_N22
\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SC|In_Reg|PO[2]~1_combout\ $ (\DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # 
-- (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SC|In_Reg|PO[2]~1_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\SC|In_Reg|PO[2]~1_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[2]~1_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X37_Y23_N24
\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\SC|In_Reg|PO[3]~0_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\SC|In_Reg|PO[3]~0_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- (\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\SC|In_Reg|PO[3]~0_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\))) # 
-- (!\SC|In_Reg|PO[3]~0_combout\ & (!\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[3]~0_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X37_Y23_N26
\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X37_Y23_N30
\DUT|Div0|auto_generated|divider|divider|StageOut[27]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LCCOMB_X37_Y23_N0
\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\);

-- Location: LCCOMB_X37_Y23_N4
\DUT|Div0|auto_generated|divider|divider|StageOut[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ = (\DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\);

-- Location: LCCOMB_X37_Y23_N6
\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ = (\DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ & (\SC|In_Reg|PO[12]~6_combout\)) # (!\DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\SC|In_Reg|PO[12]~6_combout\)) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[27]~12_combout\,
	datab => \SC|In_Reg|PO[12]~6_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\);

-- Location: LCCOMB_X30_Y25_N22
\SC|In_Reg|L2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~18_combout\ = (\SC|In_Reg|L1\(11) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(11),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~18_combout\);

-- Location: FF_X30_Y25_N23
\SC|In_Reg|L2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~18_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(11));

-- Location: LCCOMB_X26_Y25_N4
\SC|In_Reg|PO[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[11]~8_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(11),
	combout => \SC|In_Reg|PO[11]~8_combout\);

-- Location: LCCOMB_X35_Y27_N20
\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\SC|In_Reg|PO[11]~8_combout\ & ((GND) # (!\SC|In_Reg|PO[0]~2_combout\))) # (!\SC|In_Reg|PO[11]~8_combout\ & (\SC|In_Reg|PO[0]~2_combout\ $ (GND)))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\SC|In_Reg|PO[11]~8_combout\) # (!\SC|In_Reg|PO[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[11]~8_combout\,
	datab => \SC|In_Reg|PO[0]~2_combout\,
	datad => VCC,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X35_Y27_N22
\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # 
-- (!\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\DUT|Mult0|auto_generated|le3a\(5) & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\))) # (!\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X35_Y27_N24
\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\SC|In_Reg|PO[2]~1_combout\ $ (\DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # 
-- (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\SC|In_Reg|PO[2]~1_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # 
-- (!\SC|In_Reg|PO[2]~1_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[2]~1_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X35_Y27_N26
\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\SC|In_Reg|PO[3]~0_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))))) # (!\SC|In_Reg|PO[3]~0_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & 
-- (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\SC|In_Reg|PO[3]~0_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\))) # 
-- (!\SC|In_Reg|PO[3]~0_combout\ & (!\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[3]~0_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X35_Y27_N28
\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\SC|In_Reg|PO[4]~7_combout\ $ (\DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # 
-- (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\SC|In_Reg|PO[4]~7_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)) # 
-- (!\SC|In_Reg|PO[4]~7_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[4]~7_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X35_Y27_N30
\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X35_Y27_N0
\DUT|Div0|auto_generated|divider|divider|StageOut[36]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ = (\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\);

-- Location: LCCOMB_X36_Y27_N24
\SC|In_Reg|PO[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[5]~9_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(5),
	combout => \SC|In_Reg|PO[5]~9_combout\);

-- Location: LCCOMB_X35_Y27_N10
\DUT|Div0|auto_generated|divider|divider|StageOut[35]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\);

-- Location: LCCOMB_X35_Y27_N12
\DUT|Div0|auto_generated|divider|divider|StageOut[34]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\);

-- Location: LCCOMB_X35_Y27_N6
\DUT|Div0|auto_generated|divider|divider|StageOut[33]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\);

-- Location: LCCOMB_X35_Y27_N8
\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\SC|In_Reg|PO[11]~8_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & (\SC|In_Reg|PO[11]~8_combout\)) # (!\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[11]~8_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\);

-- Location: LCCOMB_X30_Y25_N8
\SC|In_Reg|L2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~19_combout\ = (\SC|In_Reg|L1\(10) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(10),
	datac => \TRST~input_o\,
	combout => \SC|In_Reg|L2~19_combout\);

-- Location: FF_X30_Y25_N9
\SC|In_Reg|L2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~19_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(10));

-- Location: LCCOMB_X26_Y25_N14
\SC|In_Reg|PO[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[10]~10_combout\ = (\SC|In_Reg|L2\(10) & \SC|sel_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L2\(10),
	datac => \SC|sel_reg~0_combout\,
	combout => \SC|In_Reg|PO[10]~10_combout\);

-- Location: LCCOMB_X35_Y26_N14
\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\SC|In_Reg|PO[0]~2_combout\ & (\SC|In_Reg|PO[10]~10_combout\ $ (VCC))) # (!\SC|In_Reg|PO[0]~2_combout\ & ((\SC|In_Reg|PO[10]~10_combout\) # (GND)))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\SC|In_Reg|PO[10]~10_combout\) # (!\SC|In_Reg|PO[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[0]~2_combout\,
	datab => \SC|In_Reg|PO[10]~10_combout\,
	datad => VCC,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X35_Y26_N16
\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))))) # 
-- (!\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ 
-- & (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\DUT|Mult0|auto_generated|le3a\(5) & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))) # (!\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X35_Y26_N18
\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ $ (\SC|In_Reg|PO[2]~1_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # 
-- (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\SC|In_Reg|PO[2]~1_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ & (!\SC|In_Reg|PO[2]~1_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datab => \SC|In_Reg|PO[2]~1_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X35_Y26_N20
\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\SC|In_Reg|PO[3]~0_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\SC|In_Reg|PO[3]~0_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\SC|In_Reg|PO[3]~0_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # (!\SC|In_Reg|PO[3]~0_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & (\SC|In_Reg|PO[3]~0_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\SC|In_Reg|PO[3]~0_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \SC|In_Reg|PO[3]~0_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X35_Y26_N22
\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\SC|In_Reg|PO[4]~7_combout\ $ (\DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # 
-- (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\SC|In_Reg|PO[4]~7_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # 
-- (!\SC|In_Reg|PO[4]~7_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[4]~7_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X35_Y26_N24
\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\SC|In_Reg|PO[5]~9_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\SC|In_Reg|PO[5]~9_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) # (!\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & (\SC|In_Reg|PO[5]~9_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\SC|In_Reg|PO[5]~9_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datab => \SC|In_Reg|PO[5]~9_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X35_Y26_N26
\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X35_Y28_N0
\DUT|Div0|auto_generated|divider|divider|StageOut[45]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ = (\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\);

-- Location: LCCOMB_X36_Y27_N12
\SC|In_Reg|PO[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[6]~11_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(6),
	combout => \SC|In_Reg|PO[6]~11_combout\);

-- Location: LCCOMB_X35_Y28_N26
\DUT|Div0|auto_generated|divider|divider|StageOut[44]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\);

-- Location: LCCOMB_X35_Y26_N0
\DUT|Div0|auto_generated|divider|divider|StageOut[43]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LCCOMB_X35_Y26_N2
\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\);

-- Location: LCCOMB_X35_Y28_N28
\DUT|Div0|auto_generated|divider|divider|StageOut[41]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ = (\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\);

-- Location: LCCOMB_X35_Y28_N30
\DUT|Div0|auto_generated|divider|divider|StageOut[40]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (((\SC|In_Reg|PO[10]~10_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & ((\SC|In_Reg|PO[10]~10_combout\))) # (!\DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\ & 
-- (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \SC|In_Reg|PO[10]~10_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[45]~14_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\);

-- Location: LCCOMB_X30_Y25_N26
\SC|In_Reg|L2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~20_combout\ = (!\TRST~input_o\ & \SC|In_Reg|L1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datac => \SC|In_Reg|L1\(9),
	combout => \SC|In_Reg|L2~20_combout\);

-- Location: FF_X30_Y25_N27
\SC|In_Reg|L2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~20_combout\,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(9));

-- Location: LCCOMB_X26_Y25_N16
\SC|In_Reg|PO[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[9]~12_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(9),
	combout => \SC|In_Reg|PO[9]~12_combout\);

-- Location: LCCOMB_X35_Y28_N4
\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\SC|In_Reg|PO[9]~12_combout\ & ((GND) # (!\SC|In_Reg|PO[0]~2_combout\))) # (!\SC|In_Reg|PO[9]~12_combout\ & (\SC|In_Reg|PO[0]~2_combout\ $ (GND)))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\SC|In_Reg|PO[9]~12_combout\) # (!\SC|In_Reg|PO[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[9]~12_combout\,
	datab => \SC|In_Reg|PO[0]~2_combout\,
	datad => VCC,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X35_Y28_N6
\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) & 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\DUT|Mult0|auto_generated|le3a\(5) & (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # (!\DUT|Mult0|auto_generated|le3a\(5) & 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & (\DUT|Mult0|auto_generated|le3a\(5) & !\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5)) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datab => \DUT|Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X35_Y28_N8
\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\SC|In_Reg|PO[2]~1_combout\ $ (\DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # 
-- (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\SC|In_Reg|PO[2]~1_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # 
-- (!\SC|In_Reg|PO[2]~1_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[2]~1_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X35_Y28_N10
\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\SC|In_Reg|PO[3]~0_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))))) # (!\SC|In_Reg|PO[3]~0_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ 
-- & (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\SC|In_Reg|PO[3]~0_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\))) # 
-- (!\SC|In_Reg|PO[3]~0_combout\ & (!\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[3]~0_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X35_Y28_N12
\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\SC|In_Reg|PO[4]~7_combout\ $ (\DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # 
-- (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\SC|In_Reg|PO[4]~7_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # 
-- (!\SC|In_Reg|PO[4]~7_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[4]~7_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X35_Y28_N14
\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\SC|In_Reg|PO[5]~9_combout\ & (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)))) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\SC|In_Reg|PO[5]~9_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))) # (!\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & (\SC|In_Reg|PO[5]~9_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\SC|In_Reg|PO[5]~9_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datab => \SC|In_Reg|PO[5]~9_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X35_Y28_N16
\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\SC|In_Reg|PO[6]~11_combout\ $ (\DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ $ (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) 
-- # (GND)
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\SC|In_Reg|PO[6]~11_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)) # 
-- (!\SC|In_Reg|PO[6]~11_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[6]~11_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X35_Y28_N18
\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X35_Y28_N24
\DUT|Div0|auto_generated|divider|divider|StageOut[54]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ = (\SC|In_Reg|PO[7]~13_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # (!\SC|In_Reg|PO[7]~13_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[7]~13_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\);

-- Location: LCCOMB_X35_Y28_N2
\DUT|Div0|auto_generated|divider|divider|StageOut[53]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\SC|In_Reg|PO[7]~13_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\)) # (!\SC|In_Reg|PO[7]~13_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datad => \SC|In_Reg|PO[7]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\);

-- Location: LCCOMB_X36_Y28_N8
\DUT|Div0|auto_generated|divider|divider|StageOut[52]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\SC|In_Reg|PO[7]~13_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\))) # (!\SC|In_Reg|PO[7]~13_combout\ & 
-- (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datad => \SC|In_Reg|PO[7]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\);

-- Location: LCCOMB_X36_Y28_N2
\DUT|Div0|auto_generated|divider|divider|StageOut[51]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\SC|In_Reg|PO[7]~13_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\))) # (!\SC|In_Reg|PO[7]~13_combout\ & 
-- (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datad => \SC|In_Reg|PO[7]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\);

-- Location: LCCOMB_X35_Y28_N20
\DUT|Div0|auto_generated|divider|divider|StageOut[50]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\)) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\SC|In_Reg|PO[7]~13_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\)) # (!\SC|In_Reg|PO[7]~13_combout\ & 
-- ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datad => \SC|In_Reg|PO[7]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\);

-- Location: LCCOMB_X35_Y28_N22
\DUT|Div0|auto_generated|divider|divider|StageOut[49]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((\DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\)))) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\SC|In_Reg|PO[7]~13_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\))) # (!\SC|In_Reg|PO[7]~13_combout\ & 
-- (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datad => \SC|In_Reg|PO[7]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\);

-- Location: LCCOMB_X36_Y28_N4
\DUT|Div0|auto_generated|divider|divider|StageOut[48]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ = (\SC|In_Reg|PO[7]~13_combout\ & (\SC|In_Reg|PO[9]~12_combout\)) # (!\SC|In_Reg|PO[7]~13_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\SC|In_Reg|PO[9]~12_combout\)) # (!\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[7]~13_combout\,
	datab => \SC|In_Reg|PO[9]~12_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\);

-- Location: LCCOMB_X36_Y28_N10
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\SC|In_Reg|PO[8]~3_combout\) # (!\SC|In_Reg|PO[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[0]~2_combout\,
	datab => \SC|In_Reg|PO[8]~3_combout\,
	datad => VCC,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X36_Y28_N12
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\DUT|Mult0|auto_generated|le3a\(5) & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\))) # (!\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ & 
-- !\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X36_Y28_N14
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\SC|In_Reg|PO[2]~1_combout\ & (\DUT|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ & 
-- !\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)) # (!\SC|In_Reg|PO[2]~1_combout\ & ((\DUT|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\) # 
-- (!\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[2]~1_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X36_Y28_N16
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\SC|In_Reg|PO[3]~0_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\))) # (!\SC|In_Reg|PO[3]~0_combout\ & (!\DUT|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[3]~0_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X36_Y28_N18
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\DUT|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\) # 
-- (!\SC|In_Reg|PO[4]~7_combout\))) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ & (!\SC|In_Reg|PO[4]~7_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\,
	datab => \SC|In_Reg|PO[4]~7_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X36_Y28_N20
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\SC|In_Reg|PO[5]~9_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\))) # (!\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[5]~9_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X36_Y28_N22
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\DUT|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\) # 
-- (!\SC|In_Reg|PO[6]~11_combout\))) # (!\DUT|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ & (!\SC|In_Reg|PO[6]~11_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\,
	datab => \SC|In_Reg|PO[6]~11_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X36_Y28_N24
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\SC|In_Reg|PO[7]~13_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\) # 
-- (!\DUT|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\))) # (!\SC|In_Reg|PO[7]~13_combout\ & (!\DUT|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ & !\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[7]~13_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\,
	datad => VCC,
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X36_Y28_N26
\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X27_Y29_N16
\DUT|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~0_combout\ = (\SC|In_Reg|PO[0]~2_combout\ & (\SC|In_Reg|PO[8]~3_combout\ $ (VCC))) # (!\SC|In_Reg|PO[0]~2_combout\ & ((\SC|In_Reg|PO[8]~3_combout\) # (GND)))
-- \DUT|Add1~1\ = CARRY((\SC|In_Reg|PO[8]~3_combout\) # (!\SC|In_Reg|PO[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[0]~2_combout\,
	datab => \SC|In_Reg|PO[8]~3_combout\,
	datad => VCC,
	combout => \DUT|Add1~0_combout\,
	cout => \DUT|Add1~1\);

-- Location: LCCOMB_X31_Y29_N28
\SC|Out_Reg|L1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~4_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & (\SC|Out_Reg|L1[3]~0_combout\)) # (!\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1[3]~0_combout\ & (!\DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)) # 
-- (!\SC|Out_Reg|L1[3]~0_combout\ & ((\DUT|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \SC|Out_Reg|L1[3]~0_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \DUT|Add1~0_combout\,
	combout => \SC|Out_Reg|L1~4_combout\);

-- Location: LCCOMB_X31_Y29_N30
\SC|Out_Reg|L1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~5_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1~4_combout\ & (\DUT|Mult0|auto_generated|op_3~0_combout\)) # (!\SC|Out_Reg|L1~4_combout\ & ((\DUT|Add0~0_combout\))))) # (!\SC|Out_Reg|L1[3]~1_combout\ & 
-- (((\SC|Out_Reg|L1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \DUT|Mult0|auto_generated|op_3~0_combout\,
	datac => \DUT|Add0~0_combout\,
	datad => \SC|Out_Reg|L1~4_combout\,
	combout => \SC|Out_Reg|L1~5_combout\);

-- Location: LCCOMB_X31_Y24_N2
\SC|cap_shft~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|cap_shft~0_combout\ = (!\TMS~input_o\ & (!\TRST~input_o\ & ((\SC|current_state.s_shift~q\) # (\SC|current_state.s_capture~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_shift~q\,
	datab => \TMS~input_o\,
	datac => \SC|current_state.s_capture~q\,
	datad => \TRST~input_o\,
	combout => \SC|cap_shft~0_combout\);

-- Location: LCCOMB_X26_Y25_N28
\DUT|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le3a\(1) = (\SC|In_Reg|PO[0]~2_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) $ (\SC|In_Reg|PO[9]~12_combout\)))) # (!\SC|In_Reg|PO[0]~2_combout\ & (!\SC|In_Reg|PO[8]~3_combout\ & (\DUT|Mult0|auto_generated|le3a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[8]~3_combout\,
	datab => \SC|In_Reg|PO[0]~2_combout\,
	datac => \DUT|Mult0|auto_generated|le3a\(5),
	datad => \SC|In_Reg|PO[9]~12_combout\,
	combout => \DUT|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X27_Y24_N4
\DUT|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_3~2_combout\ = (\DUT|Mult0|auto_generated|le3a\(1) & (!\DUT|Mult0|auto_generated|op_3~1\)) # (!\DUT|Mult0|auto_generated|le3a\(1) & ((\DUT|Mult0|auto_generated|op_3~1\) # (GND)))
-- \DUT|Mult0|auto_generated|op_3~3\ = CARRY((!\DUT|Mult0|auto_generated|op_3~1\) # (!\DUT|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_3~1\,
	combout => \DUT|Mult0|auto_generated|op_3~2_combout\,
	cout => \DUT|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X27_Y29_N2
\DUT|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~2_combout\ = (\SC|In_Reg|PO[9]~12_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) & (\DUT|Add0~1\ & VCC)) # (!\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Add0~1\)))) # (!\SC|In_Reg|PO[9]~12_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) & 
-- (!\DUT|Add0~1\)) # (!\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Add0~1\) # (GND)))))
-- \DUT|Add0~3\ = CARRY((\SC|In_Reg|PO[9]~12_combout\ & (!\DUT|Mult0|auto_generated|le3a\(5) & !\DUT|Add0~1\)) # (!\SC|In_Reg|PO[9]~12_combout\ & ((!\DUT|Add0~1\) # (!\DUT|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[9]~12_combout\,
	datab => \DUT|Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \DUT|Add0~1\,
	combout => \DUT|Add0~2_combout\,
	cout => \DUT|Add0~3\);

-- Location: LCCOMB_X27_Y29_N18
\DUT|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~2_combout\ = (\SC|In_Reg|PO[9]~12_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Add1~1\)) # (!\DUT|Mult0|auto_generated|le3a\(5) & (\DUT|Add1~1\ & VCC)))) # (!\SC|In_Reg|PO[9]~12_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5) & 
-- ((\DUT|Add1~1\) # (GND))) # (!\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Add1~1\))))
-- \DUT|Add1~3\ = CARRY((\SC|In_Reg|PO[9]~12_combout\ & (\DUT|Mult0|auto_generated|le3a\(5) & !\DUT|Add1~1\)) # (!\SC|In_Reg|PO[9]~12_combout\ & ((\DUT|Mult0|auto_generated|le3a\(5)) # (!\DUT|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[9]~12_combout\,
	datab => \DUT|Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \DUT|Add1~1\,
	combout => \DUT|Add1~2_combout\,
	cout => \DUT|Add1~3\);

-- Location: LCCOMB_X36_Y27_N0
\DUT|Div0|auto_generated|divider|divider|selnose[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose\(54) = (\DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\) # ((\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \SC|In_Reg|L2\(7),
	combout => \DUT|Div0|auto_generated|divider|divider|selnose\(54));

-- Location: LCCOMB_X31_Y29_N18
\SC|Out_Reg|L1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~8_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & (((\SC|Out_Reg|L1[3]~0_combout\)))) # (!\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1[3]~0_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|selnose\(54)))) # 
-- (!\SC|Out_Reg|L1[3]~0_combout\ & (\DUT|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \DUT|Add1~2_combout\,
	datac => \SC|Out_Reg|L1[3]~0_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose\(54),
	combout => \SC|Out_Reg|L1~8_combout\);

-- Location: LCCOMB_X31_Y29_N20
\SC|Out_Reg|L1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~9_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1~8_combout\ & (\DUT|Mult0|auto_generated|op_3~2_combout\)) # (!\SC|Out_Reg|L1~8_combout\ & ((\DUT|Add0~2_combout\))))) # (!\SC|Out_Reg|L1[3]~1_combout\ & 
-- (((\SC|Out_Reg|L1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|op_3~2_combout\,
	datab => \DUT|Add0~2_combout\,
	datac => \SC|Out_Reg|L1[3]~1_combout\,
	datad => \SC|Out_Reg|L1~8_combout\,
	combout => \SC|Out_Reg|L1~9_combout\);

-- Location: LCCOMB_X32_Y25_N4
\DUT|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal4~1_combout\ = ((!\SC|In_Reg|L2\(0) & (!\SC|In_Reg|L2\(1) & !\SC|In_Reg|L2\(6)))) # (!\SC|sel_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(0),
	datab => \SC|sel_reg~0_combout\,
	datac => \SC|In_Reg|L2\(1),
	datad => \SC|In_Reg|L2\(6),
	combout => \DUT|Equal4~1_combout\);

-- Location: LCCOMB_X36_Y27_N8
\DUT|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal4~0_combout\ = ((!\SC|In_Reg|L2\(4) & (!\SC|In_Reg|L2\(5) & !\SC|In_Reg|L2\(7)))) # (!\SC|sel_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(4),
	datab => \SC|In_Reg|L2\(5),
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(7),
	combout => \DUT|Equal4~0_combout\);

-- Location: LCCOMB_X32_Y25_N30
\DUT|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal4~2_combout\ = (!\SC|In_Reg|PO[2]~1_combout\ & (!\SC|In_Reg|PO[3]~0_combout\ & (\DUT|Equal4~1_combout\ & \DUT|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[2]~1_combout\,
	datab => \SC|In_Reg|PO[3]~0_combout\,
	datac => \DUT|Equal4~1_combout\,
	datad => \DUT|Equal4~0_combout\,
	combout => \DUT|Equal4~2_combout\);

-- Location: LCCOMB_X35_Y24_N0
\SC|Out_Reg|L1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1[3]~2_combout\ = (!\SC|Selector3~0_combout\ & (!\SC|Out_Reg|L1[3]~1_combout\ & \SC|Out_Reg|L1[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Selector3~0_combout\,
	datac => \SC|Out_Reg|L1[3]~1_combout\,
	datad => \SC|Out_Reg|L1[3]~0_combout\,
	combout => \SC|Out_Reg|L1[3]~2_combout\);

-- Location: LCCOMB_X34_Y25_N26
\DUT|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|process_0~1_combout\ = ((\SC|In_Reg|L2\(17)) # ((\SC|In_Reg|L2\(16)) # (!\DUT|process_0~0_combout\))) # (!\SC|In_Reg|L2\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(18),
	datab => \SC|In_Reg|L2\(17),
	datac => \SC|In_Reg|L2\(16),
	datad => \DUT|process_0~0_combout\,
	combout => \DUT|process_0~1_combout\);

-- Location: LCCOMB_X35_Y24_N26
\SC|Out_Reg|L1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1[3]~3_combout\ = (\TRST~input_o\) # ((\SC|Out_Reg|L1[3]~2_combout\ & ((\DUT|Equal4~2_combout\) # (\DUT|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Equal4~2_combout\,
	datab => \SC|Out_Reg|L1[3]~2_combout\,
	datac => \DUT|process_0~1_combout\,
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1[3]~3_combout\);

-- Location: LCCOMB_X32_Y25_N12
\DUT|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|cs2a[1]~0_combout\ = (\SC|sel_reg~0_combout\ & (\SC|In_Reg|L2\(2) $ (\SC|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(2),
	datab => \SC|sel_reg~0_combout\,
	datac => \SC|In_Reg|L2\(1),
	combout => \DUT|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X32_Y25_N2
\DUT|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le4a\(5) = (\SC|sel_reg~0_combout\ & (\SC|In_Reg|L2\(3) $ (((\SC|In_Reg|L2\(2) & \SC|In_Reg|L2\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(2),
	datab => \SC|sel_reg~0_combout\,
	datac => \SC|In_Reg|L2\(1),
	datad => \SC|In_Reg|L2\(3),
	combout => \DUT|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X26_Y25_N12
\DUT|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le4a\(0) = \DUT|Mult0|auto_generated|le4a\(5) $ (((\DUT|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SC|In_Reg|L2\(8) & \SC|sel_reg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SC|In_Reg|L2\(8),
	datac => \SC|sel_reg~0_combout\,
	datad => \DUT|Mult0|auto_generated|le4a\(5),
	combout => \DUT|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X26_Y25_N30
\DUT|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le3a\(2) = (\SC|In_Reg|PO[0]~2_combout\ & (\DUT|Mult0|auto_generated|le3a\(5) $ ((\SC|In_Reg|PO[10]~10_combout\)))) # (!\SC|In_Reg|PO[0]~2_combout\ & (\DUT|Mult0|auto_generated|le3a\(5) & ((!\SC|In_Reg|PO[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \SC|In_Reg|PO[0]~2_combout\,
	datac => \SC|In_Reg|PO[10]~10_combout\,
	datad => \SC|In_Reg|PO[9]~12_combout\,
	combout => \DUT|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X27_Y24_N20
\DUT|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_1~0_combout\ = (\DUT|Mult0|auto_generated|le3a\(2) & (\DUT|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\DUT|Mult0|auto_generated|le3a\(2) & (\DUT|Mult0|auto_generated|le4a\(5) & VCC))
-- \DUT|Mult0|auto_generated|op_1~1\ = CARRY((\DUT|Mult0|auto_generated|le3a\(2) & \DUT|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(2),
	datab => \DUT|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \DUT|Mult0|auto_generated|op_1~0_combout\,
	cout => \DUT|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X27_Y24_N6
\DUT|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_3~4_combout\ = ((\DUT|Mult0|auto_generated|le4a\(0) $ (\DUT|Mult0|auto_generated|op_1~0_combout\ $ (!\DUT|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \DUT|Mult0|auto_generated|op_3~5\ = CARRY((\DUT|Mult0|auto_generated|le4a\(0) & ((\DUT|Mult0|auto_generated|op_1~0_combout\) # (!\DUT|Mult0|auto_generated|op_3~3\))) # (!\DUT|Mult0|auto_generated|le4a\(0) & (\DUT|Mult0|auto_generated|op_1~0_combout\ & 
-- !\DUT|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le4a\(0),
	datab => \DUT|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_3~3\,
	combout => \DUT|Mult0|auto_generated|op_3~4_combout\,
	cout => \DUT|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X27_Y29_N4
\DUT|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~4_combout\ = ((\SC|In_Reg|PO[10]~10_combout\ $ (\SC|In_Reg|PO[2]~1_combout\ $ (!\DUT|Add0~3\)))) # (GND)
-- \DUT|Add0~5\ = CARRY((\SC|In_Reg|PO[10]~10_combout\ & ((\SC|In_Reg|PO[2]~1_combout\) # (!\DUT|Add0~3\))) # (!\SC|In_Reg|PO[10]~10_combout\ & (\SC|In_Reg|PO[2]~1_combout\ & !\DUT|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[10]~10_combout\,
	datab => \SC|In_Reg|PO[2]~1_combout\,
	datad => VCC,
	cin => \DUT|Add0~3\,
	combout => \DUT|Add0~4_combout\,
	cout => \DUT|Add0~5\);

-- Location: LCCOMB_X27_Y29_N20
\DUT|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~4_combout\ = ((\SC|In_Reg|PO[10]~10_combout\ $ (\SC|In_Reg|PO[2]~1_combout\ $ (\DUT|Add1~3\)))) # (GND)
-- \DUT|Add1~5\ = CARRY((\SC|In_Reg|PO[10]~10_combout\ & ((!\DUT|Add1~3\) # (!\SC|In_Reg|PO[2]~1_combout\))) # (!\SC|In_Reg|PO[10]~10_combout\ & (!\SC|In_Reg|PO[2]~1_combout\ & !\DUT|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[10]~10_combout\,
	datab => \SC|In_Reg|PO[2]~1_combout\,
	datad => VCC,
	cin => \DUT|Add1~3\,
	combout => \DUT|Add1~4_combout\,
	cout => \DUT|Add1~5\);

-- Location: LCCOMB_X31_Y29_N16
\SC|Out_Reg|L1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~11_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & ((\DUT|Add0~4_combout\) # ((\SC|Out_Reg|L1[3]~0_combout\)))) # (!\SC|Out_Reg|L1[3]~1_combout\ & (((!\SC|Out_Reg|L1[3]~0_combout\ & \DUT|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \DUT|Add0~4_combout\,
	datac => \SC|Out_Reg|L1[3]~0_combout\,
	datad => \DUT|Add1~4_combout\,
	combout => \SC|Out_Reg|L1~11_combout\);

-- Location: LCCOMB_X36_Y27_N2
\DUT|Div0|auto_generated|divider|divider|selnose[45]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[45]~17_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\) # ((\SC|sel_reg~0_combout\ & ((\SC|In_Reg|L2\(6)) # (\SC|In_Reg|L2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datab => \SC|In_Reg|L2\(6),
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \SC|In_Reg|L2\(7),
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[45]~17_combout\);

-- Location: LCCOMB_X31_Y29_N26
\SC|Out_Reg|L1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~12_combout\ = (\SC|Out_Reg|L1~11_combout\ & ((\DUT|Mult0|auto_generated|op_3~4_combout\) # ((!\SC|Out_Reg|L1[3]~0_combout\)))) # (!\SC|Out_Reg|L1~11_combout\ & (((\SC|Out_Reg|L1[3]~0_combout\ & 
-- !\DUT|Div0|auto_generated|divider|divider|selnose[45]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|op_3~4_combout\,
	datab => \SC|Out_Reg|L1~11_combout\,
	datac => \SC|Out_Reg|L1[3]~0_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[45]~17_combout\,
	combout => \SC|Out_Reg|L1~12_combout\);

-- Location: LCCOMB_X26_Y25_N6
\DUT|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le4a\(4) = (\DUT|Mult0|auto_generated|le4a\(5) & ((\DUT|Mult0|auto_generated|cs2a[1]~0_combout\) # ((!\SC|sel_reg~0_combout\) # (!\SC|In_Reg|L2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SC|In_Reg|L2\(11),
	datac => \SC|sel_reg~0_combout\,
	datad => \DUT|Mult0|auto_generated|le4a\(5),
	combout => \DUT|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X27_Y24_N0
\DUT|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le5a\(2) = (\SC|In_Reg|PO[10]~10_combout\ & ((\SC|In_Reg|PO[3]~0_combout\) # ((\DUT|Mult0|auto_generated|le3a\(5) & \SC|In_Reg|PO[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \SC|In_Reg|PO[3]~0_combout\,
	datac => \SC|In_Reg|PO[10]~10_combout\,
	datad => \SC|In_Reg|PO[2]~1_combout\,
	combout => \DUT|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X36_Y28_N0
\DUT|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le5a\(1) = (\SC|In_Reg|PO[9]~12_combout\ & ((\SC|In_Reg|PO[3]~0_combout\) # ((\SC|In_Reg|PO[2]~1_combout\ & \DUT|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[3]~0_combout\,
	datab => \SC|In_Reg|PO[9]~12_combout\,
	datac => \SC|In_Reg|PO[2]~1_combout\,
	datad => \DUT|Mult0|auto_generated|le3a\(5),
	combout => \DUT|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X26_Y25_N26
\DUT|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le4a\(3) = (\DUT|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SC|In_Reg|PO[11]~8_combout\ $ (((\DUT|Mult0|auto_generated|le4a\(5)))))) # (!\DUT|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\SC|In_Reg|PO[10]~10_combout\ & 
-- \DUT|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SC|In_Reg|PO[11]~8_combout\,
	datac => \SC|In_Reg|PO[10]~10_combout\,
	datad => \DUT|Mult0|auto_generated|le4a\(5),
	combout => \DUT|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X26_Y25_N22
\DUT|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le4a\(2) = (\DUT|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\SC|In_Reg|PO[10]~10_combout\ $ (\DUT|Mult0|auto_generated|le4a\(5))))) # (!\DUT|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SC|In_Reg|PO[9]~12_combout\ & 
-- ((\DUT|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SC|In_Reg|PO[9]~12_combout\,
	datac => \SC|In_Reg|PO[10]~10_combout\,
	datad => \DUT|Mult0|auto_generated|le4a\(5),
	combout => \DUT|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X26_Y25_N20
\DUT|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le3a\(4) = (\SC|In_Reg|L2\(1) & (\SC|sel_reg~0_combout\ & ((\SC|In_Reg|L2\(0)) # (!\SC|In_Reg|L2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L2\(1),
	datab => \SC|In_Reg|L2\(11),
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(0),
	combout => \DUT|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X26_Y25_N8
\DUT|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le3a\(3) = (\SC|In_Reg|PO[0]~2_combout\ & (\DUT|Mult0|auto_generated|le3a\(5) $ (((\SC|In_Reg|PO[11]~8_combout\))))) # (!\SC|In_Reg|PO[0]~2_combout\ & (\DUT|Mult0|auto_generated|le3a\(5) & (!\SC|In_Reg|PO[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \SC|In_Reg|PO[10]~10_combout\,
	datac => \SC|In_Reg|PO[11]~8_combout\,
	datad => \SC|In_Reg|PO[0]~2_combout\,
	combout => \DUT|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X27_Y24_N22
\DUT|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_1~2_combout\ = (\DUT|Mult0|auto_generated|le3a\(3) & (!\DUT|Mult0|auto_generated|op_1~1\)) # (!\DUT|Mult0|auto_generated|le3a\(3) & ((\DUT|Mult0|auto_generated|op_1~1\) # (GND)))
-- \DUT|Mult0|auto_generated|op_1~3\ = CARRY((!\DUT|Mult0|auto_generated|op_1~1\) # (!\DUT|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_1~1\,
	combout => \DUT|Mult0|auto_generated|op_1~2_combout\,
	cout => \DUT|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X27_Y24_N24
\DUT|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_1~4_combout\ = ((\DUT|Mult0|auto_generated|le4a\(2) $ (\DUT|Mult0|auto_generated|le3a\(4) $ (!\DUT|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \DUT|Mult0|auto_generated|op_1~5\ = CARRY((\DUT|Mult0|auto_generated|le4a\(2) & ((\DUT|Mult0|auto_generated|le3a\(4)) # (!\DUT|Mult0|auto_generated|op_1~3\))) # (!\DUT|Mult0|auto_generated|le4a\(2) & (\DUT|Mult0|auto_generated|le3a\(4) & 
-- !\DUT|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le4a\(2),
	datab => \DUT|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_1~3\,
	combout => \DUT|Mult0|auto_generated|op_1~4_combout\,
	cout => \DUT|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X27_Y24_N26
\DUT|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_1~6_combout\ = (\DUT|Mult0|auto_generated|le5a\(1) & ((\DUT|Mult0|auto_generated|le4a\(3) & (\DUT|Mult0|auto_generated|op_1~5\ & VCC)) # (!\DUT|Mult0|auto_generated|le4a\(3) & (!\DUT|Mult0|auto_generated|op_1~5\)))) # 
-- (!\DUT|Mult0|auto_generated|le5a\(1) & ((\DUT|Mult0|auto_generated|le4a\(3) & (!\DUT|Mult0|auto_generated|op_1~5\)) # (!\DUT|Mult0|auto_generated|le4a\(3) & ((\DUT|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \DUT|Mult0|auto_generated|op_1~7\ = CARRY((\DUT|Mult0|auto_generated|le5a\(1) & (!\DUT|Mult0|auto_generated|le4a\(3) & !\DUT|Mult0|auto_generated|op_1~5\)) # (!\DUT|Mult0|auto_generated|le5a\(1) & ((!\DUT|Mult0|auto_generated|op_1~5\) # 
-- (!\DUT|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le5a\(1),
	datab => \DUT|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_1~5\,
	combout => \DUT|Mult0|auto_generated|op_1~6_combout\,
	cout => \DUT|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X27_Y24_N28
\DUT|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_1~8_combout\ = ((\DUT|Mult0|auto_generated|le4a\(4) $ (\DUT|Mult0|auto_generated|le5a\(2) $ (!\DUT|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \DUT|Mult0|auto_generated|op_1~9\ = CARRY((\DUT|Mult0|auto_generated|le4a\(4) & ((\DUT|Mult0|auto_generated|le5a\(2)) # (!\DUT|Mult0|auto_generated|op_1~7\))) # (!\DUT|Mult0|auto_generated|le4a\(4) & (\DUT|Mult0|auto_generated|le5a\(2) & 
-- !\DUT|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le4a\(4),
	datab => \DUT|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_1~7\,
	combout => \DUT|Mult0|auto_generated|op_1~8_combout\,
	cout => \DUT|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X36_Y28_N30
\DUT|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le5a\(0) = (\SC|In_Reg|PO[8]~3_combout\ & ((\SC|In_Reg|PO[3]~0_combout\) # ((\SC|In_Reg|PO[2]~1_combout\ & \DUT|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[3]~0_combout\,
	datab => \SC|In_Reg|PO[8]~3_combout\,
	datac => \SC|In_Reg|PO[2]~1_combout\,
	datad => \DUT|Mult0|auto_generated|le3a\(5),
	combout => \DUT|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X26_Y25_N2
\DUT|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le4a\(1) = (\DUT|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\SC|In_Reg|PO[9]~12_combout\ $ (\DUT|Mult0|auto_generated|le4a\(5))))) # (!\DUT|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SC|In_Reg|PO[8]~3_combout\ & 
-- ((\DUT|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[8]~3_combout\,
	datab => \SC|In_Reg|PO[9]~12_combout\,
	datac => \DUT|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \DUT|Mult0|auto_generated|le4a\(5),
	combout => \DUT|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X27_Y24_N8
\DUT|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_3~6_combout\ = (\DUT|Mult0|auto_generated|op_1~2_combout\ & ((\DUT|Mult0|auto_generated|le4a\(1) & (\DUT|Mult0|auto_generated|op_3~5\ & VCC)) # (!\DUT|Mult0|auto_generated|le4a\(1) & (!\DUT|Mult0|auto_generated|op_3~5\)))) # 
-- (!\DUT|Mult0|auto_generated|op_1~2_combout\ & ((\DUT|Mult0|auto_generated|le4a\(1) & (!\DUT|Mult0|auto_generated|op_3~5\)) # (!\DUT|Mult0|auto_generated|le4a\(1) & ((\DUT|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \DUT|Mult0|auto_generated|op_3~7\ = CARRY((\DUT|Mult0|auto_generated|op_1~2_combout\ & (!\DUT|Mult0|auto_generated|le4a\(1) & !\DUT|Mult0|auto_generated|op_3~5\)) # (!\DUT|Mult0|auto_generated|op_1~2_combout\ & ((!\DUT|Mult0|auto_generated|op_3~5\) # 
-- (!\DUT|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|op_1~2_combout\,
	datab => \DUT|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_3~5\,
	combout => \DUT|Mult0|auto_generated|op_3~6_combout\,
	cout => \DUT|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X27_Y24_N10
\DUT|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_3~8_combout\ = ((\DUT|Mult0|auto_generated|le5a\(0) $ (\DUT|Mult0|auto_generated|op_1~4_combout\ $ (!\DUT|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \DUT|Mult0|auto_generated|op_3~9\ = CARRY((\DUT|Mult0|auto_generated|le5a\(0) & ((\DUT|Mult0|auto_generated|op_1~4_combout\) # (!\DUT|Mult0|auto_generated|op_3~7\))) # (!\DUT|Mult0|auto_generated|le5a\(0) & (\DUT|Mult0|auto_generated|op_1~4_combout\ & 
-- !\DUT|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le5a\(0),
	datab => \DUT|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_3~7\,
	combout => \DUT|Mult0|auto_generated|op_3~8_combout\,
	cout => \DUT|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X27_Y24_N12
\DUT|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_3~10_combout\ = (\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Mult0|auto_generated|op_1~6_combout\ & (\DUT|Mult0|auto_generated|op_3~9\ & VCC)) # (!\DUT|Mult0|auto_generated|op_1~6_combout\ & 
-- (!\DUT|Mult0|auto_generated|op_3~9\)))) # (!\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Mult0|auto_generated|op_1~6_combout\ & (!\DUT|Mult0|auto_generated|op_3~9\)) # (!\DUT|Mult0|auto_generated|op_1~6_combout\ & ((\DUT|Mult0|auto_generated|op_3~9\) # 
-- (GND)))))
-- \DUT|Mult0|auto_generated|op_3~11\ = CARRY((\DUT|Mult0|auto_generated|le3a\(5) & (!\DUT|Mult0|auto_generated|op_1~6_combout\ & !\DUT|Mult0|auto_generated|op_3~9\)) # (!\DUT|Mult0|auto_generated|le3a\(5) & ((!\DUT|Mult0|auto_generated|op_3~9\) # 
-- (!\DUT|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \DUT|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_3~9\,
	combout => \DUT|Mult0|auto_generated|op_3~10_combout\,
	cout => \DUT|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X27_Y24_N14
\DUT|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_3~12_combout\ = ((\DUT|Mult0|auto_generated|le3a\(5) $ (\DUT|Mult0|auto_generated|op_1~8_combout\ $ (!\DUT|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \DUT|Mult0|auto_generated|op_3~13\ = CARRY((\DUT|Mult0|auto_generated|le3a\(5) & ((\DUT|Mult0|auto_generated|op_1~8_combout\) # (!\DUT|Mult0|auto_generated|op_3~11\))) # (!\DUT|Mult0|auto_generated|le3a\(5) & (\DUT|Mult0|auto_generated|op_1~8_combout\ & 
-- !\DUT|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \DUT|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \DUT|Mult0|auto_generated|op_3~11\,
	combout => \DUT|Mult0|auto_generated|op_3~12_combout\,
	cout => \DUT|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X26_Y25_N0
\SC|In_Reg|PO[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[14]~14_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(14),
	combout => \SC|In_Reg|PO[14]~14_combout\);

-- Location: LCCOMB_X27_Y29_N22
\DUT|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~6_combout\ = (\SC|In_Reg|PO[3]~0_combout\ & ((\SC|In_Reg|PO[11]~8_combout\ & (!\DUT|Add1~5\)) # (!\SC|In_Reg|PO[11]~8_combout\ & ((\DUT|Add1~5\) # (GND))))) # (!\SC|In_Reg|PO[3]~0_combout\ & ((\SC|In_Reg|PO[11]~8_combout\ & (\DUT|Add1~5\ & VCC)) 
-- # (!\SC|In_Reg|PO[11]~8_combout\ & (!\DUT|Add1~5\))))
-- \DUT|Add1~7\ = CARRY((\SC|In_Reg|PO[3]~0_combout\ & ((!\DUT|Add1~5\) # (!\SC|In_Reg|PO[11]~8_combout\))) # (!\SC|In_Reg|PO[3]~0_combout\ & (!\SC|In_Reg|PO[11]~8_combout\ & !\DUT|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[3]~0_combout\,
	datab => \SC|In_Reg|PO[11]~8_combout\,
	datad => VCC,
	cin => \DUT|Add1~5\,
	combout => \DUT|Add1~6_combout\,
	cout => \DUT|Add1~7\);

-- Location: LCCOMB_X27_Y29_N24
\DUT|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~8_combout\ = ((\SC|In_Reg|PO[12]~6_combout\ $ (\SC|In_Reg|PO[4]~7_combout\ $ (\DUT|Add1~7\)))) # (GND)
-- \DUT|Add1~9\ = CARRY((\SC|In_Reg|PO[12]~6_combout\ & ((!\DUT|Add1~7\) # (!\SC|In_Reg|PO[4]~7_combout\))) # (!\SC|In_Reg|PO[12]~6_combout\ & (!\SC|In_Reg|PO[4]~7_combout\ & !\DUT|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[12]~6_combout\,
	datab => \SC|In_Reg|PO[4]~7_combout\,
	datad => VCC,
	cin => \DUT|Add1~7\,
	combout => \DUT|Add1~8_combout\,
	cout => \DUT|Add1~9\);

-- Location: LCCOMB_X27_Y29_N26
\DUT|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~10_combout\ = (\SC|In_Reg|PO[13]~5_combout\ & ((\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Add1~9\)) # (!\SC|In_Reg|PO[5]~9_combout\ & (\DUT|Add1~9\ & VCC)))) # (!\SC|In_Reg|PO[13]~5_combout\ & ((\SC|In_Reg|PO[5]~9_combout\ & ((\DUT|Add1~9\) # (GND))) 
-- # (!\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Add1~9\))))
-- \DUT|Add1~11\ = CARRY((\SC|In_Reg|PO[13]~5_combout\ & (\SC|In_Reg|PO[5]~9_combout\ & !\DUT|Add1~9\)) # (!\SC|In_Reg|PO[13]~5_combout\ & ((\SC|In_Reg|PO[5]~9_combout\) # (!\DUT|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[13]~5_combout\,
	datab => \SC|In_Reg|PO[5]~9_combout\,
	datad => VCC,
	cin => \DUT|Add1~9\,
	combout => \DUT|Add1~10_combout\,
	cout => \DUT|Add1~11\);

-- Location: LCCOMB_X27_Y29_N28
\DUT|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~12_combout\ = ((\SC|In_Reg|PO[14]~14_combout\ $ (\SC|In_Reg|PO[6]~11_combout\ $ (\DUT|Add1~11\)))) # (GND)
-- \DUT|Add1~13\ = CARRY((\SC|In_Reg|PO[14]~14_combout\ & ((!\DUT|Add1~11\) # (!\SC|In_Reg|PO[6]~11_combout\))) # (!\SC|In_Reg|PO[14]~14_combout\ & (!\SC|In_Reg|PO[6]~11_combout\ & !\DUT|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[14]~14_combout\,
	datab => \SC|In_Reg|PO[6]~11_combout\,
	datad => VCC,
	cin => \DUT|Add1~11\,
	combout => \DUT|Add1~12_combout\,
	cout => \DUT|Add1~13\);

-- Location: LCCOMB_X27_Y29_N6
\DUT|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~6_combout\ = (\SC|In_Reg|PO[3]~0_combout\ & ((\SC|In_Reg|PO[11]~8_combout\ & (\DUT|Add0~5\ & VCC)) # (!\SC|In_Reg|PO[11]~8_combout\ & (!\DUT|Add0~5\)))) # (!\SC|In_Reg|PO[3]~0_combout\ & ((\SC|In_Reg|PO[11]~8_combout\ & (!\DUT|Add0~5\)) # 
-- (!\SC|In_Reg|PO[11]~8_combout\ & ((\DUT|Add0~5\) # (GND)))))
-- \DUT|Add0~7\ = CARRY((\SC|In_Reg|PO[3]~0_combout\ & (!\SC|In_Reg|PO[11]~8_combout\ & !\DUT|Add0~5\)) # (!\SC|In_Reg|PO[3]~0_combout\ & ((!\DUT|Add0~5\) # (!\SC|In_Reg|PO[11]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[3]~0_combout\,
	datab => \SC|In_Reg|PO[11]~8_combout\,
	datad => VCC,
	cin => \DUT|Add0~5\,
	combout => \DUT|Add0~6_combout\,
	cout => \DUT|Add0~7\);

-- Location: LCCOMB_X27_Y29_N8
\DUT|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~8_combout\ = ((\SC|In_Reg|PO[12]~6_combout\ $ (\SC|In_Reg|PO[4]~7_combout\ $ (!\DUT|Add0~7\)))) # (GND)
-- \DUT|Add0~9\ = CARRY((\SC|In_Reg|PO[12]~6_combout\ & ((\SC|In_Reg|PO[4]~7_combout\) # (!\DUT|Add0~7\))) # (!\SC|In_Reg|PO[12]~6_combout\ & (\SC|In_Reg|PO[4]~7_combout\ & !\DUT|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[12]~6_combout\,
	datab => \SC|In_Reg|PO[4]~7_combout\,
	datad => VCC,
	cin => \DUT|Add0~7\,
	combout => \DUT|Add0~8_combout\,
	cout => \DUT|Add0~9\);

-- Location: LCCOMB_X27_Y29_N10
\DUT|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~10_combout\ = (\SC|In_Reg|PO[13]~5_combout\ & ((\SC|In_Reg|PO[5]~9_combout\ & (\DUT|Add0~9\ & VCC)) # (!\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Add0~9\)))) # (!\SC|In_Reg|PO[13]~5_combout\ & ((\SC|In_Reg|PO[5]~9_combout\ & (!\DUT|Add0~9\)) # 
-- (!\SC|In_Reg|PO[5]~9_combout\ & ((\DUT|Add0~9\) # (GND)))))
-- \DUT|Add0~11\ = CARRY((\SC|In_Reg|PO[13]~5_combout\ & (!\SC|In_Reg|PO[5]~9_combout\ & !\DUT|Add0~9\)) # (!\SC|In_Reg|PO[13]~5_combout\ & ((!\DUT|Add0~9\) # (!\SC|In_Reg|PO[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[13]~5_combout\,
	datab => \SC|In_Reg|PO[5]~9_combout\,
	datad => VCC,
	cin => \DUT|Add0~9\,
	combout => \DUT|Add0~10_combout\,
	cout => \DUT|Add0~11\);

-- Location: LCCOMB_X27_Y29_N12
\DUT|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~12_combout\ = ((\SC|In_Reg|PO[14]~14_combout\ $ (\SC|In_Reg|PO[6]~11_combout\ $ (!\DUT|Add0~11\)))) # (GND)
-- \DUT|Add0~13\ = CARRY((\SC|In_Reg|PO[14]~14_combout\ & ((\SC|In_Reg|PO[6]~11_combout\) # (!\DUT|Add0~11\))) # (!\SC|In_Reg|PO[14]~14_combout\ & (\SC|In_Reg|PO[6]~11_combout\ & !\DUT|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|PO[14]~14_combout\,
	datab => \SC|In_Reg|PO[6]~11_combout\,
	datad => VCC,
	cin => \DUT|Add0~11\,
	combout => \DUT|Add0~12_combout\,
	cout => \DUT|Add0~13\);

-- Location: LCCOMB_X23_Y26_N0
\SC|Out_Reg|L1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~23_combout\ = (\SC|Out_Reg|L1[3]~0_combout\ & (((\SC|Out_Reg|L1[3]~1_combout\)))) # (!\SC|Out_Reg|L1[3]~0_combout\ & ((\SC|Out_Reg|L1[3]~1_combout\ & ((\DUT|Add0~12_combout\))) # (!\SC|Out_Reg|L1[3]~1_combout\ & (\DUT|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Add1~12_combout\,
	datab => \DUT|Add0~12_combout\,
	datac => \SC|Out_Reg|L1[3]~0_combout\,
	datad => \SC|Out_Reg|L1[3]~1_combout\,
	combout => \SC|Out_Reg|L1~23_combout\);

-- Location: LCCOMB_X23_Y26_N2
\SC|Out_Reg|L1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~24_combout\ = (\SC|Out_Reg|L1[3]~0_combout\ & ((\SC|Out_Reg|L1~23_combout\ & ((\DUT|Mult0|auto_generated|op_3~12_combout\))) # (!\SC|Out_Reg|L1~23_combout\ & (!\DUT|Div0|auto_generated|divider|divider|selnose[9]~11_combout\)))) # 
-- (!\SC|Out_Reg|L1[3]~0_combout\ & (((\SC|Out_Reg|L1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[9]~11_combout\,
	datab => \DUT|Mult0|auto_generated|op_3~12_combout\,
	datac => \SC|Out_Reg|L1[3]~0_combout\,
	datad => \SC|Out_Reg|L1~23_combout\,
	combout => \SC|Out_Reg|L1~24_combout\);

-- Location: LCCOMB_X32_Y25_N22
\SC|In_Reg|PO[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[15]~15_combout\ = (\SC|sel_reg~0_combout\ & \SC|In_Reg|L2\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|sel_reg~0_combout\,
	datad => \SC|In_Reg|L2\(15),
	combout => \SC|In_Reg|PO[15]~15_combout\);

-- Location: LCCOMB_X27_Y29_N14
\DUT|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~14_combout\ = \SC|In_Reg|PO[15]~15_combout\ $ (\DUT|Add0~13\ $ (\SC|In_Reg|PO[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|PO[15]~15_combout\,
	datad => \SC|In_Reg|PO[7]~13_combout\,
	cin => \DUT|Add0~13\,
	combout => \DUT|Add0~14_combout\);

-- Location: LCCOMB_X27_Y24_N18
\DUT|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|le5a\(3) = (\SC|In_Reg|PO[11]~8_combout\ & ((\SC|In_Reg|PO[3]~0_combout\) # ((\DUT|Mult0|auto_generated|le3a\(5) & \SC|In_Reg|PO[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datab => \SC|In_Reg|PO[3]~0_combout\,
	datac => \SC|In_Reg|PO[11]~8_combout\,
	datad => \SC|In_Reg|PO[2]~1_combout\,
	combout => \DUT|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X27_Y24_N30
\DUT|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_1~10_combout\ = \DUT|Mult0|auto_generated|le5a\(3) $ (\DUT|Mult0|auto_generated|op_1~9\ $ (!\DUT|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|Mult0|auto_generated|le5a\(3),
	datad => \DUT|Mult0|auto_generated|le4a\(5),
	cin => \DUT|Mult0|auto_generated|op_1~9\,
	combout => \DUT|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X27_Y24_N16
\DUT|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mult0|auto_generated|op_3~14_combout\ = \DUT|Mult0|auto_generated|le3a\(5) $ (\DUT|Mult0|auto_generated|op_3~13\ $ (!\DUT|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|le3a\(5),
	datad => \DUT|Mult0|auto_generated|op_1~10_combout\,
	cin => \DUT|Mult0|auto_generated|op_3~13\,
	combout => \DUT|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X27_Y29_N30
\DUT|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~14_combout\ = \SC|In_Reg|PO[15]~15_combout\ $ (\DUT|Add1~13\ $ (!\SC|In_Reg|PO[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|PO[15]~15_combout\,
	datad => \SC|In_Reg|PO[7]~13_combout\,
	cin => \DUT|Add1~13\,
	combout => \DUT|Add1~14_combout\);

-- Location: LCCOMB_X35_Y24_N16
\DUT|Div0|auto_generated|divider|divider|selnose[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[0]~16_combout\ = (\SC|sel_reg~0_combout\ & \DUT|Div0|auto_generated|divider|divider|selnose[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[0]~9_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[0]~16_combout\);

-- Location: LCCOMB_X35_Y24_N10
\SC|Out_Reg|L1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~26_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & (\SC|Out_Reg|L1[3]~0_combout\)) # (!\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1[3]~0_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|selnose[0]~16_combout\))) # 
-- (!\SC|Out_Reg|L1[3]~0_combout\ & (\DUT|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \SC|Out_Reg|L1[3]~0_combout\,
	datac => \DUT|Add1~14_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[0]~16_combout\,
	combout => \SC|Out_Reg|L1~26_combout\);

-- Location: LCCOMB_X35_Y24_N4
\SC|Out_Reg|L1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~27_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1~26_combout\ & ((\DUT|Mult0|auto_generated|op_3~14_combout\))) # (!\SC|Out_Reg|L1~26_combout\ & (\DUT|Add0~14_combout\)))) # (!\SC|Out_Reg|L1[3]~1_combout\ & 
-- (((\SC|Out_Reg|L1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \DUT|Add0~14_combout\,
	datac => \DUT|Mult0|auto_generated|op_3~14_combout\,
	datad => \SC|Out_Reg|L1~26_combout\,
	combout => \SC|Out_Reg|L1~27_combout\);

-- Location: LCCOMB_X31_Y29_N22
\SC|Out_Reg|L1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~28_combout\ = (!\SC|Out_Reg|L1[3]~3_combout\ & ((\SC|cap_shft~0_combout\ & (\SC|In_Reg|L1\(0))) # (!\SC|cap_shft~0_combout\ & ((\SC|Out_Reg|L1~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|cap_shft~0_combout\,
	datab => \SC|Out_Reg|L1[3]~3_combout\,
	datac => \SC|In_Reg|L1\(0),
	datad => \SC|Out_Reg|L1~27_combout\,
	combout => \SC|Out_Reg|L1~28_combout\);

-- Location: FF_X31_Y29_N23
\SC|Out_Reg|L1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~28_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(7));

-- Location: LCCOMB_X31_Y29_N4
\SC|Out_Reg|L1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~25_combout\ = (!\SC|Out_Reg|L1[3]~3_combout\ & ((\SC|cap_shft~0_combout\ & ((\SC|Out_Reg|L1\(7)))) # (!\SC|cap_shft~0_combout\ & (\SC|Out_Reg|L1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1~24_combout\,
	datab => \SC|Out_Reg|L1[3]~3_combout\,
	datac => \SC|Out_Reg|L1\(7),
	datad => \SC|cap_shft~0_combout\,
	combout => \SC|Out_Reg|L1~25_combout\);

-- Location: FF_X31_Y29_N5
\SC|Out_Reg|L1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~25_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(6));

-- Location: LCCOMB_X35_Y24_N8
\DUT|Div0|auto_generated|divider|divider|selnose[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose\(18) = (\DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # ((\SC|sel_reg~0_combout\ & ((\SC|In_Reg|L2\(3)) # (!\DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datab => \SC|In_Reg|L2\(3),
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|selnose\(18));

-- Location: LCCOMB_X35_Y24_N20
\SC|Out_Reg|L1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~20_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & (\SC|Out_Reg|L1[3]~0_combout\)) # (!\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1[3]~0_combout\ & (!\DUT|Div0|auto_generated|divider|divider|selnose\(18))) # (!\SC|Out_Reg|L1[3]~0_combout\ & 
-- ((\DUT|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \SC|Out_Reg|L1[3]~0_combout\,
	datac => \DUT|Div0|auto_generated|divider|divider|selnose\(18),
	datad => \DUT|Add1~10_combout\,
	combout => \SC|Out_Reg|L1~20_combout\);

-- Location: LCCOMB_X35_Y24_N22
\SC|Out_Reg|L1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~21_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1~20_combout\ & (\DUT|Mult0|auto_generated|op_3~10_combout\)) # (!\SC|Out_Reg|L1~20_combout\ & ((\DUT|Add0~10_combout\))))) # (!\SC|Out_Reg|L1[3]~1_combout\ & 
-- (((\SC|Out_Reg|L1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \DUT|Mult0|auto_generated|op_3~10_combout\,
	datac => \DUT|Add0~10_combout\,
	datad => \SC|Out_Reg|L1~20_combout\,
	combout => \SC|Out_Reg|L1~21_combout\);

-- Location: LCCOMB_X31_Y29_N10
\SC|Out_Reg|L1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~22_combout\ = (!\SC|Out_Reg|L1[3]~3_combout\ & ((\SC|cap_shft~0_combout\ & (\SC|Out_Reg|L1\(6))) # (!\SC|cap_shft~0_combout\ & ((\SC|Out_Reg|L1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|cap_shft~0_combout\,
	datab => \SC|Out_Reg|L1[3]~3_combout\,
	datac => \SC|Out_Reg|L1\(6),
	datad => \SC|Out_Reg|L1~21_combout\,
	combout => \SC|Out_Reg|L1~22_combout\);

-- Location: FF_X31_Y29_N11
\SC|Out_Reg|L1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~22_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(5));

-- Location: LCCOMB_X35_Y24_N6
\DUT|Div0|auto_generated|divider|divider|selnose[27]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[27]~18_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # ((\SC|sel_reg~0_combout\ & !\DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|sel_reg~0_combout\,
	datab => \DUT|Div0|auto_generated|divider|divider|sel[18]~0_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[27]~18_combout\);

-- Location: LCCOMB_X35_Y24_N24
\SC|Out_Reg|L1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~17_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & (((\DUT|Add0~8_combout\) # (\SC|Out_Reg|L1[3]~0_combout\)))) # (!\SC|Out_Reg|L1[3]~1_combout\ & (\DUT|Add1~8_combout\ & ((!\SC|Out_Reg|L1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \DUT|Add1~8_combout\,
	datac => \DUT|Add0~8_combout\,
	datad => \SC|Out_Reg|L1[3]~0_combout\,
	combout => \SC|Out_Reg|L1~17_combout\);

-- Location: LCCOMB_X35_Y24_N2
\SC|Out_Reg|L1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~18_combout\ = (\SC|Out_Reg|L1[3]~0_combout\ & ((\SC|Out_Reg|L1~17_combout\ & ((\DUT|Mult0|auto_generated|op_3~8_combout\))) # (!\SC|Out_Reg|L1~17_combout\ & (!\DUT|Div0|auto_generated|divider|divider|selnose[27]~18_combout\)))) # 
-- (!\SC|Out_Reg|L1[3]~0_combout\ & (((\SC|Out_Reg|L1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Div0|auto_generated|divider|divider|selnose[27]~18_combout\,
	datab => \SC|Out_Reg|L1[3]~0_combout\,
	datac => \DUT|Mult0|auto_generated|op_3~8_combout\,
	datad => \SC|Out_Reg|L1~17_combout\,
	combout => \SC|Out_Reg|L1~18_combout\);

-- Location: LCCOMB_X31_Y29_N12
\SC|Out_Reg|L1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~19_combout\ = (!\SC|Out_Reg|L1[3]~3_combout\ & ((\SC|cap_shft~0_combout\ & (\SC|Out_Reg|L1\(5))) # (!\SC|cap_shft~0_combout\ & ((\SC|Out_Reg|L1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1\(5),
	datab => \SC|Out_Reg|L1~18_combout\,
	datac => \SC|Out_Reg|L1[3]~3_combout\,
	datad => \SC|cap_shft~0_combout\,
	combout => \SC|Out_Reg|L1~19_combout\);

-- Location: FF_X31_Y29_N13
\SC|Out_Reg|L1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~19_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(4));

-- Location: LCCOMB_X35_Y27_N18
\DUT|Div0|auto_generated|divider|divider|selnose[36]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Div0|auto_generated|divider|divider|selnose[36]~15_combout\ = (\DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\) # (\DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[36]~13_combout\,
	combout => \DUT|Div0|auto_generated|divider|divider|selnose[36]~15_combout\);

-- Location: LCCOMB_X31_Y29_N14
\SC|Out_Reg|L1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~14_combout\ = (\SC|Out_Reg|L1[3]~1_combout\ & (((\SC|Out_Reg|L1[3]~0_combout\)))) # (!\SC|Out_Reg|L1[3]~1_combout\ & ((\SC|Out_Reg|L1[3]~0_combout\ & ((!\DUT|Div0|auto_generated|divider|divider|selnose[36]~15_combout\))) # 
-- (!\SC|Out_Reg|L1[3]~0_combout\ & (\DUT|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1[3]~1_combout\,
	datab => \DUT|Add1~6_combout\,
	datac => \SC|Out_Reg|L1[3]~0_combout\,
	datad => \DUT|Div0|auto_generated|divider|divider|selnose[36]~15_combout\,
	combout => \SC|Out_Reg|L1~14_combout\);

-- Location: LCCOMB_X31_Y29_N8
\SC|Out_Reg|L1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~15_combout\ = (\SC|Out_Reg|L1~14_combout\ & ((\DUT|Mult0|auto_generated|op_3~6_combout\) # ((!\SC|Out_Reg|L1[3]~1_combout\)))) # (!\SC|Out_Reg|L1~14_combout\ & (((\SC|Out_Reg|L1[3]~1_combout\ & \DUT|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mult0|auto_generated|op_3~6_combout\,
	datab => \SC|Out_Reg|L1~14_combout\,
	datac => \SC|Out_Reg|L1[3]~1_combout\,
	datad => \DUT|Add0~6_combout\,
	combout => \SC|Out_Reg|L1~15_combout\);

-- Location: LCCOMB_X31_Y29_N6
\SC|Out_Reg|L1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~16_combout\ = (!\SC|Out_Reg|L1[3]~3_combout\ & ((\SC|cap_shft~0_combout\ & (\SC|Out_Reg|L1\(4))) # (!\SC|cap_shft~0_combout\ & ((\SC|Out_Reg|L1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1\(4),
	datab => \SC|Out_Reg|L1[3]~3_combout\,
	datac => \SC|Out_Reg|L1~15_combout\,
	datad => \SC|cap_shft~0_combout\,
	combout => \SC|Out_Reg|L1~16_combout\);

-- Location: FF_X31_Y29_N7
\SC|Out_Reg|L1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~16_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(3));

-- Location: LCCOMB_X31_Y29_N0
\SC|Out_Reg|L1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~13_combout\ = (!\SC|Out_Reg|L1[3]~3_combout\ & ((\SC|cap_shft~0_combout\ & ((\SC|Out_Reg|L1\(3)))) # (!\SC|cap_shft~0_combout\ & (\SC|Out_Reg|L1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|cap_shft~0_combout\,
	datab => \SC|Out_Reg|L1[3]~3_combout\,
	datac => \SC|Out_Reg|L1~12_combout\,
	datad => \SC|Out_Reg|L1\(3),
	combout => \SC|Out_Reg|L1~13_combout\);

-- Location: FF_X31_Y29_N1
\SC|Out_Reg|L1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~13_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(2));

-- Location: LCCOMB_X31_Y29_N2
\SC|Out_Reg|L1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~10_combout\ = (!\SC|Out_Reg|L1[3]~3_combout\ & ((\SC|cap_shft~0_combout\ & ((\SC|Out_Reg|L1\(2)))) # (!\SC|cap_shft~0_combout\ & (\SC|Out_Reg|L1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|cap_shft~0_combout\,
	datab => \SC|Out_Reg|L1~9_combout\,
	datac => \SC|Out_Reg|L1[3]~3_combout\,
	datad => \SC|Out_Reg|L1\(2),
	combout => \SC|Out_Reg|L1~10_combout\);

-- Location: FF_X31_Y29_N3
\SC|Out_Reg|L1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~10_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(1));

-- Location: LCCOMB_X31_Y29_N24
\SC|Out_Reg|L1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~6_combout\ = (!\SC|Out_Reg|L1[3]~3_combout\ & ((\SC|cap_shft~0_combout\ & ((\SC|Out_Reg|L1\(1)))) # (!\SC|cap_shft~0_combout\ & (\SC|Out_Reg|L1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1~5_combout\,
	datab => \SC|Out_Reg|L1\(1),
	datac => \SC|Out_Reg|L1[3]~3_combout\,
	datad => \SC|cap_shft~0_combout\,
	combout => \SC|Out_Reg|L1~6_combout\);

-- Location: FF_X31_Y29_N25
\SC|Out_Reg|L1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~6_combout\,
	ena => \SC|Out_Reg|L1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(0));

-- Location: LCCOMB_X31_Y24_N24
\SC|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|state~3_combout\ = (\SC|current_state.s_DR~q\) # (\SC|current_state.s_shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|current_state.s_DR~q\,
	datad => \SC|current_state.s_shift~q\,
	combout => \SC|state~3_combout\);

-- Location: LCCOMB_X31_Y26_N12
\SC|state[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|state\(0) = (\TRST~input_o\ & ((\SC|state\(0)))) # (!\TRST~input_o\ & (\SC|state~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|state~3_combout\,
	datac => \TRST~input_o\,
	datad => \SC|state\(0),
	combout => \SC|state\(0));

-- Location: LCCOMB_X31_Y24_N10
\SC|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|WideOr2~0_combout\ = (\SC|current_state.s_capture~q\) # (\SC|current_state.s_shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|current_state.s_capture~q\,
	datad => \SC|current_state.s_shift~q\,
	combout => \SC|WideOr2~0_combout\);

-- Location: LCCOMB_X34_Y25_N10
\SC|state[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|state\(1) = (\TRST~input_o\ & ((\SC|state\(1)))) # (!\TRST~input_o\ & (\SC|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|WideOr2~0_combout\,
	datac => \TRST~input_o\,
	datad => \SC|state\(1),
	combout => \SC|state\(1));

-- Location: LCCOMB_X35_Y24_N18
\SC|state[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|state\(2) = (\TRST~input_o\ & ((\SC|state\(2)))) # (!\TRST~input_o\ & (\SC|current_state.s_update~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TRST~input_o\,
	datac => \SC|current_state.s_update~q\,
	datad => \SC|state\(2),
	combout => \SC|state\(2));

-- Location: IOIBUF_X27_Y0_N22
\clock_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

ww_TDO <= \TDO~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;
END structure;


