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

-- DATE "01/22/2020 19:58:49"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mouse IS
    PORT (
	ps2clk : INOUT std_logic;
	\clk_\ : IN std_logic;
	ps2data : INOUT std_logic;
	led : OUT std_logic_vector(9 DOWNTO 0)
	);
END mouse;

-- Design Ports Information
-- led[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ps2clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ps2data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mouse IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_clk_\ : std_logic;
SIGNAL ww_led : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|inst40|inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ps2clk~output_o\ : std_logic;
SIGNAL \ps2data~output_o\ : std_logic;
SIGNAL \led[9]~output_o\ : std_logic;
SIGNAL \led[8]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \clk_~input_o\ : std_logic;
SIGNAL \clk_~inputclkctrl_outclk\ : std_logic;
SIGNAL \ps2clk~input_o\ : std_logic;
SIGNAL \inst|inst40|inst~0_combout\ : std_logic;
SIGNAL \inst|inst40|inst~q\ : std_logic;
SIGNAL \inst|inst40|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst40|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst40|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst40|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst40|inst6~combout\ : std_logic;
SIGNAL \inst|inst40|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst40|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst40|inst5~combout\ : std_logic;
SIGNAL \inst|inst40|inst1~q\ : std_logic;
SIGNAL \inst|inst40|inst1~clkctrl_outclk\ : std_logic;
SIGNAL \ps2data~input_o\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst|inst17~feeder_combout\ : std_logic;
SIGNAL \inst|inst17~q\ : std_logic;
SIGNAL \inst|inst30~feeder_combout\ : std_logic;
SIGNAL \inst|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst4~1_combout\ : std_logic;
SIGNAL \inst|inst4~2_combout\ : std_logic;
SIGNAL \inst|inst4~3_combout\ : std_logic;
SIGNAL \inst|inst5~q\ : std_logic;
SIGNAL \inst|inst6~feeder_combout\ : std_logic;
SIGNAL \inst|inst6~q\ : std_logic;
SIGNAL \inst|inst7~feeder_combout\ : std_logic;
SIGNAL \inst|inst7~q\ : std_logic;
SIGNAL \inst|inst8~feeder_combout\ : std_logic;
SIGNAL \inst|inst8~q\ : std_logic;
SIGNAL \inst|inst9~feeder_combout\ : std_logic;
SIGNAL \inst|inst9~q\ : std_logic;
SIGNAL \inst|inst10~feeder_combout\ : std_logic;
SIGNAL \inst|inst10~q\ : std_logic;
SIGNAL \inst|inst11~feeder_combout\ : std_logic;
SIGNAL \inst|inst11~q\ : std_logic;
SIGNAL \inst|inst12~feeder_combout\ : std_logic;
SIGNAL \inst|inst12~q\ : std_logic;
SIGNAL \inst|inst13~feeder_combout\ : std_logic;
SIGNAL \inst|inst13~q\ : std_logic;
SIGNAL \inst|inst14~feeder_combout\ : std_logic;
SIGNAL \inst|inst14~q\ : std_logic;
SIGNAL \inst|inst29|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst29|inst~q\ : std_logic;
SIGNAL \inst|inst29|inst1~q\ : std_logic;
SIGNAL \inst|inst29|inst2~combout\ : std_logic;
SIGNAL \inst|inst30~q\ : std_logic;
SIGNAL \inst|inst18~feeder_combout\ : std_logic;
SIGNAL \inst|inst18~q\ : std_logic;
SIGNAL \inst|inst31~feeder_combout\ : std_logic;
SIGNAL \inst|inst31~q\ : std_logic;
SIGNAL \inst|inst19~feeder_combout\ : std_logic;
SIGNAL \inst|inst19~q\ : std_logic;
SIGNAL \inst|inst32~feeder_combout\ : std_logic;
SIGNAL \inst|inst32~q\ : std_logic;
SIGNAL \inst|inst20~feeder_combout\ : std_logic;
SIGNAL \inst|inst20~q\ : std_logic;
SIGNAL \inst|inst33~feeder_combout\ : std_logic;
SIGNAL \inst|inst33~q\ : std_logic;
SIGNAL \inst|inst21~feeder_combout\ : std_logic;
SIGNAL \inst|inst21~q\ : std_logic;
SIGNAL \inst|inst34~feeder_combout\ : std_logic;
SIGNAL \inst|inst34~q\ : std_logic;
SIGNAL \inst|inst22~feeder_combout\ : std_logic;
SIGNAL \inst|inst22~q\ : std_logic;
SIGNAL \inst|inst35~feeder_combout\ : std_logic;
SIGNAL \inst|inst35~q\ : std_logic;
SIGNAL \inst|inst23~feeder_combout\ : std_logic;
SIGNAL \inst|inst23~q\ : std_logic;
SIGNAL \inst|inst36~feeder_combout\ : std_logic;
SIGNAL \inst|inst36~q\ : std_logic;
SIGNAL \inst|inst24~feeder_combout\ : std_logic;
SIGNAL \inst|inst24~q\ : std_logic;
SIGNAL \inst|inst37~feeder_combout\ : std_logic;
SIGNAL \inst|inst37~q\ : std_logic;

BEGIN

\ww_clk_\ <= \clk_\;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst40|inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst40|inst1~q\);

