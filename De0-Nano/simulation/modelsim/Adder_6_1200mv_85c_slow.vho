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

-- DATE "03/24/2015 15:50:16"

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
	TDO : OUT std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0)
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
-- TCLK	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TMS	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRST	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \TCLK~input_o\ : std_logic;
SIGNAL \TCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \TRST~input_o\ : std_logic;
SIGNAL \SC|current_state.s_shift~q\ : std_logic;
SIGNAL \TMS~input_o\ : std_logic;
SIGNAL \SC|TAP_Controller:next_state.s_update~0_combout\ : std_logic;
SIGNAL \SC|current_state.s_update~q\ : std_logic;
SIGNAL \SC|Selector0~0_combout\ : std_logic;
SIGNAL \SC|current_state.s_idle~q\ : std_logic;
SIGNAL \SC|TAP_Controller:next_state.s_DR~0_combout\ : std_logic;
SIGNAL \SC|current_state.s_DR~q\ : std_logic;
SIGNAL \SC|TAP_Controller:next_state.s_capture~0_combout\ : std_logic;
SIGNAL \SC|current_state.s_capture~q\ : std_logic;
SIGNAL \SC|Selector1~0_combout\ : std_logic;
SIGNAL \SC|Selector4~0_combout\ : std_logic;
SIGNAL \TDI~input_o\ : std_logic;
SIGNAL \SC|In_Reg|L1~1_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1[0]~1_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~2_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2[0]~1_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[1]~clkctrl_outclk\ : std_logic;
SIGNAL \DUT|Add0~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L1~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|L2~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[0]~0_combout\ : std_logic;
SIGNAL \SC|In_Reg|PO[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \DUT|Add0~1\ : std_logic;
SIGNAL \DUT|Add0~2_combout\ : std_logic;
SIGNAL \DUT|Add0~3\ : std_logic;
SIGNAL \DUT|Add0~4_combout\ : std_logic;
SIGNAL \DUT|Add0~5\ : std_logic;
SIGNAL \DUT|Add0~6_combout\ : std_logic;
SIGNAL \DUT|Equal0~1_combout\ : std_logic;
SIGNAL \DUT|Add0~7\ : std_logic;
SIGNAL \DUT|Add0~9\ : std_logic;
SIGNAL \DUT|Add0~10_combout\ : std_logic;
SIGNAL \DUT|Add0~11\ : std_logic;
SIGNAL \DUT|Add0~12_combout\ : std_logic;
SIGNAL \DUT|Add0~13\ : std_logic;
SIGNAL \DUT|Add0~14_combout\ : std_logic;
SIGNAL \DUT|Equal0~0_combout\ : std_logic;
SIGNAL \DUT|Add0~8_combout\ : std_logic;
SIGNAL \DUT|cnt~0_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~8_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~7_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~6_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~5_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~4_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~3_combout\ : std_logic;
SIGNAL \SC|Out_Reg|L1~2_combout\ : std_logic;
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
	i => \SC|In_Reg|PO\(1),
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

-- Location: FF_X35_Y33_N29
\SC|current_state.s_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Selector1~0_combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_shift~q\);

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

-- Location: LCCOMB_X35_Y33_N30
\SC|TAP_Controller:next_state.s_update~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|TAP_Controller:next_state.s_update~0_combout\ = (\TMS~input_o\ & ((\SC|current_state.s_shift~q\) # (\SC|current_state.s_capture~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|current_state.s_shift~q\,
	datac => \SC|current_state.s_capture~q\,
	datad => \TMS~input_o\,
	combout => \SC|TAP_Controller:next_state.s_update~0_combout\);

-- Location: FF_X35_Y33_N31
\SC|current_state.s_update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|TAP_Controller:next_state.s_update~0_combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_update~q\);

