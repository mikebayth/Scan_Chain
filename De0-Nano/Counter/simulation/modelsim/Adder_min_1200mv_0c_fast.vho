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

-- DATE "03/28/2015 12:18:17"

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

ENTITY 	Adder IS
    PORT (
	clock_50 : IN std_logic;
	TDI : IN std_logic;
	TDO : BUFFER std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic;
	LED : BUFFER std_logic_vector(7 DOWNTO 0);
	clk_out : BUFFER std_logic
	);
END Adder;

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
-- clk_out	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TMS	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRST	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TCLK	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TDI	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
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
SIGNAL ww_clk_out : std_logic;
SIGNAL \SC|In_Reg|PO[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SC|In_Reg|PO[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \TCLK~input_o\ : std_logic;
SIGNAL \TCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \TRST~input_o\ : std_logic;
SIGNAL \TMS~input_o\ : std_logic;
SIGNAL \SC|next_state.s_shift_138~combout\ : std_logic;
SIGNAL \SC|current_state.s_shift~q\ : std_logic;
SIGNAL \SC|In_Reg|L2~2_combout\ : std_logic;
SIGNAL \SC|next_state.s_update_131~combout\ : std_logic;
SIGNAL \SC|current_state.s_update~q\ : std_logic;
SIGNAL \SC|Selector0~0_combout\ : std_logic;
SIGNAL \SC|next_state.s_idle_159~combout\ : std_logic;
SIGNAL \SC|current_state.s_idle~0_combout\ : std_logic;
SIGNAL \SC|current_state.s_idle~q\ : std_logic;
SIGNAL \SC|next_state~1_combout\ : std_logic;
SIGNAL \SC|next_state.s_DR_152~combout\ : std_logic;
SIGNAL \SC|current_state.s_DR~q\ : std_logic;
SIGNAL \SC|next_state~0_combout\ : std_logic;
SIGNAL \SC|next_state.s_capture_145~combout\ : std_logic;
SIGNAL \SC|current_state.s_capture~q\ : std_logic;
SIGNAL \SC|Selector3~0_combout\ : std_logic;
SIGNAL \SC|Selector4~0_combout\ : std_logic;
SIGNAL \TDI~input_o\ : std_logic;
SIGNAL \SC|In_Reg|L1~1_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1[0]~1_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~3_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[1]~clkctrl_outclk\ : std_logic;
SIGNAL \DUT|cnt[0]~8_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[0]~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \DUT|cnt[0]~9\ : std_logic;
SIGNAL \DUT|cnt[1]~10_combout\ : std_logic;
SIGNAL \DUT|cnt[1]~11\ : std_logic;
SIGNAL \DUT|cnt[2]~12_combout\ : std_logic;
SIGNAL \DUT|cnt[2]~13\ : std_logic;
SIGNAL \DUT|cnt[3]~14_combout\ : std_logic;
SIGNAL \DUT|cnt[3]~15\ : std_logic;
SIGNAL \DUT|cnt[4]~16_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~8_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~7_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~6_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~5_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~4_combout\ : std_logic;
SIGNAL \DUT|cnt[4]~17\ : std_logic;
SIGNAL \DUT|cnt[5]~18_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~3_combout\ : std_logic;
SIGNAL \DUT|cnt[5]~19\ : std_logic;
SIGNAL \DUT|cnt[6]~20_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~2_combout\ : std_logic;
SIGNAL \DUT|cnt[6]~21\ : std_logic;
SIGNAL \DUT|cnt[7]~22_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~0_combout\ : std_logic;
SIGNAL \DUT|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SC|In_Reg|PO\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SC|In_Reg|L1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SC|In_Reg|L2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SC|Out_Reg|L1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_TRST~input_o\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
LED <= ww_LED;
clk_out <= ww_clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SC|In_Reg|PO[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SC|In_Reg|PO[0]~0_combout\);

\SC|In_Reg|PO[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SC|In_Reg|PO\(1));

\TCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \TCLK~input_o\);
\SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\ <= NOT \SC|In_Reg|PO[0]~0clkctrl_outclk\;
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
	i => \DUT|cnt\(0),
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
	i => \DUT|cnt\(1),
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
	i => \DUT|cnt\(2),
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
	i => \DUT|cnt\(3),
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
	i => \DUT|cnt\(4),
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
	i => \DUT|cnt\(5),
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
	i => \SC|In_Reg|PO[0]~0_combout\,
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
	i => \SC|In_Reg|PO\(1),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\clk_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SC|In_Reg|PO\(1),
	devoe => ww_devoe,
	o => \clk_out~output_o\);

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