\clk_~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_~input_o\);

-- Location: IOOBUF_X41_Y11_N2
\ps2clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ps2clk~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\ps2data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ps2data~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst30~q\,
	devoe => ww_devoe,
	o => \led[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst31~q\,
	devoe => ww_devoe,
	o => \led[8]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst32~q\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst33~q\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst34~q\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst35~q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst36~q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst37~q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ps2data~input_o\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ps2clk~input_o\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk_~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_clk_\,
	o => \clk_~input_o\);

-- Location: CLKCTRL_G9
\clk_~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y11_N1
\ps2clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ps2clk,
	o => \ps2clk~input_o\);

-- Location: LCCOMB_X19_Y27_N26
\inst|inst40|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst~0_combout\ = !\ps2clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2clk~input_o\,
	combout => \inst|inst40|inst~0_combout\);

-- Location: FF_X19_Y27_N27
\inst|inst40|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst40|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst40|inst~q\);

-- Location: LCCOMB_X19_Y27_N30
\inst|inst40|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst2|inst~0_combout\ = (!\inst|inst40|inst2|inst~q\ & (\inst|inst40|inst~q\ $ (\ps2clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst40|inst~q\,
	datab => \ps2clk~input_o\,
	datac => \inst|inst40|inst2|inst~q\,
	combout => \inst|inst40|inst2|inst~0_combout\);

-- Location: FF_X19_Y27_N31
\inst|inst40|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst40|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst40|inst2|inst~q\);

-- Location: LCCOMB_X19_Y27_N28
\inst|inst40|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst3|inst~0_combout\ = (\inst|inst40|inst~q\ & (!\ps2clk~input_o\ & (\inst|inst40|inst2|inst~q\ $ (\inst|inst40|inst3|inst~q\)))) # (!\inst|inst40|inst~q\ & (\ps2clk~input_o\ & (\inst|inst40|inst2|inst~q\ $ (\inst|inst40|inst3|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst40|inst~q\,
	datab => \inst|inst40|inst2|inst~q\,
	datac => \inst|inst40|inst3|inst~q\,
	datad => \ps2clk~input_o\,
	combout => \inst|inst40|inst3|inst~0_combout\);

-- Location: FF_X19_Y27_N29
\inst|inst40|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst40|inst3|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst40|inst3|inst~q\);