-- Location: LCCOMB_X35_Y33_N24
\SC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Selector0~0_combout\ = (!\SC|current_state.s_update~q\ & ((\SC|current_state.s_idle~q\) # (\TMS~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_update~q\,
	datac => \SC|current_state.s_idle~q\,
	datad => \TMS~input_o\,
	combout => \SC|Selector0~0_combout\);

-- Location: FF_X35_Y33_N25
\SC|current_state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|Selector0~0_combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_idle~q\);

-- Location: LCCOMB_X35_Y33_N10
\SC|TAP_Controller:next_state.s_DR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|TAP_Controller:next_state.s_DR~0_combout\ = (\TMS~input_o\ & ((\SC|current_state.s_DR~q\) # (!\SC|current_state.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|current_state.s_idle~q\,
	datac => \SC|current_state.s_DR~q\,
	datad => \TMS~input_o\,
	combout => \SC|TAP_Controller:next_state.s_DR~0_combout\);

-- Location: FF_X35_Y33_N11
\SC|current_state.s_DR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|TAP_Controller:next_state.s_DR~0_combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_DR~q\);

-- Location: LCCOMB_X35_Y33_N22
\SC|TAP_Controller:next_state.s_capture~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|TAP_Controller:next_state.s_capture~0_combout\ = (\SC|current_state.s_DR~q\ & !\TMS~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_DR~q\,
	datad => \TMS~input_o\,
	combout => \SC|TAP_Controller:next_state.s_capture~0_combout\);

-- Location: FF_X35_Y33_N23
\SC|current_state.s_capture\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|TAP_Controller:next_state.s_capture~0_combout\,
	clrn => \ALT_INV_TRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|current_state.s_capture~q\);

-- Location: LCCOMB_X35_Y33_N28
\SC|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Selector1~0_combout\ = (!\TMS~input_o\ & ((\SC|current_state.s_capture~q\) # (\SC|current_state.s_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|current_state.s_capture~q\,
	datac => \SC|current_state.s_shift~q\,
	datad => \TMS~input_o\,
	combout => \SC|Selector1~0_combout\);

-- Location: LCCOMB_X35_Y33_N26
\SC|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Selector4~0_combout\ = (\SC|current_state.s_idle~q\ & (!\SC|current_state.s_update~q\)) # (!\SC|current_state.s_idle~q\ & ((\TMS~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|current_state.s_idle~q\,
	datac => \SC|current_state.s_update~q\,
	datad => \TMS~input_o\,
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

-- Location: LCCOMB_X34_Y33_N26
\SC|In_Reg|L1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~1_combout\ = (!\TRST~input_o\ & (\TDI~input_o\ & \SC|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TRST~input_o\,
	datac => \TDI~input_o\,
	datad => \SC|Selector1~0_combout\,
	combout => \SC|In_Reg|L1~1_combout\);

-- Location: LCCOMB_X35_Y33_N8
\SC|Out_Reg|L1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1[0]~1_combout\ = (\TRST~input_o\) # ((!\TMS~input_o\ & (\SC|current_state.s_idle~q\ & !\SC|current_state.s_update~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~input_o\,
	datab => \SC|current_state.s_idle~q\,
	datac => \SC|current_state.s_update~q\,
	datad => \TRST~input_o\,
	combout => \SC|Out_Reg|L1[0]~1_combout\);

-- Location: FF_X34_Y33_N27
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

-- Location: LCCOMB_X34_Y33_N4
\SC|In_Reg|L2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~2_combout\ = (\SC|In_Reg|L1\(1) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|In_Reg|L1\(1),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~2_combout\);

-- Location: LCCOMB_X35_Y33_N6
\SC|In_Reg|L2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2[0]~1_combout\ = (\TRST~input_o\) # ((\TMS~input_o\ & ((\SC|current_state.s_shift~q\) # (\SC|current_state.s_capture~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~input_o\,
	datab => \SC|current_state.s_shift~q\,
	datac => \SC|current_state.s_capture~q\,
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2[0]~1_combout\);