-- Location: LCCOMB_X26_Y30_N6
\SC|next_state.s_shift_138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_shift_138~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_shift_138~combout\))) # (!\TRST~input_o\ & (\SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datac => \SC|Selector3~0_combout\,
	datad => \SC|next_state.s_shift_138~combout\,
	combout => \SC|next_state.s_shift_138~combout\);

-- Location: FF_X26_Y30_N7
\SC|current_state.s_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|next_state.s_shift_138~combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_shift~q\);

-- Location: LCCOMB_X24_Y32_N22
\SC|In_Reg|L2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~2_combout\ = (\TMS~input_o\ & ((\SC|current_state.s_capture~q\) # (\SC|current_state.s_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_capture~q\,
	datab => \SC|current_state.s_shift~q\,
	datac => \TMS~input_o\,
	combout => \SC|In_Reg|L2~2_combout\);

-- Location: LCCOMB_X26_Y30_N0
\SC|next_state.s_update_131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_update_131~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_update_131~combout\))) # (!\TRST~input_o\ & (\SC|In_Reg|L2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|In_Reg|L2~2_combout\,
	datad => \SC|next_state.s_update_131~combout\,
	combout => \SC|next_state.s_update_131~combout\);

-- Location: FF_X26_Y30_N1
\SC|current_state.s_update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|next_state.s_update_131~combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_update~q\);

-- Location: LCCOMB_X24_Y32_N16
\SC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Selector0~0_combout\ = (\SC|current_state.s_update~q\) # ((!\SC|current_state.s_idle~q\ & !\TMS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_update~q\,
	datab => \SC|current_state.s_idle~q\,
	datac => \TMS~input_o\,
	combout => \SC|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y32_N10
\SC|next_state.s_idle_159\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_idle_159~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_idle_159~combout\))) # (!\TRST~input_o\ & (\SC|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|Selector0~0_combout\,
	datad => \SC|next_state.s_idle_159~combout\,
	combout => \SC|next_state.s_idle_159~combout\);

-- Location: LCCOMB_X26_Y30_N10
\SC|current_state.s_idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|current_state.s_idle~0_combout\ = !\SC|next_state.s_idle_159~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SC|next_state.s_idle_159~combout\,
	combout => \SC|current_state.s_idle~0_combout\);

-- Location: FF_X26_Y30_N11
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

-- Location: LCCOMB_X24_Y32_N18
\SC|next_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state~1_combout\ = (\TMS~input_o\ & ((\SC|current_state.s_DR~q\) # (!\SC|current_state.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|current_state.s_idle~q\,
	datac => \TMS~input_o\,
	datad => \SC|current_state.s_DR~q\,
	combout => \SC|next_state~1_combout\);

-- Location: LCCOMB_X26_Y30_N24
\SC|next_state.s_DR_152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_DR_152~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_DR_152~combout\))) # (!\TRST~input_o\ & (\SC|next_state~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|next_state~1_combout\,
	datad => \SC|next_state.s_DR_152~combout\,
	combout => \SC|next_state.s_DR_152~combout\);

-- Location: FF_X26_Y30_N25
\SC|current_state.s_DR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|next_state.s_DR_152~combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_DR~q\);