-- Location: LCCOMB_X19_Y27_N18
\inst|inst40|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst6~combout\ = \ps2clk~input_o\ $ (\inst|inst40|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2clk~input_o\,
	datac => \inst|inst40|inst~q\,
	combout => \inst|inst40|inst6~combout\);

-- Location: LCCOMB_X19_Y27_N24
\inst|inst40|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst4|inst~0_combout\ = (\inst|inst40|inst6~combout\ & (\inst|inst40|inst4|inst~q\ $ (((\inst|inst40|inst2|inst~q\ & \inst|inst40|inst3|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst40|inst2|inst~q\,
	datab => \inst|inst40|inst3|inst~q\,
	datac => \inst|inst40|inst4|inst~q\,
	datad => \inst|inst40|inst6~combout\,
	combout => \inst|inst40|inst4|inst~0_combout\);

-- Location: FF_X19_Y27_N25
\inst|inst40|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst40|inst4|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst40|inst4|inst~q\);

-- Location: LCCOMB_X19_Y27_N22
\inst|inst40|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst5~combout\ = (\inst|inst40|inst2|inst~q\ & (\inst|inst40|inst4|inst~q\ & \inst|inst40|inst3|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst40|inst2|inst~q\,
	datab => \inst|inst40|inst4|inst~q\,
	datad => \inst|inst40|inst3|inst~q\,
	combout => \inst|inst40|inst5~combout\);

-- Location: FF_X19_Y27_N23
\inst|inst40|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst40|inst~q\,
	sload => VCC,
	ena => \inst|inst40|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst40|inst1~q\);

-- Location: CLKCTRL_G10
\inst|inst40|inst1~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst40|inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst40|inst1~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y12_N22
\ps2data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ps2data,
	o => \ps2data~input_o\);

-- Location: FF_X2_Y24_N25
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	asdata => \ps2data~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X1_Y24_N28
\inst|inst17~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst17~feeder_combout\ = \inst|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1~q\,
	combout => \inst|inst17~feeder_combout\);

-- Location: FF_X1_Y24_N29
\inst|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst17~q\);

-- Location: LCCOMB_X1_Y24_N12
\inst|inst30~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst30~feeder_combout\ = \inst|inst17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17~q\,
	combout => \inst|inst30~feeder_combout\);

-- Location: LCCOMB_X2_Y24_N0
\inst|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4~0_combout\ = (!\ps2data~input_o\ & (!\inst|inst12~q\ & (!\inst|inst14~q\ & !\inst|inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2data~input_o\,
	datab => \inst|inst12~q\,
	datac => \inst|inst14~q\,
	datad => \inst|inst13~q\,
	combout => \inst|inst4~0_combout\);

-- Location: LCCOMB_X2_Y24_N26
\inst|inst4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4~1_combout\ = (!\inst|inst8~q\ & (!\inst|inst9~q\ & (!\inst|inst11~q\ & !\inst|inst10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~q\,
	datab => \inst|inst9~q\,
	datac => \inst|inst11~q\,
	datad => \inst|inst10~q\,
	combout => \inst|inst4~1_combout\);

-- Location: LCCOMB_X2_Y24_N16
\inst|inst4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4~2_combout\ = (!\inst|inst6~q\ & (\inst|inst1~q\ & (!\inst|inst5~q\ & !\inst|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~q\,
	datab => \inst|inst1~q\,
	datac => \inst|inst5~q\,
	datad => \inst|inst7~q\,
	combout => \inst|inst4~2_combout\);

-- Location: LCCOMB_X2_Y24_N30
\inst|inst4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4~3_combout\ = (\inst|inst4~0_combout\ & (\inst|inst4~1_combout\ & \inst|inst4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4~0_combout\,
	datac => \inst|inst4~1_combout\,
	datad => \inst|inst4~2_combout\,
	combout => \inst|inst4~3_combout\);

-- Location: FF_X2_Y24_N31
\inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5~q\);

-- Location: LCCOMB_X2_Y24_N8
\inst|inst6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6~feeder_combout\ = \inst|inst5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst5~q\,
	combout => \inst|inst6~feeder_combout\);

-- Location: FF_X2_Y24_N9
\inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6~q\);

-- Location: LCCOMB_X2_Y24_N28
\inst|inst7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst7~feeder_combout\ = \inst|inst6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6~q\,
	combout => \inst|inst7~feeder_combout\);

-- Location: FF_X2_Y24_N29
\inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7~q\);

-- Location: LCCOMB_X2_Y24_N12
\inst|inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8~feeder_combout\ = \inst|inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst7~q\,
	combout => \inst|inst8~feeder_combout\);

-- Location: FF_X2_Y24_N13
\inst|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8~q\);