-- Location: FF_X35_Y33_N5
\SC|In_Reg|L2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	asdata => \SC|In_Reg|L2~2_combout\,
	sload => VCC,
	ena => \SC|In_Reg|L2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(1));

-- Location: LCCOMB_X35_Y33_N4
\SC|In_Reg|PO[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO\(1) = LCELL((\SC|Selector4~0_combout\ & \SC|In_Reg|L2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Selector4~0_combout\,
	datac => \SC|In_Reg|L2\(1),
	combout => \SC|In_Reg|PO\(1));

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X39_Y33_N16
\DUT|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~0_combout\ = \DUT|cnt\(0) $ (VCC)
-- \DUT|Add0~1\ = CARRY(\DUT|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(0),
	datad => VCC,
	combout => \DUT|Add0~0_combout\,
	cout => \DUT|Add0~1\);

-- Location: LCCOMB_X34_Y33_N8
\SC|In_Reg|L1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L1~0_combout\ = (\SC|Selector1~0_combout\ & (\SC|In_Reg|L1\(1) & !\TRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Selector1~0_combout\,
	datac => \SC|In_Reg|L1\(1),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L1~0_combout\);

-- Location: FF_X34_Y33_N9
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

-- Location: LCCOMB_X35_Y33_N18
\SC|In_Reg|L2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|L2~0_combout\ = (\SC|In_Reg|L1\(0) & !\TRST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|In_Reg|L1\(0),
	datad => \TRST~input_o\,
	combout => \SC|In_Reg|L2~0_combout\);

-- Location: FF_X35_Y33_N19
\SC|In_Reg|L2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~inputclkctrl_outclk\,
	d => \SC|In_Reg|L2~0_combout\,
	ena => \SC|In_Reg|L2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|In_Reg|L2\(0));

-- Location: LCCOMB_X35_Y33_N12
\SC|In_Reg|PO[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|In_Reg|PO[0]~0_combout\ = (\SC|Selector4~0_combout\ & \SC|In_Reg|L2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|Selector4~0_combout\,
	datad => \SC|In_Reg|L2\(0),
	combout => \SC|In_Reg|PO[0]~0_combout\);

-- Location: CLKCTRL_G12
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

-- Location: FF_X39_Y33_N17
\DUT|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|Add0~0_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(0));

-- Location: LCCOMB_X39_Y33_N18
\DUT|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~2_combout\ = (\DUT|cnt\(1) & (!\DUT|Add0~1\)) # (!\DUT|cnt\(1) & ((\DUT|Add0~1\) # (GND)))
-- \DUT|Add0~3\ = CARRY((!\DUT|Add0~1\) # (!\DUT|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(1),
	datad => VCC,
	cin => \DUT|Add0~1\,
	combout => \DUT|Add0~2_combout\,
	cout => \DUT|Add0~3\);

-- Location: FF_X39_Y33_N19
\DUT|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|Add0~2_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(1));

-- Location: LCCOMB_X39_Y33_N20
\DUT|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~4_combout\ = (\DUT|cnt\(2) & (\DUT|Add0~3\ $ (GND))) # (!\DUT|cnt\(2) & (!\DUT|Add0~3\ & VCC))
-- \DUT|Add0~5\ = CARRY((\DUT|cnt\(2) & !\DUT|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(2),
	datad => VCC,
	cin => \DUT|Add0~3\,
	combout => \DUT|Add0~4_combout\,
	cout => \DUT|Add0~5\);

-- Location: FF_X39_Y33_N21
\DUT|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|Add0~4_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(2));

-- Location: LCCOMB_X39_Y33_N22
\DUT|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~6_combout\ = (\DUT|cnt\(3) & (!\DUT|Add0~5\)) # (!\DUT|cnt\(3) & ((\DUT|Add0~5\) # (GND)))
-- \DUT|Add0~7\ = CARRY((!\DUT|Add0~5\) # (!\DUT|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(3),
	datad => VCC,
	cin => \DUT|Add0~5\,
	combout => \DUT|Add0~6_combout\,
	cout => \DUT|Add0~7\);

-- Location: FF_X39_Y33_N23
\DUT|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|Add0~6_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(3));