-- Location: LCCOMB_X24_Y32_N26
\SC|next_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state~0_combout\ = (\TMS~input_o\) # (!\SC|current_state.s_DR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TMS~input_o\,
	datad => \SC|current_state.s_DR~q\,
	combout => \SC|next_state~0_combout\);

-- Location: LCCOMB_X26_Y30_N28
\SC|next_state.s_capture_145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|next_state.s_capture_145~combout\ = (\TRST~input_o\ & ((\SC|next_state.s_capture_145~combout\))) # (!\TRST~input_o\ & (!\SC|next_state~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datac => \SC|next_state~0_combout\,
	datad => \SC|next_state.s_capture_145~combout\,
	combout => \SC|next_state.s_capture_145~combout\);

-- Location: FF_X26_Y30_N29
\SC|current_state.s_capture\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|next_state.s_capture_145~combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_capture~q\);

-- Location: LCCOMB_X24_Y32_N20
\SC|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Selector3~0_combout\ = (!\TMS~input_o\ & ((\SC|current_state.s_capture~q\) # (\SC|current_state.s_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_capture~q\,
	datab => \SC|current_state.s_shift~q\,
	datac => \TMS~input_o\,
	combout => \SC|Selector3~0_combout\);

-- Location: LCCOMB_X24_Y32_N28
\SC|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Selector4~0_combout\ = (\SC|current_state.s_idle~q\ & (!\SC|current_state.s_update~q\)) # (!\SC|current_state.s_idle~q\ & ((\TMS~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_update~q\,
	datab => \SC|current_state.s_idle~q\,
	datac => \TMS~input_o\,
	combout => \SC|Selector4~0_combout\);

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

-- Location: LCCOMB_X24_Y32_N24
\SC|In_Reg|L1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~1_combout\ = (!\TRST~input_o\ & (\SC|Selector3~0_combout\ & \TDI~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|Selector3~0_combout\,
	datac => \TDI~input_o\,
	combout => \SC|In_Reg|L1~1_combout\);

-- Location: LCCOMB_X24_Y32_N14
\SC|Out_Reg|L1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1[0]~1_combout\ = (\TRST~input_o\) # ((!\SC|current_state.s_update~q\ & (\SC|current_state.s_idle~q\ & !\TMS~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_update~q\,
	datab => \SC|current_state.s_idle~q\,
	datac => \TMS~input_o\,
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1[0]~1_combout\);

-- Location: FF_X24_Y32_N25
\SC|In_Reg|L1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~1_combout\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(1));

-- Location: LCCOMB_X24_Y32_N30
\SC|In_Reg|L2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~3_combout\ = (\SC|In_Reg|L1\(1) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(1),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~3_combout\);

-- Location: LCCOMB_X24_Y32_N2
\SC|In_Reg|L2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~1_combout\ = (\TRST~input_o\) # ((\TMS~input_o\ & ((\SC|current_state.s_capture~q\) # (\SC|current_state.s_shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_capture~q\,
	datab => \SC|current_state.s_shift~q\,
	datac => \TMS~input_o\,
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~1_combout\);

-- Location: FF_X24_Y32_N7
\SC|In_Reg|L2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	asdata => \SC|In_Reg|L2~3_combout\,
	sload => VCC,
	ena => \SC|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(1));