-- Location: LCCOMB_X2_Y24_N18
\inst|inst9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9~feeder_combout\ = \inst|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst8~q\,
	combout => \inst|inst9~feeder_combout\);

-- Location: FF_X2_Y24_N19
\inst|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst9~q\);

-- Location: LCCOMB_X2_Y24_N20
\inst|inst10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10~feeder_combout\ = \inst|inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst9~q\,
	combout => \inst|inst10~feeder_combout\);

-- Location: FF_X2_Y24_N21
\inst|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10~q\);

-- Location: LCCOMB_X2_Y24_N4
\inst|inst11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11~feeder_combout\ = \inst|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst10~q\,
	combout => \inst|inst11~feeder_combout\);

-- Location: FF_X2_Y24_N5
\inst|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11~q\);

-- Location: LCCOMB_X2_Y24_N14
\inst|inst12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12~feeder_combout\ = \inst|inst11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst11~q\,
	combout => \inst|inst12~feeder_combout\);

-- Location: FF_X2_Y24_N15
\inst|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12~q\);

-- Location: LCCOMB_X2_Y24_N2
\inst|inst13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst13~feeder_combout\ = \inst|inst12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst12~q\,
	combout => \inst|inst13~feeder_combout\);

-- Location: FF_X2_Y24_N3
\inst|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst13~q\);

-- Location: LCCOMB_X2_Y24_N22
\inst|inst14~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst14~feeder_combout\ = \inst|inst13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst13~q\,
	combout => \inst|inst14~feeder_combout\);

-- Location: FF_X2_Y24_N23
\inst|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst14~q\);

-- Location: LCCOMB_X2_Y24_N10
\inst|inst29|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst29|inst~feeder_combout\ = \inst|inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst14~q\,
	combout => \inst|inst29|inst~feeder_combout\);

-- Location: FF_X2_Y24_N11
\inst|inst29|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst29|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst29|inst~q\);

-- Location: FF_X2_Y24_N7
\inst|inst29|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst29|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst29|inst1~q\);

-- Location: LCCOMB_X2_Y24_N6
\inst|inst29|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst29|inst2~combout\ = (!\inst|inst29|inst1~q\ & \inst|inst29|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst29|inst1~q\,
	datad => \inst|inst29|inst~q\,
	combout => \inst|inst29|inst2~combout\);

-- Location: FF_X1_Y24_N13
\inst|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst30~feeder_combout\,
	ena => \inst|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30~q\);

-- Location: LCCOMB_X1_Y24_N10
\inst|inst18~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18~feeder_combout\ = \inst|inst17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst17~q\,
	combout => \inst|inst18~feeder_combout\);

-- Location: FF_X1_Y24_N11
\inst|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst18~q\);

-- Location: LCCOMB_X1_Y24_N22
\inst|inst31~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst31~feeder_combout\ = \inst|inst18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst18~q\,
	combout => \inst|inst31~feeder_combout\);

-- Location: FF_X1_Y24_N23
\inst|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst31~feeder_combout\,
	ena => \inst|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31~q\);

-- Location: LCCOMB_X1_Y24_N0
\inst|inst19~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19~feeder_combout\ = \inst|inst18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst18~q\,
	combout => \inst|inst19~feeder_combout\);