-- Location: LCCOMB_X39_Y33_N12
\DUT|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal0~1_combout\ = (!\DUT|cnt\(4) & (\DUT|cnt\(2) & (\DUT|cnt\(3) & \DUT|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(4),
	datab => \DUT|cnt\(2),
	datac => \DUT|cnt\(3),
	datad => \DUT|cnt\(1),
	combout => \DUT|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y33_N24
\DUT|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~8_combout\ = (\DUT|cnt\(4) & (\DUT|Add0~7\ $ (GND))) # (!\DUT|cnt\(4) & (!\DUT|Add0~7\ & VCC))
-- \DUT|Add0~9\ = CARRY((\DUT|cnt\(4) & !\DUT|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(4),
	datad => VCC,
	cin => \DUT|Add0~7\,
	combout => \DUT|Add0~8_combout\,
	cout => \DUT|Add0~9\);

-- Location: LCCOMB_X39_Y33_N26
\DUT|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~10_combout\ = (\DUT|cnt\(5) & (!\DUT|Add0~9\)) # (!\DUT|cnt\(5) & ((\DUT|Add0~9\) # (GND)))
-- \DUT|Add0~11\ = CARRY((!\DUT|Add0~9\) # (!\DUT|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(5),
	datad => VCC,
	cin => \DUT|Add0~9\,
	combout => \DUT|Add0~10_combout\,
	cout => \DUT|Add0~11\);

-- Location: FF_X39_Y33_N27
\DUT|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|Add0~10_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(5));

-- Location: LCCOMB_X39_Y33_N28
\DUT|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~12_combout\ = (\DUT|cnt\(6) & (\DUT|Add0~11\ $ (GND))) # (!\DUT|cnt\(6) & (!\DUT|Add0~11\ & VCC))
-- \DUT|Add0~13\ = CARRY((\DUT|cnt\(6) & !\DUT|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(6),
	datad => VCC,
	cin => \DUT|Add0~11\,
	combout => \DUT|Add0~12_combout\,
	cout => \DUT|Add0~13\);

-- Location: FF_X39_Y33_N29
\DUT|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|Add0~12_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(6));

-- Location: LCCOMB_X39_Y33_N30
\DUT|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~14_combout\ = \DUT|cnt\(7) $ (\DUT|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(7),
	cin => \DUT|Add0~13\,
	combout => \DUT|Add0~14_combout\);

-- Location: FF_X39_Y33_N31
\DUT|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|Add0~14_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(7));

-- Location: LCCOMB_X39_Y33_N2
\DUT|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal0~0_combout\ = (!\DUT|cnt\(5) & (\DUT|cnt\(0) & (!\DUT|cnt\(7) & !\DUT|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(5),
	datab => \DUT|cnt\(0),
	datac => \DUT|cnt\(7),
	datad => \DUT|cnt\(6),
	combout => \DUT|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y33_N0
\DUT|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt~0_combout\ = \DUT|Add0~8_combout\ $ (((\DUT|Equal0~1_combout\ & \DUT|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Equal0~1_combout\,
	datab => \DUT|Equal0~0_combout\,
	datad => \DUT|Add0~8_combout\,
	combout => \DUT|cnt~0_combout\);

-- Location: FF_X39_Y33_N1
\DUT|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SC|In_Reg|PO[1]~clkctrl_outclk\,
	d => \DUT|cnt~0_combout\,
	clrn => \SC|In_Reg|ALT_INV_PO[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(4));

-- Location: LCCOMB_X34_Y33_N6
\SC|Out_Reg|L1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~8_combout\ = (\SC|Selector1~0_combout\ & (\SC|In_Reg|L1\(0))) # (!\SC|Selector1~0_combout\ & ((\DUT|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Selector1~0_combout\,
	datac => \SC|In_Reg|L1\(0),
	datad => \DUT|cnt\(0),
	combout => \SC|Out_Reg|L1~8_combout\);

-- Location: FF_X34_Y33_N7
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

-- Location: LCCOMB_X34_Y33_N20
\SC|Out_Reg|L1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~7_combout\ = (\SC|Selector1~0_combout\ & (\SC|Out_Reg|L1\(7))) # (!\SC|Selector1~0_combout\ & ((\DUT|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1\(7),
	datac => \DUT|cnt\(1),
	datad => \SC|Selector1~0_combout\,
	combout => \SC|Out_Reg|L1~7_combout\);

-- Location: FF_X34_Y33_N21
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

-- Location: LCCOMB_X34_Y33_N2
\SC|Out_Reg|L1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~6_combout\ = (\SC|Selector1~0_combout\ & (\SC|Out_Reg|L1\(6))) # (!\SC|Selector1~0_combout\ & ((\DUT|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Out_Reg|L1\(6),
	datac => \DUT|cnt\(2),
	datad => \SC|Selector1~0_combout\,
	combout => \SC|Out_Reg|L1~6_combout\);

-- Location: FF_X34_Y33_N3
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

-- Location: LCCOMB_X34_Y33_N24
\SC|Out_Reg|L1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~5_combout\ = (\SC|Selector1~0_combout\ & ((\SC|Out_Reg|L1\(5)))) # (!\SC|Selector1~0_combout\ & (\DUT|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(3),
	datab => \SC|Out_Reg|L1\(5),
	datad => \SC|Selector1~0_combout\,
	combout => \SC|Out_Reg|L1~5_combout\);

-- Location: FF_X34_Y33_N25
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

-- Location: LCCOMB_X34_Y33_N22
\SC|Out_Reg|L1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~4_combout\ = (\SC|Selector1~0_combout\ & ((\SC|Out_Reg|L1\(4)))) # (!\SC|Selector1~0_combout\ & (\DUT|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Selector1~0_combout\,
	datac => \DUT|cnt\(4),
	datad => \SC|Out_Reg|L1\(4),
	combout => \SC|Out_Reg|L1~4_combout\);

-- Location: FF_X34_Y33_N23
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

-- Location: LCCOMB_X34_Y33_N12
\SC|Out_Reg|L1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~3_combout\ = (\SC|Selector1~0_combout\ & (\SC|Out_Reg|L1\(3))) # (!\SC|Selector1~0_combout\ & ((\DUT|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Selector1~0_combout\,
	datac => \SC|Out_Reg|L1\(3),
	datad => \DUT|cnt\(5),
	combout => \SC|Out_Reg|L1~3_combout\);

-- Location: FF_X34_Y33_N13
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

-- Location: LCCOMB_X34_Y33_N18
\SC|Out_Reg|L1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~2_combout\ = (\SC|Selector1~0_combout\ & (\SC|Out_Reg|L1\(2))) # (!\SC|Selector1~0_combout\ & ((\DUT|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|Out_Reg|L1\(2),
	datab => \DUT|cnt\(6),
	datad => \SC|Selector1~0_combout\,
	combout => \SC|Out_Reg|L1~2_combout\);

-- Location: FF_X34_Y33_N19
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

-- Location: LCCOMB_X34_Y33_N0
\SC|Out_Reg|L1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SC|Out_Reg|L1~0_combout\ = (\SC|Selector1~0_combout\ & (\SC|Out_Reg|L1\(1))) # (!\SC|Selector1~0_combout\ & ((\DUT|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC|Out_Reg|L1\(1),
	datac => \DUT|cnt\(7),
	datad => \SC|Selector1~0_combout\,
	combout => \SC|Out_Reg|L1~0_combout\);

-- Location: FF_X34_Y33_N1
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
END structure;