-- Location: LCCOMB_X24_Y32_N6
\SC|In_Reg|PO[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO\(1) = LCELL((\SC|Selector4~0_combout\ & (\SC|In_Reg|L2\(1) & !\TRST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Selector4~0_combout\,
	datac => \SC|In_Reg|L2\(1),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|PO\(1));

-- Location: CLKCTRL_G14
\SC|In_Reg|PO[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SC|In_Reg|PO[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SC|In_Reg|PO[1]~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y30_N6
\DUT|cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[0]~8_combout\ = \DUT|cnt\(0) $ (VCC)
-- \DUT|cnt[0]~9\ = CARRY(\DUT|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(0),
	datad => VCC,
	combout => \DUT|cnt[0]~8_combout\,
	cout => \DUT|cnt[0]~9\);

-- Location: LCCOMB_X24_Y32_N0
\SC|In_Reg|L1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~0_combout\ = (!\TRST~input_o\ & (\SC|In_Reg|L1\(1) & \SC|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|In_Reg|L1\(1),
	datad => \SC|Selector3~0_combout\,
	combout => \SC|In_Reg|L1~0_combout\);

-- Location: FF_X24_Y32_N1
\SC|In_Reg|L1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L1~0_combout\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L1\(0));

-- Location: LCCOMB_X24_Y32_N8
\SC|In_Reg|L2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~0_combout\ = (\SC|In_Reg|L1\(0) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|In_Reg|L1\(0),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~0_combout\);

-- Location: FF_X24_Y32_N9
\SC|In_Reg|L2[0]\ : dffeas
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
	q => \SC|In_Reg|L2\(0));

-- Location: LCCOMB_X24_Y32_N12
\SC|In_Reg|PO[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[0]~0_combout\ = (\SC|Selector4~0_combout\ & (\SC|In_Reg|L2\(0) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Selector4~0_combout\,
	datac => \SC|In_Reg|L2\(0),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|PO[0]~0_combout\);

-- Location: CLKCTRL_G10
\SC|In_Reg|PO[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SC|In_Reg|PO[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SC|In_Reg|PO[0]~0clkctrl_outclk\);

-- Location: FF_X34_Y30_N7
\DUT|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt[0]~8_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(0));

-- Location: LCCOMB_X34_Y30_N8
\DUT|cnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[1]~10_combout\ = (\DUT|cnt\(1) & (!\DUT|cnt[0]~9\)) # (!\DUT|cnt\(1) & ((\DUT|cnt[0]~9\) # (GND)))
-- \DUT|cnt[1]~11\ = CARRY((!\DUT|cnt[0]~9\) # (!\DUT|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(1),
	datad => VCC,
	cin => \DUT|cnt[0]~9\,
	combout => \DUT|cnt[1]~10_combout\,
	cout => \DUT|cnt[1]~11\);

-- Location: FF_X34_Y30_N9
\DUT|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt[1]~10_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(1));

-- Location: LCCOMB_X34_Y30_N10
\DUT|cnt[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[2]~12_combout\ = (\DUT|cnt\(2) & (\DUT|cnt[1]~11\ $ (GND))) # (!\DUT|cnt\(2) & (!\DUT|cnt[1]~11\ & VCC))
-- \DUT|cnt[2]~13\ = CARRY((\DUT|cnt\(2) & !\DUT|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(2),
	datad => VCC,
	cin => \DUT|cnt[1]~11\,
	combout => \DUT|cnt[2]~12_combout\,
	cout => \DUT|cnt[2]~13\);

-- Location: FF_X34_Y30_N11
\DUT|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt[2]~12_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(2));

-- Location: LCCOMB_X34_Y30_N12
\DUT|cnt[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[3]~14_combout\ = (\DUT|cnt\(3) & (!\DUT|cnt[2]~13\)) # (!\DUT|cnt\(3) & ((\DUT|cnt[2]~13\) # (GND)))
-- \DUT|cnt[3]~15\ = CARRY((!\DUT|cnt[2]~13\) # (!\DUT|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(3),
	datad => VCC,
	cin => \DUT|cnt[2]~13\,
	combout => \DUT|cnt[3]~14_combout\,
	cout => \DUT|cnt[3]~15\);

-- Location: FF_X34_Y30_N13
\DUT|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt[3]~14_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(3));

-- Location: LCCOMB_X34_Y30_N14
\DUT|cnt[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[4]~16_combout\ = (\DUT|cnt\(4) & (\DUT|cnt[3]~15\ $ (GND))) # (!\DUT|cnt\(4) & (!\DUT|cnt[3]~15\ & VCC))
-- \DUT|cnt[4]~17\ = CARRY((\DUT|cnt\(4) & !\DUT|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(4),
	datad => VCC,
	cin => \DUT|cnt[3]~15\,
	combout => \DUT|cnt[4]~16_combout\,
	cout => \DUT|cnt[4]~17\);

-- Location: FF_X34_Y30_N15
\DUT|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt[4]~16_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(4));

-- Location: LCCOMB_X34_Y30_N30
\SC|Out_Reg|L1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~8_combout\ = (\SC|Selector3~0_combout\ & ((\TRST~input_o\ & (\DUT|cnt\(0))) # (!\TRST~input_o\ & ((\SC|In_Reg|L1\(0)))))) # (!\SC|Selector3~0_combout\ & (\DUT|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(0),
	datab => \SC|Selector3~0_combout\,
	datac => \SC|In_Reg|L1\(0),
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1~8_combout\);

-- Location: FF_X34_Y30_N31
\SC|Out_Reg|L1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~8_combout\,
	sclr => \TRST~input_o\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(7));

-- Location: LCCOMB_X34_Y30_N28
\SC|Out_Reg|L1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~7_combout\ = (\SC|Selector3~0_combout\ & ((\TRST~input_o\ & ((\DUT|cnt\(1)))) # (!\TRST~input_o\ & (\SC|Out_Reg|L1\(7))))) # (!\SC|Selector3~0_combout\ & (((\DUT|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1\(7),
	datab => \SC|Selector3~0_combout\,
	datac => \DUT|cnt\(1),
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1~7_combout\);

-- Location: FF_X34_Y30_N29
\SC|Out_Reg|L1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~7_combout\,
	sclr => \TRST~input_o\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(6));

-- Location: LCCOMB_X34_Y30_N26
\SC|Out_Reg|L1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~6_combout\ = (\SC|Selector3~0_combout\ & ((\TRST~input_o\ & (\DUT|cnt\(2))) # (!\TRST~input_o\ & ((\SC|Out_Reg|L1\(6)))))) # (!\SC|Selector3~0_combout\ & (\DUT|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(2),
	datab => \SC|Out_Reg|L1\(6),
	datac => \SC|Selector3~0_combout\,
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1~6_combout\);

-- Location: FF_X34_Y30_N27
\SC|Out_Reg|L1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~6_combout\,
	sclr => \TRST~input_o\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(5));

-- Location: LCCOMB_X34_Y30_N24
\SC|Out_Reg|L1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~5_combout\ = (\SC|Selector3~0_combout\ & ((\TRST~input_o\ & ((\DUT|cnt\(3)))) # (!\TRST~input_o\ & (\SC|Out_Reg|L1\(5))))) # (!\SC|Selector3~0_combout\ & (((\DUT|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1\(5),
	datab => \SC|Selector3~0_combout\,
	datac => \DUT|cnt\(3),
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1~5_combout\);

-- Location: FF_X34_Y30_N25
\SC|Out_Reg|L1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~5_combout\,
	sclr => \TRST~input_o\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(4));

-- Location: LCCOMB_X34_Y30_N22
\SC|Out_Reg|L1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~4_combout\ = (\TRST~input_o\ & (((\DUT|cnt\(4))))) # (!\TRST~input_o\ & ((\SC|Selector3~0_combout\ & ((\SC|Out_Reg|L1\(4)))) # (!\SC|Selector3~0_combout\ & (\DUT|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|Selector3~0_combout\,
	datac => \DUT|cnt\(4),
	datad => \SC|Out_Reg|L1\(4),
	combout => \SC|Out_Reg|L1~4_combout\);

-- Location: FF_X34_Y30_N23
\SC|Out_Reg|L1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~4_combout\,
	sclr => \TRST~input_o\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(3));

-- Location: LCCOMB_X34_Y30_N16
\DUT|cnt[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[5]~18_combout\ = (\DUT|cnt\(5) & (!\DUT|cnt[4]~17\)) # (!\DUT|cnt\(5) & ((\DUT|cnt[4]~17\) # (GND)))
-- \DUT|cnt[5]~19\ = CARRY((!\DUT|cnt[4]~17\) # (!\DUT|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(5),
	datad => VCC,
	cin => \DUT|cnt[4]~17\,
	combout => \DUT|cnt[5]~18_combout\,
	cout => \DUT|cnt[5]~19\);

-- Location: FF_X34_Y30_N17
\DUT|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt[5]~18_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(5));

-- Location: LCCOMB_X34_Y30_N4
\SC|Out_Reg|L1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~3_combout\ = (\SC|Selector3~0_combout\ & ((\TRST~input_o\ & ((\DUT|cnt\(5)))) # (!\TRST~input_o\ & (\SC|Out_Reg|L1\(3))))) # (!\SC|Selector3~0_combout\ & (((\DUT|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1\(3),
	datab => \DUT|cnt\(5),
	datac => \SC|Selector3~0_combout\,
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1~3_combout\);

-- Location: FF_X34_Y30_N5
\SC|Out_Reg|L1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~3_combout\,
	sclr => \TRST~input_o\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(2));

-- Location: LCCOMB_X34_Y30_N18
\DUT|cnt[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[6]~20_combout\ = (\DUT|cnt\(6) & (\DUT|cnt[5]~19\ $ (GND))) # (!\DUT|cnt\(6) & (!\DUT|cnt[5]~19\ & VCC))
-- \DUT|cnt[6]~21\ = CARRY((\DUT|cnt\(6) & !\DUT|cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(6),
	datad => VCC,
	cin => \DUT|cnt[5]~19\,
	combout => \DUT|cnt[6]~20_combout\,
	cout => \DUT|cnt[6]~21\);

-- Location: FF_X34_Y30_N19
\DUT|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt[6]~20_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(6));

-- Location: LCCOMB_X34_Y30_N2
\SC|Out_Reg|L1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~2_combout\ = (\TRST~input_o\ & (((\DUT|cnt\(6))))) # (!\TRST~input_o\ & ((\SC|Selector3~0_combout\ & (\SC|Out_Reg|L1\(2))) # (!\SC|Selector3~0_combout\ & ((\DUT|cnt\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|Selector3~0_combout\,
	datac => \SC|Out_Reg|L1\(2),
	datad => \DUT|cnt\(6),
	combout => \SC|Out_Reg|L1~2_combout\);

-- Location: FF_X34_Y30_N3
\SC|Out_Reg|L1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~2_combout\,
	sclr => \TRST~input_o\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(1));

-- Location: LCCOMB_X34_Y30_N20
\DUT|cnt[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[7]~22_combout\ = \DUT|cnt[6]~21\ $ (\DUT|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DUT|cnt\(7),
	cin => \DUT|cnt[6]~21\,
	combout => \DUT|cnt[7]~22_combout\);

-- Location: FF_X34_Y30_N21
\DUT|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt[7]~22_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(7));

-- Location: LCCOMB_X34_Y30_N0
\SC|Out_Reg|L1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~0_combout\ = (\TRST~input_o\ & (((\DUT|cnt\(7))))) # (!\TRST~input_o\ & ((\SC|Selector3~0_combout\ & (\SC|Out_Reg|L1\(1))) # (!\SC|Selector3~0_combout\ & ((\DUT|cnt\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~input_o\,
	datab => \SC|Out_Reg|L1\(1),
	datac => \SC|Selector3~0_combout\,
	datad => \DUT|cnt\(7),
	combout => \SC|Out_Reg|L1~0_combout\);

-- Location: FF_X34_Y30_N1
\SC|Out_Reg|L1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Out_Reg|L1~0_combout\,
	sclr => \TRST~input_o\,
	ena => \SC|Out_Reg|L1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|Out_Reg|L1\(0));

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

ww_clk_out <= \clk_out~output_o\;
END structure;