-- Location: FF_X1_Y24_N1
\inst|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst19~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst19~q\);

-- Location: LCCOMB_X1_Y24_N4
\inst|inst32~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst32~feeder_combout\ = \inst|inst19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19~q\,
	combout => \inst|inst32~feeder_combout\);

-- Location: FF_X1_Y24_N5
\inst|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst32~feeder_combout\,
	ena => \inst|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst32~q\);

-- Location: LCCOMB_X1_Y24_N26
\inst|inst20~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst20~feeder_combout\ = \inst|inst19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst19~q\,
	combout => \inst|inst20~feeder_combout\);

-- Location: FF_X1_Y24_N27
\inst|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst20~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst20~q\);

-- Location: LCCOMB_X1_Y24_N2
\inst|inst33~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst33~feeder_combout\ = \inst|inst20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst20~q\,
	combout => \inst|inst33~feeder_combout\);

-- Location: FF_X1_Y24_N3
\inst|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst33~feeder_combout\,
	ena => \inst|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst33~q\);

-- Location: LCCOMB_X1_Y24_N20
\inst|inst21~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst21~feeder_combout\ = \inst|inst20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst20~q\,
	combout => \inst|inst21~feeder_combout\);

-- Location: FF_X1_Y24_N21
\inst|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst21~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21~q\);

-- Location: LCCOMB_X1_Y24_N16
\inst|inst34~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst34~feeder_combout\ = \inst|inst21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~q\,
	combout => \inst|inst34~feeder_combout\);

-- Location: FF_X1_Y24_N17
\inst|inst34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst34~feeder_combout\,
	ena => \inst|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst34~q\);

-- Location: LCCOMB_X1_Y24_N18
\inst|inst22~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst22~feeder_combout\ = \inst|inst21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst21~q\,
	combout => \inst|inst22~feeder_combout\);

-- Location: FF_X1_Y24_N19
\inst|inst22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst22~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst22~q\);

-- Location: LCCOMB_X1_Y24_N14
\inst|inst35~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst35~feeder_combout\ = \inst|inst22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst22~q\,
	combout => \inst|inst35~feeder_combout\);

-- Location: FF_X1_Y24_N15
\inst|inst35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst35~feeder_combout\,
	ena => \inst|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst35~q\);

-- Location: LCCOMB_X1_Y24_N24
\inst|inst23~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst23~feeder_combout\ = \inst|inst22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst22~q\,
	combout => \inst|inst23~feeder_combout\);

-- Location: FF_X1_Y24_N25
\inst|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst23~q\);

-- Location: LCCOMB_X1_Y24_N8
\inst|inst36~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst36~feeder_combout\ = \inst|inst23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23~q\,
	combout => \inst|inst36~feeder_combout\);

-- Location: FF_X1_Y24_N9
\inst|inst36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst36~feeder_combout\,
	ena => \inst|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst36~q\);

-- Location: LCCOMB_X1_Y24_N6
\inst|inst24~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst24~feeder_combout\ = \inst|inst23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst23~q\,
	combout => \inst|inst24~feeder_combout\);

-- Location: FF_X1_Y24_N7
\inst|inst24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst40|inst1~clkctrl_outclk\,
	d => \inst|inst24~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst24~q\);

-- Location: LCCOMB_X1_Y24_N30
\inst|inst37~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst37~feeder_combout\ = \inst|inst24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst24~q\,
	combout => \inst|inst37~feeder_combout\);

-- Location: FF_X1_Y24_N31
\inst|inst37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst37~feeder_combout\,
	ena => \inst|inst29|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst37~q\);

ww_led(9) <= \led[9]~output_o\;

ww_led(8) <= \led[8]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(0) <= \led[0]~output_o\;

ps2clk <= \ps2clk~output_o\;

ps2data <= \ps2data~output_o\;
END structure;


