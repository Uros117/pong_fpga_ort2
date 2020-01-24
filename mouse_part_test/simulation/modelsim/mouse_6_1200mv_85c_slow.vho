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

-- DATE "01/24/2020 13:51:29"

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
SIGNAL \inst|inst77|Timer_reg|data[0]~13_combout\ : std_logic;
SIGNAL \ps2data~input_o\ : std_logic;
SIGNAL \inst|inst77|inst65~q\ : std_logic;
SIGNAL \inst|inst77|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst77|inst4|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst4|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst77|inst4|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst4|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst77|inst4|inst6~combout\ : std_logic;
SIGNAL \inst|inst77|inst4|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst4|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst77|inst4|inst5~combout\ : std_logic;
SIGNAL \inst|inst77|inst4|inst1~q\ : std_logic;
SIGNAL \inst|inst77|inst62~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst62~q\ : std_logic;
SIGNAL \ps2clk~input_o\ : std_logic;
SIGNAL \inst|inst77|inst64~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst64~q\ : std_logic;
SIGNAL \inst|inst77|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst77|inst3|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst3|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst77|inst3|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst3|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst77|inst3|inst6~combout\ : std_logic;
SIGNAL \inst|inst77|inst3|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst3|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst77|inst3|inst5~combout\ : std_logic;
SIGNAL \inst|inst77|inst3|inst1~q\ : std_logic;
SIGNAL \inst|inst77|inst52~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst52~q\ : std_logic;
SIGNAL \inst|inst77|inst25~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst8|data[1]~2_combout\ : std_logic;
SIGNAL \inst|inst9|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data_next[12]~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst~1_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[11]~40\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[12]~41_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[6]~22_combout\ : std_logic;
SIGNAL \inst|inst77|inst44~0_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[6]~21_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[6]~23_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[6]~24_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[0]~14\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[1]~15_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[1]~16\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[2]~17_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[2]~18\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[3]~19_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[3]~20\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[4]~25_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[4]~26\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[5]~27_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[5]~28\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[6]~29_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[6]~30\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[7]~31_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[7]~32\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[8]~33_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[8]~34\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[9]~35_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[9]~36\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[10]~37_combout\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[10]~38\ : std_logic;
SIGNAL \inst|inst77|Timer_reg|data[11]~39_combout\ : std_logic;
SIGNAL \inst|inst77|inst63|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst63|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|inst77|inst63|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|inst77|bit_cnt|data_next[0]~3_combout\ : std_logic;
SIGNAL \inst|inst77|inst56~q\ : std_logic;
SIGNAL \inst|inst77|inst67~0_combout\ : std_logic;
SIGNAL \inst|inst77|bit_cnt|data[1]~2_combout\ : std_logic;
SIGNAL \inst|inst77|inst~0_combout\ : std_logic;
SIGNAL \inst|inst77|bit_cnt|data_next[1]~2_combout\ : std_logic;
SIGNAL \inst|inst77|bit_cnt|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst77|bit_cnt|data_next[2]~5_combout\ : std_logic;
SIGNAL \inst|inst77|bit_cnt|data_next[3]~4_combout\ : std_logic;
SIGNAL \inst|inst77|inst75~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst79~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst8|data[1]~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst8|data[0]~1_combout\ : std_logic;
SIGNAL \inst|inst77|inst9|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[10]~5_combout\ : std_logic;
SIGNAL \inst|inst77|inst66~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[9]~4_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[8]~3_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[4]~2_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[3]~1_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[2]~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst77|inst18~0_combout\ : std_logic;
SIGNAL \inst|inst77|inst18~1_combout\ : std_logic;
SIGNAL \inst|inst77|inst17~q\ : std_logic;
SIGNAL \inst|inst77|inst31|data[5]~2_combout\ : std_logic;
SIGNAL \inst|inst77|inst44~3_combout\ : std_logic;
SIGNAL \inst|inst77|inst44~2_combout\ : std_logic;
SIGNAL \inst|inst77|inst44~1_combout\ : std_logic;
SIGNAL \inst|inst77|inst44~4_combout\ : std_logic;
SIGNAL \inst|inst77|inst31|data[4]~1_combout\ : std_logic;
SIGNAL \inst|inst77|inst31|data[2]~0_combout\ : std_logic;
SIGNAL \inst|inst16~1_combout\ : std_logic;
SIGNAL \inst|inst77|inst31|data[7]~4_combout\ : std_logic;
SIGNAL \inst|inst77|inst31|data[6]~3_combout\ : std_logic;
SIGNAL \inst|inst16~2_combout\ : std_logic;
SIGNAL \inst|inst77|inst34|data[0]~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst5|inst1~q\ : std_logic;
SIGNAL \inst|inst77|inst31|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst16~0_combout\ : std_logic;
SIGNAL \inst|inst11|data[0]~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst2~0_combout\ : std_logic;
SIGNAL \inst|packet_byte_reg|data[0]~1_combout\ : std_logic;
SIGNAL \inst|packet_byte_reg|data[1]~0_combout\ : std_logic;
SIGNAL \inst|inst66|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst17|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst~q\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|cnt[0]~11_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|cnt[2]~9_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|cnt[3]~8_combout\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|cnt[4]~7_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|cnt[7]~6_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|cnt[8]~5_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|cnt[10]~4_combout\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|cnt[13]~3_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|cnt[17]~2_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|cnt[18]~1_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|out_clk_next~3_combout\ : std_logic;
SIGNAL \inst4|cnt[21]~0_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|out_clk_next~0_combout\ : std_logic;
SIGNAL \inst4|out_clk_next~1_combout\ : std_logic;
SIGNAL \inst4|out_clk_next~2_combout\ : std_logic;
SIGNAL \inst4|out_clk_next~4_combout\ : std_logic;
SIGNAL \inst4|out_clk_next~q\ : std_logic;
SIGNAL \inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst~q\ : std_logic;
SIGNAL \inst13|inst1~q\ : std_logic;
SIGNAL \inst3|inst1~feeder_combout\ : std_logic;
SIGNAL \inst3|inst1~q\ : std_logic;
SIGNAL \inst25~0_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[5]~7_combout\ : std_logic;
SIGNAL \inst22|data_next[21]~1_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[6]~8_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[7]~9_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[4]~6_combout\ : std_logic;
SIGNAL \inst32|Equal0~1_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg53|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[21]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[21]~0_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[2]~4_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[3]~5_combout\ : std_logic;
SIGNAL \inst|mouse_data_reg|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[0]~3_combout\ : std_logic;
SIGNAL \inst|mouse_data_int_reg52|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst22|data_next[1]~2_combout\ : std_logic;
SIGNAL \inst32|Equal0~0_combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst|inst77|inst12|data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|mouse_data_int_reg52|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst77|Timer_reg|data\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|inst77|bit_cnt|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst77|inst34|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst22|data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|inst77|inst31|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst77|inst8|data\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|inst9|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|mouse_data_int_reg|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst17|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|mouse_data_int_reg53|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|cnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \inst|inst11|data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|mouse_data_reg|data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|packet_byte_reg|data\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|inst77|inst9|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~combout\ : std_logic;

BEGIN

\ww_clk_\ <= \clk_\;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_~input_o\);
\inst|inst77|inst9|ALT_INV_inst4~0_combout\ <= NOT \inst|inst77|inst9|inst4~0_combout\;
\ALT_INV_inst2~combout\ <= NOT \inst2~combout\;

-- Location: IOOBUF_X41_Y11_N2
\ps2clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst|inst77|inst9|ALT_INV_inst4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \ps2clk~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\ps2data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst77|inst12|data\(0),
	oe => \inst|inst77|inst17~q\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \ALT_INV_inst2~combout\,
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
	i => \inst5~combout\,
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

-- Location: LCCOMB_X36_Y18_N4
\inst|inst77|Timer_reg|data[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[0]~13_combout\ = \inst|inst77|Timer_reg|data\(0) $ (VCC)
-- \inst|inst77|Timer_reg|data[0]~14\ = CARRY(\inst|inst77|Timer_reg|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|Timer_reg|data\(0),
	datad => VCC,
	combout => \inst|inst77|Timer_reg|data[0]~13_combout\,
	cout => \inst|inst77|Timer_reg|data[0]~14\);

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

-- Location: FF_X38_Y19_N3
\inst|inst77|inst65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \ps2data~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst65~q\);

-- Location: LCCOMB_X38_Y19_N22
\inst|inst77|inst4|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst4|inst~feeder_combout\ = \inst|inst77|inst65~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst65~q\,
	combout => \inst|inst77|inst4|inst~feeder_combout\);

-- Location: FF_X38_Y19_N23
\inst|inst77|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst4|inst~q\);

-- Location: LCCOMB_X38_Y19_N10
\inst|inst77|inst4|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst4|inst2|inst~0_combout\ = (!\inst|inst77|inst4|inst2|inst~q\ & (\inst|inst77|inst4|inst~q\ $ (!\inst|inst77|inst65~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst4|inst~q\,
	datac => \inst|inst77|inst4|inst2|inst~q\,
	datad => \inst|inst77|inst65~q\,
	combout => \inst|inst77|inst4|inst2|inst~0_combout\);

-- Location: FF_X38_Y19_N11
\inst|inst77|inst4|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst4|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst4|inst2|inst~q\);

-- Location: LCCOMB_X38_Y19_N16
\inst|inst77|inst4|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst4|inst3|inst~0_combout\ = (\inst|inst77|inst4|inst~q\ & (\inst|inst77|inst65~q\ & (\inst|inst77|inst4|inst3|inst~q\ $ (\inst|inst77|inst4|inst2|inst~q\)))) # (!\inst|inst77|inst4|inst~q\ & (!\inst|inst77|inst65~q\ & 
-- (\inst|inst77|inst4|inst3|inst~q\ $ (\inst|inst77|inst4|inst2|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst4|inst~q\,
	datab => \inst|inst77|inst65~q\,
	datac => \inst|inst77|inst4|inst3|inst~q\,
	datad => \inst|inst77|inst4|inst2|inst~q\,
	combout => \inst|inst77|inst4|inst3|inst~0_combout\);

-- Location: FF_X38_Y19_N17
\inst|inst77|inst4|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst4|inst3|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst4|inst3|inst~q\);

-- Location: LCCOMB_X38_Y19_N12
\inst|inst77|inst4|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst4|inst6~combout\ = \inst|inst77|inst4|inst~q\ $ (\inst|inst77|inst65~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|inst4|inst~q\,
	datad => \inst|inst77|inst65~q\,
	combout => \inst|inst77|inst4|inst6~combout\);

-- Location: LCCOMB_X38_Y19_N28
\inst|inst77|inst4|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst4|inst4|inst~0_combout\ = (!\inst|inst77|inst4|inst6~combout\ & (\inst|inst77|inst4|inst4|inst~q\ $ (((\inst|inst77|inst4|inst3|inst~q\ & \inst|inst77|inst4|inst2|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst4|inst6~combout\,
	datab => \inst|inst77|inst4|inst3|inst~q\,
	datac => \inst|inst77|inst4|inst4|inst~q\,
	datad => \inst|inst77|inst4|inst2|inst~q\,
	combout => \inst|inst77|inst4|inst4|inst~0_combout\);

-- Location: FF_X38_Y19_N29
\inst|inst77|inst4|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst4|inst4|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst4|inst4|inst~q\);

-- Location: LCCOMB_X38_Y19_N4
\inst|inst77|inst4|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst4|inst5~combout\ = (\inst|inst77|inst4|inst2|inst~q\ & (\inst|inst77|inst4|inst3|inst~q\ & \inst|inst77|inst4|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst4|inst2|inst~q\,
	datab => \inst|inst77|inst4|inst3|inst~q\,
	datad => \inst|inst77|inst4|inst4|inst~q\,
	combout => \inst|inst77|inst4|inst5~combout\);

-- Location: FF_X38_Y19_N5
\inst|inst77|inst4|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst4|inst~q\,
	sload => VCC,
	ena => \inst|inst77|inst4|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst4|inst1~q\);

-- Location: LCCOMB_X37_Y19_N30
\inst|inst77|inst62~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst62~feeder_combout\ = \inst|inst77|inst4|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst4|inst1~q\,
	combout => \inst|inst77|inst62~feeder_combout\);

-- Location: FF_X37_Y19_N31
\inst|inst77|inst62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst62~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst62~q\);

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

-- Location: LCCOMB_X40_Y18_N12
\inst|inst77|inst64~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst64~feeder_combout\ = \ps2clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2clk~input_o\,
	combout => \inst|inst77|inst64~feeder_combout\);

-- Location: FF_X40_Y18_N13
\inst|inst77|inst64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst64~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst64~q\);

-- Location: LCCOMB_X40_Y18_N0
\inst|inst77|inst3|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst3|inst~feeder_combout\ = \inst|inst77|inst64~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst64~q\,
	combout => \inst|inst77|inst3|inst~feeder_combout\);

-- Location: FF_X40_Y18_N1
\inst|inst77|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst3|inst~q\);

-- Location: LCCOMB_X40_Y18_N4
\inst|inst77|inst3|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst3|inst2|inst~0_combout\ = (!\inst|inst77|inst3|inst2|inst~q\ & (\inst|inst77|inst64~q\ $ (!\inst|inst77|inst3|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst64~q\,
	datac => \inst|inst77|inst3|inst2|inst~q\,
	datad => \inst|inst77|inst3|inst~q\,
	combout => \inst|inst77|inst3|inst2|inst~0_combout\);

-- Location: FF_X40_Y18_N5
\inst|inst77|inst3|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst3|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst3|inst2|inst~q\);

-- Location: LCCOMB_X40_Y18_N26
\inst|inst77|inst3|inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst3|inst3|inst~0_combout\ = (\inst|inst77|inst64~q\ & (\inst|inst77|inst3|inst~q\ & (\inst|inst77|inst3|inst2|inst~q\ $ (\inst|inst77|inst3|inst3|inst~q\)))) # (!\inst|inst77|inst64~q\ & (!\inst|inst77|inst3|inst~q\ & 
-- (\inst|inst77|inst3|inst2|inst~q\ $ (\inst|inst77|inst3|inst3|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst64~q\,
	datab => \inst|inst77|inst3|inst2|inst~q\,
	datac => \inst|inst77|inst3|inst3|inst~q\,
	datad => \inst|inst77|inst3|inst~q\,
	combout => \inst|inst77|inst3|inst3|inst~0_combout\);

-- Location: FF_X40_Y18_N27
\inst|inst77|inst3|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst3|inst3|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst3|inst3|inst~q\);

-- Location: LCCOMB_X40_Y18_N2
\inst|inst77|inst3|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst3|inst6~combout\ = \inst|inst77|inst64~q\ $ (\inst|inst77|inst3|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst64~q\,
	datad => \inst|inst77|inst3|inst~q\,
	combout => \inst|inst77|inst3|inst6~combout\);

-- Location: LCCOMB_X40_Y18_N6
\inst|inst77|inst3|inst4|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst3|inst4|inst~0_combout\ = (!\inst|inst77|inst3|inst6~combout\ & (\inst|inst77|inst3|inst4|inst~q\ $ (((\inst|inst77|inst3|inst3|inst~q\ & \inst|inst77|inst3|inst2|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst3|inst3|inst~q\,
	datab => \inst|inst77|inst3|inst2|inst~q\,
	datac => \inst|inst77|inst3|inst4|inst~q\,
	datad => \inst|inst77|inst3|inst6~combout\,
	combout => \inst|inst77|inst3|inst4|inst~0_combout\);

-- Location: FF_X40_Y18_N7
\inst|inst77|inst3|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst3|inst4|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst3|inst4|inst~q\);

-- Location: LCCOMB_X39_Y18_N4
\inst|inst77|inst3|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst3|inst5~combout\ = (\inst|inst77|inst3|inst2|inst~q\ & (\inst|inst77|inst3|inst3|inst~q\ & \inst|inst77|inst3|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst3|inst2|inst~q\,
	datab => \inst|inst77|inst3|inst3|inst~q\,
	datad => \inst|inst77|inst3|inst4|inst~q\,
	combout => \inst|inst77|inst3|inst5~combout\);

-- Location: FF_X39_Y18_N5
\inst|inst77|inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst3|inst~q\,
	sload => VCC,
	ena => \inst|inst77|inst3|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst3|inst1~q\);

-- Location: LCCOMB_X38_Y18_N0
\inst|inst77|inst52~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst52~feeder_combout\ = \inst|inst77|inst3|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst3|inst1~q\,
	combout => \inst|inst77|inst52~feeder_combout\);

-- Location: FF_X38_Y18_N1
\inst|inst77|inst52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst52~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst52~q\);

-- Location: LCCOMB_X37_Y18_N16
\inst|inst77|inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst25~0_combout\ = (\inst|inst77|inst62~q\ & (\inst|inst77|inst8|data\(0) & (\inst|inst77|inst52~q\ & \inst|inst77|inst8|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst62~q\,
	datab => \inst|inst77|inst8|data\(0),
	datac => \inst|inst77|inst52~q\,
	datad => \inst|inst77|inst8|data\(1),
	combout => \inst|inst77|inst25~0_combout\);

-- Location: LCCOMB_X38_Y18_N18
\inst|inst77|inst8|data[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst8|data[1]~2_combout\ = (\inst|inst77|inst8|data[1]~0_combout\ & (!\inst|inst77|inst25~0_combout\ & (\inst|inst77|inst8|data\(0) $ (\inst|inst77|inst8|data\(1))))) # (!\inst|inst77|inst8|data[1]~0_combout\ & 
-- (((\inst|inst77|inst8|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst25~0_combout\,
	datab => \inst|inst77|inst8|data\(0),
	datac => \inst|inst77|inst8|data\(1),
	datad => \inst|inst77|inst8|data[1]~0_combout\,
	combout => \inst|inst77|inst8|data[1]~2_combout\);

-- Location: FF_X38_Y18_N19
\inst|inst77|inst8|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst8|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst8|data\(1));

-- Location: LCCOMB_X38_Y18_N22
\inst|inst9|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9|data[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|inst9|data[0]~feeder_combout\);

-- Location: FF_X38_Y18_N23
\inst|inst9|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst9|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst9|data\(0));

-- Location: LCCOMB_X37_Y18_N30
\inst|inst77|Timer_reg|data_next[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data_next[12]~0_combout\ = (!\inst|inst77|inst8|data\(0) & (!\inst|inst77|inst8|data\(1) & ((!\inst|inst9|data\(0)) # (!\inst|inst77|inst52~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst8|data\(0),
	datab => \inst|inst77|inst8|data\(1),
	datac => \inst|inst77|inst52~q\,
	datad => \inst|inst9|data\(0),
	combout => \inst|inst77|Timer_reg|data_next[12]~0_combout\);

-- Location: LCCOMB_X38_Y18_N16
\inst|inst77|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst~1_combout\ = (!\inst|inst77|inst8|data\(1) & !\inst|inst77|inst8|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|inst8|data\(1),
	datad => \inst|inst77|inst8|data\(0),
	combout => \inst|inst77|inst~1_combout\);

-- Location: LCCOMB_X36_Y18_N26
\inst|inst77|Timer_reg|data[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[11]~39_combout\ = (\inst|inst77|Timer_reg|data\(11) & (!\inst|inst77|Timer_reg|data[10]~38\)) # (!\inst|inst77|Timer_reg|data\(11) & ((\inst|inst77|Timer_reg|data[10]~38\) # (GND)))
-- \inst|inst77|Timer_reg|data[11]~40\ = CARRY((!\inst|inst77|Timer_reg|data[10]~38\) # (!\inst|inst77|Timer_reg|data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(11),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[10]~38\,
	combout => \inst|inst77|Timer_reg|data[11]~39_combout\,
	cout => \inst|inst77|Timer_reg|data[11]~40\);

-- Location: LCCOMB_X36_Y18_N28
\inst|inst77|Timer_reg|data[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[12]~41_combout\ = \inst|inst77|Timer_reg|data[11]~40\ $ (!\inst|inst77|Timer_reg|data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|Timer_reg|data\(12),
	cin => \inst|inst77|Timer_reg|data[11]~40\,
	combout => \inst|inst77|Timer_reg|data[12]~41_combout\);

-- Location: FF_X36_Y18_N29
\inst|inst77|Timer_reg|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[12]~41_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(12));

-- Location: LCCOMB_X37_Y18_N22
\inst|inst77|Timer_reg|data[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[6]~22_combout\ = (\inst|inst77|Timer_reg|data\(12)) # ((\inst|inst77|Timer_reg|data\(11) & \inst|inst77|Timer_reg|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|Timer_reg|data\(12),
	datac => \inst|inst77|Timer_reg|data\(11),
	datad => \inst|inst77|Timer_reg|data\(10),
	combout => \inst|inst77|Timer_reg|data[6]~22_combout\);

-- Location: LCCOMB_X36_Y18_N2
\inst|inst77|inst44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst44~0_combout\ = (\inst|inst77|Timer_reg|data\(4) & (\inst|inst77|Timer_reg|data\(6) & (\inst|inst77|Timer_reg|data\(5) & \inst|inst77|Timer_reg|data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(4),
	datab => \inst|inst77|Timer_reg|data\(6),
	datac => \inst|inst77|Timer_reg|data\(5),
	datad => \inst|inst77|Timer_reg|data\(7),
	combout => \inst|inst77|inst44~0_combout\);

-- Location: LCCOMB_X37_Y18_N0
\inst|inst77|Timer_reg|data[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[6]~21_combout\ = (\inst|inst77|Timer_reg|data\(9) & (\inst|inst77|Timer_reg|data\(11) & ((\inst|inst77|inst44~0_combout\) # (\inst|inst77|Timer_reg|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst44~0_combout\,
	datab => \inst|inst77|Timer_reg|data\(9),
	datac => \inst|inst77|Timer_reg|data\(11),
	datad => \inst|inst77|Timer_reg|data\(8),
	combout => \inst|inst77|Timer_reg|data[6]~21_combout\);

-- Location: LCCOMB_X37_Y18_N4
\inst|inst77|Timer_reg|data[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[6]~23_combout\ = (\inst|inst9|data\(0) & (\inst|inst77|inst52~q\ & ((\inst|inst77|Timer_reg|data[6]~22_combout\) # (\inst|inst77|Timer_reg|data[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data[6]~22_combout\,
	datab => \inst|inst9|data\(0),
	datac => \inst|inst77|inst52~q\,
	datad => \inst|inst77|Timer_reg|data[6]~21_combout\,
	combout => \inst|inst77|Timer_reg|data[6]~23_combout\);

-- Location: LCCOMB_X37_Y18_N18
\inst|inst77|Timer_reg|data[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[6]~24_combout\ = (\inst|inst77|inst9|inst4~0_combout\ & ((\inst|inst77|inst63|LessThan1~2_combout\) # ((\inst|inst77|inst~1_combout\ & !\inst|inst77|Timer_reg|data[6]~23_combout\)))) # (!\inst|inst77|inst9|inst4~0_combout\ & 
-- (\inst|inst77|inst~1_combout\ & (!\inst|inst77|Timer_reg|data[6]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst9|inst4~0_combout\,
	datab => \inst|inst77|inst~1_combout\,
	datac => \inst|inst77|Timer_reg|data[6]~23_combout\,
	datad => \inst|inst77|inst63|LessThan1~2_combout\,
	combout => \inst|inst77|Timer_reg|data[6]~24_combout\);

-- Location: FF_X36_Y18_N5
\inst|inst77|Timer_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[0]~13_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(0));

-- Location: LCCOMB_X36_Y18_N6
\inst|inst77|Timer_reg|data[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[1]~15_combout\ = (\inst|inst77|Timer_reg|data\(1) & (!\inst|inst77|Timer_reg|data[0]~14\)) # (!\inst|inst77|Timer_reg|data\(1) & ((\inst|inst77|Timer_reg|data[0]~14\) # (GND)))
-- \inst|inst77|Timer_reg|data[1]~16\ = CARRY((!\inst|inst77|Timer_reg|data[0]~14\) # (!\inst|inst77|Timer_reg|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(1),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[0]~14\,
	combout => \inst|inst77|Timer_reg|data[1]~15_combout\,
	cout => \inst|inst77|Timer_reg|data[1]~16\);

-- Location: FF_X36_Y18_N7
\inst|inst77|Timer_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[1]~15_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(1));

-- Location: LCCOMB_X36_Y18_N8
\inst|inst77|Timer_reg|data[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[2]~17_combout\ = (\inst|inst77|Timer_reg|data\(2) & (\inst|inst77|Timer_reg|data[1]~16\ $ (GND))) # (!\inst|inst77|Timer_reg|data\(2) & (!\inst|inst77|Timer_reg|data[1]~16\ & VCC))
-- \inst|inst77|Timer_reg|data[2]~18\ = CARRY((\inst|inst77|Timer_reg|data\(2) & !\inst|inst77|Timer_reg|data[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|Timer_reg|data\(2),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[1]~16\,
	combout => \inst|inst77|Timer_reg|data[2]~17_combout\,
	cout => \inst|inst77|Timer_reg|data[2]~18\);

-- Location: FF_X36_Y18_N9
\inst|inst77|Timer_reg|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[2]~17_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(2));

-- Location: LCCOMB_X36_Y18_N10
\inst|inst77|Timer_reg|data[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[3]~19_combout\ = (\inst|inst77|Timer_reg|data\(3) & (!\inst|inst77|Timer_reg|data[2]~18\)) # (!\inst|inst77|Timer_reg|data\(3) & ((\inst|inst77|Timer_reg|data[2]~18\) # (GND)))
-- \inst|inst77|Timer_reg|data[3]~20\ = CARRY((!\inst|inst77|Timer_reg|data[2]~18\) # (!\inst|inst77|Timer_reg|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(3),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[2]~18\,
	combout => \inst|inst77|Timer_reg|data[3]~19_combout\,
	cout => \inst|inst77|Timer_reg|data[3]~20\);

-- Location: FF_X36_Y18_N11
\inst|inst77|Timer_reg|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[3]~19_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(3));

-- Location: LCCOMB_X36_Y18_N12
\inst|inst77|Timer_reg|data[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[4]~25_combout\ = (\inst|inst77|Timer_reg|data\(4) & (\inst|inst77|Timer_reg|data[3]~20\ $ (GND))) # (!\inst|inst77|Timer_reg|data\(4) & (!\inst|inst77|Timer_reg|data[3]~20\ & VCC))
-- \inst|inst77|Timer_reg|data[4]~26\ = CARRY((\inst|inst77|Timer_reg|data\(4) & !\inst|inst77|Timer_reg|data[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(4),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[3]~20\,
	combout => \inst|inst77|Timer_reg|data[4]~25_combout\,
	cout => \inst|inst77|Timer_reg|data[4]~26\);

-- Location: FF_X36_Y18_N13
\inst|inst77|Timer_reg|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[4]~25_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(4));

-- Location: LCCOMB_X36_Y18_N14
\inst|inst77|Timer_reg|data[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[5]~27_combout\ = (\inst|inst77|Timer_reg|data\(5) & (!\inst|inst77|Timer_reg|data[4]~26\)) # (!\inst|inst77|Timer_reg|data\(5) & ((\inst|inst77|Timer_reg|data[4]~26\) # (GND)))
-- \inst|inst77|Timer_reg|data[5]~28\ = CARRY((!\inst|inst77|Timer_reg|data[4]~26\) # (!\inst|inst77|Timer_reg|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|Timer_reg|data\(5),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[4]~26\,
	combout => \inst|inst77|Timer_reg|data[5]~27_combout\,
	cout => \inst|inst77|Timer_reg|data[5]~28\);

-- Location: FF_X36_Y18_N15
\inst|inst77|Timer_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[5]~27_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(5));

-- Location: LCCOMB_X36_Y18_N16
\inst|inst77|Timer_reg|data[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[6]~29_combout\ = (\inst|inst77|Timer_reg|data\(6) & (\inst|inst77|Timer_reg|data[5]~28\ $ (GND))) # (!\inst|inst77|Timer_reg|data\(6) & (!\inst|inst77|Timer_reg|data[5]~28\ & VCC))
-- \inst|inst77|Timer_reg|data[6]~30\ = CARRY((\inst|inst77|Timer_reg|data\(6) & !\inst|inst77|Timer_reg|data[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|Timer_reg|data\(6),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[5]~28\,
	combout => \inst|inst77|Timer_reg|data[6]~29_combout\,
	cout => \inst|inst77|Timer_reg|data[6]~30\);

-- Location: FF_X36_Y18_N17
\inst|inst77|Timer_reg|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[6]~29_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(6));

-- Location: LCCOMB_X36_Y18_N18
\inst|inst77|Timer_reg|data[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[7]~31_combout\ = (\inst|inst77|Timer_reg|data\(7) & (!\inst|inst77|Timer_reg|data[6]~30\)) # (!\inst|inst77|Timer_reg|data\(7) & ((\inst|inst77|Timer_reg|data[6]~30\) # (GND)))
-- \inst|inst77|Timer_reg|data[7]~32\ = CARRY((!\inst|inst77|Timer_reg|data[6]~30\) # (!\inst|inst77|Timer_reg|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|Timer_reg|data\(7),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[6]~30\,
	combout => \inst|inst77|Timer_reg|data[7]~31_combout\,
	cout => \inst|inst77|Timer_reg|data[7]~32\);

-- Location: FF_X36_Y18_N19
\inst|inst77|Timer_reg|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[7]~31_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(7));

-- Location: LCCOMB_X36_Y18_N20
\inst|inst77|Timer_reg|data[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[8]~33_combout\ = (\inst|inst77|Timer_reg|data\(8) & (\inst|inst77|Timer_reg|data[7]~32\ $ (GND))) # (!\inst|inst77|Timer_reg|data\(8) & (!\inst|inst77|Timer_reg|data[7]~32\ & VCC))
-- \inst|inst77|Timer_reg|data[8]~34\ = CARRY((\inst|inst77|Timer_reg|data\(8) & !\inst|inst77|Timer_reg|data[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|Timer_reg|data\(8),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[7]~32\,
	combout => \inst|inst77|Timer_reg|data[8]~33_combout\,
	cout => \inst|inst77|Timer_reg|data[8]~34\);

-- Location: FF_X36_Y18_N21
\inst|inst77|Timer_reg|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[8]~33_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(8));

-- Location: LCCOMB_X36_Y18_N22
\inst|inst77|Timer_reg|data[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[9]~35_combout\ = (\inst|inst77|Timer_reg|data\(9) & (!\inst|inst77|Timer_reg|data[8]~34\)) # (!\inst|inst77|Timer_reg|data\(9) & ((\inst|inst77|Timer_reg|data[8]~34\) # (GND)))
-- \inst|inst77|Timer_reg|data[9]~36\ = CARRY((!\inst|inst77|Timer_reg|data[8]~34\) # (!\inst|inst77|Timer_reg|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(9),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[8]~34\,
	combout => \inst|inst77|Timer_reg|data[9]~35_combout\,
	cout => \inst|inst77|Timer_reg|data[9]~36\);

-- Location: FF_X36_Y18_N23
\inst|inst77|Timer_reg|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[9]~35_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(9));

-- Location: LCCOMB_X36_Y18_N24
\inst|inst77|Timer_reg|data[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|Timer_reg|data[10]~37_combout\ = (\inst|inst77|Timer_reg|data\(10) & (\inst|inst77|Timer_reg|data[9]~36\ $ (GND))) # (!\inst|inst77|Timer_reg|data\(10) & (!\inst|inst77|Timer_reg|data[9]~36\ & VCC))
-- \inst|inst77|Timer_reg|data[10]~38\ = CARRY((\inst|inst77|Timer_reg|data\(10) & !\inst|inst77|Timer_reg|data[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|Timer_reg|data\(10),
	datad => VCC,
	cin => \inst|inst77|Timer_reg|data[9]~36\,
	combout => \inst|inst77|Timer_reg|data[10]~37_combout\,
	cout => \inst|inst77|Timer_reg|data[10]~38\);

-- Location: FF_X36_Y18_N25
\inst|inst77|Timer_reg|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[10]~37_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(10));

-- Location: FF_X36_Y18_N27
\inst|inst77|Timer_reg|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|Timer_reg|data[11]~39_combout\,
	sclr => \inst|inst77|Timer_reg|data_next[12]~0_combout\,
	ena => \inst|inst77|Timer_reg|data[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|Timer_reg|data\(11));

-- Location: LCCOMB_X36_Y18_N0
\inst|inst77|inst63|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst63|LessThan1~0_combout\ = (!\inst|inst77|Timer_reg|data\(4) & (!\inst|inst77|Timer_reg|data\(6) & (!\inst|inst77|Timer_reg|data\(5) & !\inst|inst77|Timer_reg|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(4),
	datab => \inst|inst77|Timer_reg|data\(6),
	datac => \inst|inst77|Timer_reg|data\(5),
	datad => \inst|inst77|Timer_reg|data\(3),
	combout => \inst|inst77|inst63|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y18_N8
\inst|inst77|inst63|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst63|LessThan1~1_combout\ = (\inst|inst77|inst63|LessThan1~0_combout\) # (((!\inst|inst77|Timer_reg|data\(8)) # (!\inst|inst77|Timer_reg|data\(7))) # (!\inst|inst77|Timer_reg|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst63|LessThan1~0_combout\,
	datab => \inst|inst77|Timer_reg|data\(9),
	datac => \inst|inst77|Timer_reg|data\(7),
	datad => \inst|inst77|Timer_reg|data\(8),
	combout => \inst|inst77|inst63|LessThan1~1_combout\);

-- Location: LCCOMB_X37_Y18_N6
\inst|inst77|inst63|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst63|LessThan1~2_combout\ = ((!\inst|inst77|Timer_reg|data\(11) & (!\inst|inst77|Timer_reg|data\(10) & \inst|inst77|inst63|LessThan1~1_combout\))) # (!\inst|inst77|Timer_reg|data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(11),
	datab => \inst|inst77|Timer_reg|data\(10),
	datac => \inst|inst77|inst63|LessThan1~1_combout\,
	datad => \inst|inst77|Timer_reg|data\(12),
	combout => \inst|inst77|inst63|LessThan1~2_combout\);

-- Location: LCCOMB_X38_Y18_N8
\inst|inst77|bit_cnt|data_next[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|bit_cnt|data_next[0]~3_combout\ = (!\inst|inst77|bit_cnt|data\(0) & ((\inst|inst9|data\(0)) # ((\inst|inst77|inst8|data\(0)) # (\inst|inst77|inst8|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|data\(0),
	datab => \inst|inst77|inst8|data\(0),
	datac => \inst|inst77|bit_cnt|data\(0),
	datad => \inst|inst77|inst8|data\(1),
	combout => \inst|inst77|bit_cnt|data_next[0]~3_combout\);

-- Location: FF_X38_Y18_N7
\inst|inst77|inst56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst52~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst56~q\);

-- Location: LCCOMB_X38_Y18_N6
\inst|inst77|inst67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst67~0_combout\ = (\inst|inst77|inst56~q\ & !\inst|inst77|inst52~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|inst56~q\,
	datad => \inst|inst77|inst52~q\,
	combout => \inst|inst77|inst67~0_combout\);

-- Location: LCCOMB_X38_Y18_N20
\inst|inst77|bit_cnt|data[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|bit_cnt|data[1]~2_combout\ = (!\inst|inst77|inst8|data\(0) & ((\inst|inst77|inst8|data\(1) & (\inst|inst77|inst67~0_combout\)) # (!\inst|inst77|inst8|data\(1) & ((!\inst|inst9|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst67~0_combout\,
	datab => \inst|inst77|inst8|data\(1),
	datac => \inst|inst9|data\(0),
	datad => \inst|inst77|inst8|data\(0),
	combout => \inst|inst77|bit_cnt|data[1]~2_combout\);

-- Location: FF_X38_Y18_N9
\inst|inst77|bit_cnt|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|bit_cnt|data_next[0]~3_combout\,
	ena => \inst|inst77|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|bit_cnt|data\(0));

-- Location: LCCOMB_X38_Y18_N28
\inst|inst77|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst~0_combout\ = (!\inst|inst77|inst8|data\(0) & (!\inst|inst9|data\(0) & !\inst|inst77|inst8|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|inst8|data\(0),
	datac => \inst|inst9|data\(0),
	datad => \inst|inst77|inst8|data\(1),
	combout => \inst|inst77|inst~0_combout\);

-- Location: LCCOMB_X38_Y18_N2
\inst|inst77|bit_cnt|data_next[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|bit_cnt|data_next[1]~2_combout\ = (!\inst|inst77|inst~0_combout\ & (\inst|inst77|bit_cnt|data\(0) $ (\inst|inst77|bit_cnt|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|bit_cnt|data\(0),
	datac => \inst|inst77|bit_cnt|data\(1),
	datad => \inst|inst77|inst~0_combout\,
	combout => \inst|inst77|bit_cnt|data_next[1]~2_combout\);

-- Location: FF_X38_Y18_N3
\inst|inst77|bit_cnt|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|bit_cnt|data_next[1]~2_combout\,
	ena => \inst|inst77|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|bit_cnt|data\(1));

-- Location: LCCOMB_X38_Y18_N26
\inst|inst77|bit_cnt|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|bit_cnt|Add0~0_combout\ = (\inst|inst77|bit_cnt|data\(0) & \inst|inst77|bit_cnt|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|bit_cnt|data\(0),
	datad => \inst|inst77|bit_cnt|data\(1),
	combout => \inst|inst77|bit_cnt|Add0~0_combout\);

-- Location: LCCOMB_X38_Y18_N4
\inst|inst77|bit_cnt|data_next[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|bit_cnt|data_next[2]~5_combout\ = (!\inst|inst77|inst~0_combout\ & (\inst|inst77|bit_cnt|data\(2) $ (((\inst|inst77|bit_cnt|data\(0) & \inst|inst77|bit_cnt|data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|bit_cnt|data\(0),
	datab => \inst|inst77|inst~0_combout\,
	datac => \inst|inst77|bit_cnt|data\(2),
	datad => \inst|inst77|bit_cnt|data\(1),
	combout => \inst|inst77|bit_cnt|data_next[2]~5_combout\);

-- Location: FF_X38_Y18_N5
\inst|inst77|bit_cnt|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|bit_cnt|data_next[2]~5_combout\,
	ena => \inst|inst77|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|bit_cnt|data\(2));

-- Location: LCCOMB_X38_Y18_N12
\inst|inst77|bit_cnt|data_next[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|bit_cnt|data_next[3]~4_combout\ = (!\inst|inst77|inst~0_combout\ & (\inst|inst77|bit_cnt|data\(3) $ (((\inst|inst77|bit_cnt|Add0~0_combout\ & \inst|inst77|bit_cnt|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|bit_cnt|Add0~0_combout\,
	datab => \inst|inst77|bit_cnt|data\(2),
	datac => \inst|inst77|bit_cnt|data\(3),
	datad => \inst|inst77|inst~0_combout\,
	combout => \inst|inst77|bit_cnt|data_next[3]~4_combout\);

-- Location: FF_X38_Y18_N13
\inst|inst77|bit_cnt|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|bit_cnt|data_next[3]~4_combout\,
	ena => \inst|inst77|bit_cnt|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|bit_cnt|data\(3));

-- Location: LCCOMB_X38_Y18_N10
\inst|inst77|inst75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst75~0_combout\ = (!\inst|inst77|inst8|data\(0) & (\inst|inst77|bit_cnt|data\(1) & (\inst|inst77|bit_cnt|data\(0) & \inst|inst77|inst8|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst8|data\(0),
	datab => \inst|inst77|bit_cnt|data\(1),
	datac => \inst|inst77|bit_cnt|data\(0),
	datad => \inst|inst77|inst8|data\(1),
	combout => \inst|inst77|inst75~0_combout\);

-- Location: LCCOMB_X38_Y18_N24
\inst|inst77|inst79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst79~0_combout\ = (\inst|inst77|inst~0_combout\) # ((\inst|inst77|bit_cnt|data\(3) & (!\inst|inst77|bit_cnt|data\(2) & \inst|inst77|inst75~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|bit_cnt|data\(3),
	datab => \inst|inst77|inst~0_combout\,
	datac => \inst|inst77|bit_cnt|data\(2),
	datad => \inst|inst77|inst75~0_combout\,
	combout => \inst|inst77|inst79~0_combout\);

-- Location: LCCOMB_X37_Y18_N2
\inst|inst77|inst8|data[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst8|data[1]~0_combout\ = \inst|inst77|inst25~0_combout\ $ (((\inst|inst77|inst79~0_combout\) # ((!\inst|inst77|inst63|LessThan1~2_combout\ & \inst|inst77|inst9|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst63|LessThan1~2_combout\,
	datab => \inst|inst77|inst25~0_combout\,
	datac => \inst|inst77|inst9|inst4~0_combout\,
	datad => \inst|inst77|inst79~0_combout\,
	combout => \inst|inst77|inst8|data[1]~0_combout\);

-- Location: LCCOMB_X37_Y18_N24
\inst|inst77|inst8|data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst8|data[0]~1_combout\ = \inst|inst77|inst8|data\(0) $ (\inst|inst77|inst8|data[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|inst8|data\(0),
	datad => \inst|inst77|inst8|data[1]~0_combout\,
	combout => \inst|inst77|inst8|data[0]~1_combout\);

-- Location: FF_X37_Y18_N25
\inst|inst77|inst8|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst8|data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst8|data\(0));

-- Location: LCCOMB_X37_Y18_N26
\inst|inst77|inst9|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst9|inst4~0_combout\ = (\inst|inst77|inst8|data\(0) & !\inst|inst77|inst8|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|inst8|data\(0),
	datad => \inst|inst77|inst8|data\(1),
	combout => \inst|inst77|inst9|inst4~0_combout\);

-- Location: LCCOMB_X37_Y19_N6
\inst|inst77|inst12|data[10]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[10]~5_combout\ = !\inst|inst77|inst62~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|inst62~q\,
	combout => \inst|inst77|inst12|data[10]~5_combout\);

-- Location: LCCOMB_X37_Y18_N28
\inst|inst77|inst66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst66~0_combout\ = (\inst|inst77|inst67~0_combout\ & (!\inst|inst77|inst8|data\(0) & ((\inst|inst77|inst8|data\(1)) # (\inst|inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst67~0_combout\,
	datab => \inst|inst77|inst8|data\(1),
	datac => \inst|inst77|inst8|data\(0),
	datad => \inst|inst9|data\(0),
	combout => \inst|inst77|inst66~0_combout\);

-- Location: FF_X37_Y19_N7
\inst|inst77|inst12|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[10]~5_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(10));

-- Location: LCCOMB_X37_Y19_N12
\inst|inst77|inst12|data[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[9]~4_combout\ = !\inst|inst77|inst12|data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(10),
	combout => \inst|inst77|inst12|data[9]~4_combout\);

-- Location: FF_X37_Y19_N13
\inst|inst77|inst12|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[9]~4_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(9));

-- Location: LCCOMB_X36_Y19_N26
\inst|inst77|inst12|data[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[8]~3_combout\ = !\inst|inst77|inst12|data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|inst12|data\(9),
	combout => \inst|inst77|inst12|data[8]~3_combout\);

-- Location: FF_X36_Y19_N27
\inst|inst77|inst12|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[8]~3_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(8));

-- Location: FF_X36_Y19_N3
\inst|inst77|inst12|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst12|data\(8),
	sload => VCC,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(7));

-- Location: LCCOMB_X36_Y19_N20
\inst|inst77|inst12|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[6]~feeder_combout\ = \inst|inst77|inst12|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(7),
	combout => \inst|inst77|inst12|data[6]~feeder_combout\);

-- Location: FF_X36_Y19_N21
\inst|inst77|inst12|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[6]~feeder_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(6));

-- Location: LCCOMB_X36_Y19_N24
\inst|inst77|inst12|data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[5]~feeder_combout\ = \inst|inst77|inst12|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(6),
	combout => \inst|inst77|inst12|data[5]~feeder_combout\);

-- Location: FF_X36_Y19_N25
\inst|inst77|inst12|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[5]~feeder_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(5));

-- Location: LCCOMB_X36_Y19_N22
\inst|inst77|inst12|data[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[4]~2_combout\ = !\inst|inst77|inst12|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(5),
	combout => \inst|inst77|inst12|data[4]~2_combout\);

-- Location: FF_X36_Y19_N23
\inst|inst77|inst12|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[4]~2_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(4));

-- Location: LCCOMB_X36_Y19_N6
\inst|inst77|inst12|data[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[3]~1_combout\ = !\inst|inst77|inst12|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|inst12|data\(4),
	combout => \inst|inst77|inst12|data[3]~1_combout\);

-- Location: FF_X36_Y19_N7
\inst|inst77|inst12|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[3]~1_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(3));

-- Location: LCCOMB_X36_Y19_N16
\inst|inst77|inst12|data[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[2]~0_combout\ = !\inst|inst77|inst12|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(3),
	combout => \inst|inst77|inst12|data[2]~0_combout\);

-- Location: FF_X36_Y19_N17
\inst|inst77|inst12|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[2]~0_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(2));

-- Location: LCCOMB_X36_Y19_N14
\inst|inst77|inst12|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[1]~feeder_combout\ = \inst|inst77|inst12|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(2),
	combout => \inst|inst77|inst12|data[1]~feeder_combout\);

-- Location: FF_X36_Y19_N15
\inst|inst77|inst12|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[1]~feeder_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(1));

-- Location: LCCOMB_X37_Y19_N0
\inst|inst77|inst12|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst12|data[0]~feeder_combout\ = \inst|inst77|inst12|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(1),
	combout => \inst|inst77|inst12|data[0]~feeder_combout\);

-- Location: FF_X37_Y19_N1
\inst|inst77|inst12|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst12|data[0]~feeder_combout\,
	ena => \inst|inst77|inst66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst12|data\(0));

-- Location: LCCOMB_X38_Y18_N30
\inst|inst77|inst18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst18~0_combout\ = ((!\inst|inst77|bit_cnt|data\(2) & !\inst|inst77|bit_cnt|data\(1))) # (!\inst|inst77|bit_cnt|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|bit_cnt|data\(3),
	datac => \inst|inst77|bit_cnt|data\(2),
	datad => \inst|inst77|bit_cnt|data\(1),
	combout => \inst|inst77|inst18~0_combout\);

-- Location: LCCOMB_X38_Y18_N14
\inst|inst77|inst18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst18~1_combout\ = (\inst|inst77|inst8|data\(0) & (((!\inst|inst77|inst63|LessThan1~2_combout\ & !\inst|inst77|inst8|data\(1))))) # (!\inst|inst77|inst8|data\(0) & (\inst|inst77|inst18~0_combout\ & ((\inst|inst77|inst8|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst18~0_combout\,
	datab => \inst|inst77|inst8|data\(0),
	datac => \inst|inst77|inst63|LessThan1~2_combout\,
	datad => \inst|inst77|inst8|data\(1),
	combout => \inst|inst77|inst18~1_combout\);

-- Location: FF_X38_Y18_N15
\inst|inst77|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst17~q\);

-- Location: LCCOMB_X36_Y19_N30
\inst|inst77|inst31|data[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst31|data[5]~2_combout\ = !\inst|inst77|inst12|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(6),
	combout => \inst|inst77|inst31|data[5]~2_combout\);

-- Location: LCCOMB_X36_Y18_N30
\inst|inst77|inst44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst44~3_combout\ = (!\inst|inst77|Timer_reg|data\(1) & (!\inst|inst77|Timer_reg|data\(0) & (!\inst|inst77|Timer_reg|data\(2) & !\inst|inst77|Timer_reg|data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(1),
	datab => \inst|inst77|Timer_reg|data\(0),
	datac => \inst|inst77|Timer_reg|data\(2),
	datad => \inst|inst77|Timer_reg|data\(12),
	combout => \inst|inst77|inst44~3_combout\);

-- Location: LCCOMB_X37_Y18_N14
\inst|inst77|inst44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst44~2_combout\ = (\inst|inst77|Timer_reg|data\(9) & (!\inst|inst77|Timer_reg|data\(10) & (\inst|inst77|Timer_reg|data\(11) & !\inst|inst77|Timer_reg|data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(9),
	datab => \inst|inst77|Timer_reg|data\(10),
	datac => \inst|inst77|Timer_reg|data\(11),
	datad => \inst|inst77|Timer_reg|data\(8),
	combout => \inst|inst77|inst44~2_combout\);

-- Location: LCCOMB_X37_Y18_N20
\inst|inst77|inst44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst44~1_combout\ = (!\inst|inst77|Timer_reg|data\(3) & (!\inst|inst77|inst8|data\(1) & (!\inst|inst77|inst8|data\(0) & \inst|inst9|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|Timer_reg|data\(3),
	datab => \inst|inst77|inst8|data\(1),
	datac => \inst|inst77|inst8|data\(0),
	datad => \inst|inst9|data\(0),
	combout => \inst|inst77|inst44~1_combout\);

-- Location: LCCOMB_X37_Y18_N12
\inst|inst77|inst44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst44~4_combout\ = (\inst|inst77|inst44~0_combout\ & (\inst|inst77|inst44~3_combout\ & (\inst|inst77|inst44~2_combout\ & \inst|inst77|inst44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst44~0_combout\,
	datab => \inst|inst77|inst44~3_combout\,
	datac => \inst|inst77|inst44~2_combout\,
	datad => \inst|inst77|inst44~1_combout\,
	combout => \inst|inst77|inst44~4_combout\);

-- Location: FF_X36_Y19_N31
\inst|inst77|inst31|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst31|data[5]~2_combout\,
	ena => \inst|inst77|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst31|data\(5));

-- Location: FF_X36_Y19_N11
\inst|inst77|inst31|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst12|data\(4),
	sload => VCC,
	ena => \inst|inst77|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst31|data\(3));

-- Location: LCCOMB_X36_Y19_N12
\inst|inst77|inst31|data[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst31|data[4]~1_combout\ = !\inst|inst77|inst12|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(5),
	combout => \inst|inst77|inst31|data[4]~1_combout\);

-- Location: FF_X36_Y19_N13
\inst|inst77|inst31|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst31|data[4]~1_combout\,
	ena => \inst|inst77|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst31|data\(4));

-- Location: LCCOMB_X36_Y19_N28
\inst|inst77|inst31|data[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst31|data[2]~0_combout\ = !\inst|inst77|inst12|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(3),
	combout => \inst|inst77|inst31|data[2]~0_combout\);

-- Location: FF_X36_Y19_N29
\inst|inst77|inst31|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst31|data[2]~0_combout\,
	ena => \inst|inst77|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst31|data\(2));

-- Location: LCCOMB_X35_Y19_N10
\inst|inst16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~1_combout\ = (\inst|inst77|inst31|data\(5) & (\inst|inst77|inst31|data\(3) & (\inst|inst77|inst31|data\(4) & !\inst|inst77|inst31|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst31|data\(5),
	datab => \inst|inst77|inst31|data\(3),
	datac => \inst|inst77|inst31|data\(4),
	datad => \inst|inst77|inst31|data\(2),
	combout => \inst|inst16~1_combout\);

-- Location: LCCOMB_X36_Y19_N0
\inst|inst77|inst31|data[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst31|data[7]~4_combout\ = !\inst|inst77|inst12|data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|inst12|data\(8),
	combout => \inst|inst77|inst31|data[7]~4_combout\);

-- Location: FF_X36_Y19_N1
\inst|inst77|inst31|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst31|data[7]~4_combout\,
	ena => \inst|inst77|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst31|data\(7));

-- Location: LCCOMB_X36_Y19_N4
\inst|inst77|inst31|data[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst31|data[6]~3_combout\ = !\inst|inst77|inst12|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(7),
	combout => \inst|inst77|inst31|data[6]~3_combout\);

-- Location: FF_X36_Y19_N5
\inst|inst77|inst31|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst31|data[6]~3_combout\,
	ena => \inst|inst77|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst31|data\(6));

-- Location: LCCOMB_X35_Y19_N24
\inst|inst16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~2_combout\ = (\inst|inst77|inst31|data\(7) & \inst|inst77|inst31|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst77|inst31|data\(7),
	datad => \inst|inst77|inst31|data\(6),
	combout => \inst|inst16~2_combout\);

-- Location: LCCOMB_X37_Y18_N10
\inst|inst77|inst34|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst34|data[0]~0_combout\ = (\inst|inst77|inst44~4_combout\) # ((\inst|inst77|inst34|data\(0) & ((!\inst|inst9|data\(0)) # (!\inst|inst77|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|inst44~4_combout\,
	datab => \inst|inst77|inst~1_combout\,
	datac => \inst|inst77|inst34|data\(0),
	datad => \inst|inst9|data\(0),
	combout => \inst|inst77|inst34|data[0]~0_combout\);

-- Location: FF_X37_Y18_N11
\inst|inst77|inst34|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst34|data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst34|data\(0));

-- Location: LCCOMB_X37_Y19_N2
\inst|inst5|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst~feeder_combout\ = \inst|inst77|inst34|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst34|data\(0),
	combout => \inst|inst5|inst~feeder_combout\);

-- Location: FF_X37_Y19_N3
\inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst~q\);

-- Location: FF_X37_Y19_N5
\inst|inst5|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst5|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst1~q\);

-- Location: LCCOMB_X36_Y19_N8
\inst|inst77|inst31|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst77|inst31|data[1]~feeder_combout\ = \inst|inst77|inst12|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst12|data\(2),
	combout => \inst|inst77|inst31|data[1]~feeder_combout\);

-- Location: FF_X36_Y19_N9
\inst|inst77|inst31|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst77|inst31|data[1]~feeder_combout\,
	ena => \inst|inst77|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst31|data\(1));

-- Location: FF_X36_Y19_N19
\inst|inst77|inst31|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst12|data\(1),
	sload => VCC,
	ena => \inst|inst77|inst44~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst77|inst31|data\(0));

-- Location: LCCOMB_X36_Y19_N18
\inst|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~0_combout\ = (!\inst|inst5|inst1~q\ & (\inst|inst77|inst31|data\(1) & (!\inst|inst77|inst31|data\(0) & \inst|inst5|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst1~q\,
	datab => \inst|inst77|inst31|data\(1),
	datac => \inst|inst77|inst31|data\(0),
	datad => \inst|inst5|inst~q\,
	combout => \inst|inst16~0_combout\);

-- Location: LCCOMB_X35_Y19_N4
\inst|inst11|data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|data[0]~0_combout\ = (\inst|inst11|data\(0)) # ((\inst|inst16~1_combout\ & (\inst|inst16~2_combout\ & \inst|inst16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16~1_combout\,
	datab => \inst|inst16~2_combout\,
	datac => \inst|inst11|data\(0),
	datad => \inst|inst16~0_combout\,
	combout => \inst|inst11|data[0]~0_combout\);

-- Location: FF_X35_Y19_N5
\inst|inst11|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst11|data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11|data\(0));

-- Location: LCCOMB_X36_Y19_N10
\inst|inst5|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst2~0_combout\ = (!\inst|inst5|inst1~q\ & \inst|inst5|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst1~q\,
	datad => \inst|inst5|inst~q\,
	combout => \inst|inst5|inst2~0_combout\);

-- Location: LCCOMB_X32_Y19_N20
\inst|packet_byte_reg|data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|packet_byte_reg|data[0]~1_combout\ = (\inst|packet_byte_reg|data\(0) & (!\inst|packet_byte_reg|data\(1) & ((!\inst|inst11|data\(0)) # (!\inst|inst5|inst2~0_combout\)))) # (!\inst|packet_byte_reg|data\(0) & (((\inst|inst5|inst2~0_combout\ & 
-- \inst|inst11|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|packet_byte_reg|data\(1),
	datab => \inst|inst5|inst2~0_combout\,
	datac => \inst|packet_byte_reg|data\(0),
	datad => \inst|inst11|data\(0),
	combout => \inst|packet_byte_reg|data[0]~1_combout\);

-- Location: FF_X32_Y19_N21
\inst|packet_byte_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|packet_byte_reg|data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|packet_byte_reg|data\(0));

-- Location: LCCOMB_X32_Y19_N22
\inst|packet_byte_reg|data[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|packet_byte_reg|data[1]~0_combout\ = (\inst|packet_byte_reg|data\(1) & (((!\inst|packet_byte_reg|data\(0))))) # (!\inst|packet_byte_reg|data\(1) & (\inst|inst11|data\(0) & (\inst|inst5|inst2~0_combout\ & \inst|packet_byte_reg|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|data\(0),
	datab => \inst|inst5|inst2~0_combout\,
	datac => \inst|packet_byte_reg|data\(1),
	datad => \inst|packet_byte_reg|data\(0),
	combout => \inst|packet_byte_reg|data[1]~0_combout\);

-- Location: FF_X32_Y19_N23
\inst|packet_byte_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|packet_byte_reg|data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|packet_byte_reg|data\(1));

-- Location: LCCOMB_X32_Y19_N18
\inst|inst66|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst66|Equal0~0_combout\ = (\inst|packet_byte_reg|data\(1) & \inst|packet_byte_reg|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|packet_byte_reg|data\(1),
	datad => \inst|packet_byte_reg|data\(0),
	combout => \inst|inst66|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y19_N24
\inst|inst17|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst17|data[0]~feeder_combout\ = \inst|inst66|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst66|Equal0~0_combout\,
	combout => \inst|inst17|data[0]~feeder_combout\);

-- Location: FF_X32_Y19_N25
\inst|inst17|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|inst17|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst17|data\(0));

-- Location: LCCOMB_X32_Y19_N10
\inst3|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst~feeder_combout\ = \inst|inst17|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst17|data\(0),
	combout => \inst3|inst~feeder_combout\);

-- Location: FF_X32_Y19_N11
\inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst~q\);

-- Location: FF_X11_Y8_N17
\inst4|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(19));

-- Location: LCCOMB_X11_Y9_N10
\inst4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|cnt\(0) $ (GND)
-- \inst4|Add0~1\ = CARRY(!\inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X10_Y9_N10
\inst4|cnt[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[0]~11_combout\ = !\inst4|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~0_combout\,
	combout => \inst4|cnt[0]~11_combout\);

-- Location: FF_X11_Y9_N19
\inst4|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst4|cnt[0]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(0));

-- Location: LCCOMB_X11_Y9_N12
\inst4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|cnt\(1) & (!\inst4|Add0~1\)) # (!\inst4|cnt\(1) & (\inst4|Add0~1\ & VCC))
-- \inst4|Add0~3\ = CARRY((\inst4|cnt\(1) & !\inst4|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X11_Y9_N0
\inst4|cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[1]~10_combout\ = !\inst4|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~2_combout\,
	combout => \inst4|cnt[1]~10_combout\);

-- Location: FF_X11_Y9_N1
\inst4|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|cnt[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(1));

-- Location: LCCOMB_X11_Y9_N14
\inst4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|cnt\(2) & (\inst4|Add0~3\ $ (GND))) # (!\inst4|cnt\(2) & ((GND) # (!\inst4|Add0~3\)))
-- \inst4|Add0~5\ = CARRY((!\inst4|Add0~3\) # (!\inst4|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: LCCOMB_X10_Y9_N16
\inst4|cnt[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[2]~9_combout\ = !\inst4|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~4_combout\,
	combout => \inst4|cnt[2]~9_combout\);

-- Location: FF_X11_Y9_N25
\inst4|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst4|cnt[2]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(2));

-- Location: LCCOMB_X11_Y9_N16
\inst4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|cnt\(3) & (!\inst4|Add0~5\)) # (!\inst4|cnt\(3) & (\inst4|Add0~5\ & VCC))
-- \inst4|Add0~7\ = CARRY((\inst4|cnt\(3) & !\inst4|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: LCCOMB_X11_Y9_N2
\inst4|cnt[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[3]~8_combout\ = !\inst4|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Add0~6_combout\,
	combout => \inst4|cnt[3]~8_combout\);

-- Location: FF_X11_Y9_N3
\inst4|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|cnt[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(3));

-- Location: LCCOMB_X11_Y9_N18
\inst4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|cnt\(4) & (\inst4|Add0~7\ $ (GND))) # (!\inst4|cnt\(4) & ((GND) # (!\inst4|Add0~7\)))
-- \inst4|Add0~9\ = CARRY((!\inst4|Add0~7\) # (!\inst4|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X10_Y9_N26
\inst4|cnt[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[4]~7_combout\ = !\inst4|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Add0~8_combout\,
	combout => \inst4|cnt[4]~7_combout\);

-- Location: FF_X11_Y9_N13
\inst4|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst4|cnt[4]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(4));

-- Location: LCCOMB_X11_Y9_N20
\inst4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|cnt\(5) & (\inst4|Add0~9\ & VCC)) # (!\inst4|cnt\(5) & (!\inst4|Add0~9\))
-- \inst4|Add0~11\ = CARRY((!\inst4|cnt\(5) & !\inst4|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: FF_X11_Y9_N21
\inst4|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(5));

-- Location: LCCOMB_X11_Y9_N22
\inst4|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|cnt\(6) & ((GND) # (!\inst4|Add0~11\))) # (!\inst4|cnt\(6) & (\inst4|Add0~11\ $ (GND)))
-- \inst4|Add0~13\ = CARRY((\inst4|cnt\(6)) # (!\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: FF_X11_Y9_N23
\inst4|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(6));

-- Location: LCCOMB_X11_Y9_N24
\inst4|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|cnt\(7) & (!\inst4|Add0~13\)) # (!\inst4|cnt\(7) & (\inst4|Add0~13\ & VCC))
-- \inst4|Add0~15\ = CARRY((\inst4|cnt\(7) & !\inst4|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCCOMB_X10_Y9_N0
\inst4|cnt[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[7]~6_combout\ = !\inst4|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Add0~14_combout\,
	combout => \inst4|cnt[7]~6_combout\);

-- Location: FF_X11_Y9_N27
\inst4|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst4|cnt[7]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(7));

-- Location: LCCOMB_X11_Y9_N26
\inst4|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|cnt\(8) & (\inst4|Add0~15\ $ (GND))) # (!\inst4|cnt\(8) & ((GND) # (!\inst4|Add0~15\)))
-- \inst4|Add0~17\ = CARRY((!\inst4|Add0~15\) # (!\inst4|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: LCCOMB_X11_Y9_N8
\inst4|cnt[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[8]~5_combout\ = !\inst4|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~16_combout\,
	combout => \inst4|cnt[8]~5_combout\);

-- Location: FF_X11_Y9_N9
\inst4|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|cnt[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(8));

-- Location: LCCOMB_X11_Y9_N28
\inst4|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|cnt\(9) & (\inst4|Add0~17\ & VCC)) # (!\inst4|cnt\(9) & (!\inst4|Add0~17\))
-- \inst4|Add0~19\ = CARRY((!\inst4|cnt\(9) & !\inst4|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: FF_X11_Y9_N29
\inst4|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(9));

-- Location: LCCOMB_X11_Y9_N30
\inst4|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|cnt\(10) & (\inst4|Add0~19\ $ (GND))) # (!\inst4|cnt\(10) & ((GND) # (!\inst4|Add0~19\)))
-- \inst4|Add0~21\ = CARRY((!\inst4|Add0~19\) # (!\inst4|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: LCCOMB_X10_Y9_N6
\inst4|cnt[10]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[10]~4_combout\ = !\inst4|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~20_combout\,
	combout => \inst4|cnt[10]~4_combout\);

-- Location: FF_X11_Y9_N11
\inst4|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst4|cnt[10]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(10));

-- Location: LCCOMB_X11_Y8_N0
\inst4|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|cnt\(11) & (\inst4|Add0~21\ & VCC)) # (!\inst4|cnt\(11) & (!\inst4|Add0~21\))
-- \inst4|Add0~23\ = CARRY((!\inst4|cnt\(11) & !\inst4|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: FF_X11_Y8_N1
\inst4|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(11));

-- Location: LCCOMB_X11_Y8_N2
\inst4|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|cnt\(12) & ((GND) # (!\inst4|Add0~23\))) # (!\inst4|cnt\(12) & (\inst4|Add0~23\ $ (GND)))
-- \inst4|Add0~25\ = CARRY((\inst4|cnt\(12)) # (!\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: FF_X11_Y8_N3
\inst4|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(12));

-- Location: LCCOMB_X11_Y8_N4
\inst4|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|cnt\(13) & (!\inst4|Add0~25\)) # (!\inst4|cnt\(13) & (\inst4|Add0~25\ & VCC))
-- \inst4|Add0~27\ = CARRY((\inst4|cnt\(13) & !\inst4|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: LCCOMB_X10_Y8_N14
\inst4|cnt[13]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[13]~3_combout\ = !\inst4|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Add0~26_combout\,
	combout => \inst4|cnt[13]~3_combout\);

-- Location: FF_X10_Y8_N15
\inst4|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|cnt[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(13));

-- Location: LCCOMB_X11_Y8_N6
\inst4|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|cnt\(14) & ((GND) # (!\inst4|Add0~27\))) # (!\inst4|cnt\(14) & (\inst4|Add0~27\ $ (GND)))
-- \inst4|Add0~29\ = CARRY((\inst4|cnt\(14)) # (!\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: FF_X11_Y8_N7
\inst4|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(14));

-- Location: LCCOMB_X11_Y8_N8
\inst4|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|cnt\(15) & (\inst4|Add0~29\ & VCC)) # (!\inst4|cnt\(15) & (!\inst4|Add0~29\))
-- \inst4|Add0~31\ = CARRY((!\inst4|cnt\(15) & !\inst4|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: FF_X11_Y8_N9
\inst4|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(15));

-- Location: LCCOMB_X11_Y8_N10
\inst4|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|cnt\(16) & ((GND) # (!\inst4|Add0~31\))) # (!\inst4|cnt\(16) & (\inst4|Add0~31\ $ (GND)))
-- \inst4|Add0~33\ = CARRY((\inst4|cnt\(16)) # (!\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: FF_X11_Y8_N11
\inst4|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(16));

-- Location: LCCOMB_X11_Y8_N12
\inst4|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|cnt\(17) & (!\inst4|Add0~33\)) # (!\inst4|cnt\(17) & (\inst4|Add0~33\ & VCC))
-- \inst4|Add0~35\ = CARRY((\inst4|cnt\(17) & !\inst4|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: LCCOMB_X10_Y8_N16
\inst4|cnt[17]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[17]~2_combout\ = !\inst4|Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~34_combout\,
	combout => \inst4|cnt[17]~2_combout\);

-- Location: FF_X10_Y8_N17
\inst4|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|cnt[17]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(17));

-- Location: LCCOMB_X11_Y8_N14
\inst4|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|cnt\(18) & (\inst4|Add0~35\ $ (GND))) # (!\inst4|cnt\(18) & ((GND) # (!\inst4|Add0~35\)))
-- \inst4|Add0~37\ = CARRY((!\inst4|Add0~35\) # (!\inst4|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: LCCOMB_X10_Y8_N10
\inst4|cnt[18]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[18]~1_combout\ = !\inst4|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~36_combout\,
	combout => \inst4|cnt[18]~1_combout\);

-- Location: FF_X10_Y8_N11
\inst4|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|cnt[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(18));

-- Location: LCCOMB_X11_Y8_N16
\inst4|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|cnt\(19) & (\inst4|Add0~37\ & VCC)) # (!\inst4|cnt\(19) & (!\inst4|Add0~37\))
-- \inst4|Add0~39\ = CARRY((!\inst4|cnt\(19) & !\inst4|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: FF_X11_Y8_N19
\inst4|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(20));

-- Location: LCCOMB_X11_Y8_N18
\inst4|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|cnt\(20) & ((GND) # (!\inst4|Add0~39\))) # (!\inst4|cnt\(20) & (\inst4|Add0~39\ $ (GND)))
-- \inst4|Add0~41\ = CARRY((\inst4|cnt\(20)) # (!\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: LCCOMB_X11_Y8_N22
\inst4|out_clk_next~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|out_clk_next~3_combout\ = (\inst4|Add0~38_combout\) # ((\inst4|Add0~36_combout\) # (\inst4|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~38_combout\,
	datac => \inst4|Add0~36_combout\,
	datad => \inst4|Add0~40_combout\,
	combout => \inst4|out_clk_next~3_combout\);

-- Location: LCCOMB_X10_Y8_N12
\inst4|cnt[21]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt[21]~0_combout\ = !\inst4|Add0~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~42_combout\,
	combout => \inst4|cnt[21]~0_combout\);

-- Location: FF_X10_Y8_N13
\inst4|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|cnt[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(21));

-- Location: LCCOMB_X11_Y8_N20
\inst4|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = \inst4|Add0~41\ $ (\inst4|cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|cnt\(21),
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\);

-- Location: LCCOMB_X11_Y9_N6
\inst4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst4|Add0~16_combout\ & (!\inst4|Add0~18_combout\ & (!\inst4|Add0~20_combout\ & !\inst4|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~16_combout\,
	datab => \inst4|Add0~18_combout\,
	datac => \inst4|Add0~20_combout\,
	datad => \inst4|Add0~22_combout\,
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y9_N12
\inst4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (!\inst4|Add0~0_combout\ & (!\inst4|Add0~2_combout\ & (!\inst4|Add0~4_combout\ & !\inst4|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~0_combout\,
	datab => \inst4|Add0~2_combout\,
	datac => \inst4|Add0~4_combout\,
	datad => \inst4|Add0~6_combout\,
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y9_N4
\inst4|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (!\inst4|Add0~8_combout\ & (!\inst4|Add0~10_combout\ & (!\inst4|Add0~12_combout\ & !\inst4|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~8_combout\,
	datab => \inst4|Add0~10_combout\,
	datac => \inst4|Add0~12_combout\,
	datad => \inst4|Add0~14_combout\,
	combout => \inst4|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y8_N24
\inst4|out_clk_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|out_clk_next~0_combout\ = (\inst4|Add0~26_combout\) # ((\inst4|Add0~24_combout\) # ((!\inst4|Equal0~2_combout\) # (!\inst4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~26_combout\,
	datab => \inst4|Add0~24_combout\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst4|Equal0~2_combout\,
	combout => \inst4|out_clk_next~0_combout\);

-- Location: LCCOMB_X11_Y8_N30
\inst4|out_clk_next~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|out_clk_next~1_combout\ = (\inst4|Add0~28_combout\) # ((\inst4|Add0~30_combout\) # ((\inst4|out_clk_next~0_combout\) # (!\inst4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~28_combout\,
	datab => \inst4|Add0~30_combout\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|out_clk_next~0_combout\,
	combout => \inst4|out_clk_next~1_combout\);

-- Location: LCCOMB_X11_Y8_N28
\inst4|out_clk_next~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|out_clk_next~2_combout\ = (\inst4|Add0~34_combout\) # ((\inst4|out_clk_next~1_combout\) # (\inst4|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~34_combout\,
	datac => \inst4|out_clk_next~1_combout\,
	datad => \inst4|Add0~32_combout\,
	combout => \inst4|out_clk_next~2_combout\);

-- Location: LCCOMB_X11_Y8_N26
\inst4|out_clk_next~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|out_clk_next~4_combout\ = \inst4|out_clk_next~q\ $ (((!\inst4|out_clk_next~3_combout\ & (!\inst4|Add0~42_combout\ & !\inst4|out_clk_next~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|out_clk_next~3_combout\,
	datab => \inst4|Add0~42_combout\,
	datac => \inst4|out_clk_next~q\,
	datad => \inst4|out_clk_next~2_combout\,
	combout => \inst4|out_clk_next~4_combout\);

-- Location: FF_X11_Y8_N27
\inst4|out_clk_next\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst4|out_clk_next~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|out_clk_next~q\);

-- Location: LCCOMB_X32_Y19_N14
\inst13|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|inst~feeder_combout\ = \inst4|out_clk_next~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|out_clk_next~q\,
	combout => \inst13|inst~feeder_combout\);

-- Location: FF_X32_Y19_N15
\inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst13|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst~q\);

-- Location: FF_X32_Y19_N9
\inst13|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst13|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst1~q\);

-- Location: LCCOMB_X32_Y19_N0
\inst3|inst1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1~feeder_combout\ = \inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst~q\,
	combout => \inst3|inst1~feeder_combout\);

-- Location: FF_X32_Y19_N1
\inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst3|inst1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1~q\);

-- Location: LCCOMB_X32_Y19_N30
\inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25~0_combout\ = (!\inst13|inst1~q\ & (\inst13|inst~q\ & ((\inst3|inst1~q\) # (!\inst3|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst~q\,
	datab => \inst13|inst1~q\,
	datac => \inst13|inst~q\,
	datad => \inst3|inst1~q\,
	combout => \inst25~0_combout\);

-- Location: FF_X35_Y19_N13
\inst|mouse_data_int_reg52|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst31|data\(5),
	sload => VCC,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(5));

-- Location: LCCOMB_X32_Y19_N2
\inst|mouse_data_reg|data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[5]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(5),
	combout => \inst|mouse_data_reg|data[5]~feeder_combout\);

-- Location: FF_X32_Y19_N3
\inst|mouse_data_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[5]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(5));

-- Location: LCCOMB_X31_Y19_N10
\inst22|data_next[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[5]~7_combout\ = (!\inst25~0_combout\ & \inst|mouse_data_reg|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25~0_combout\,
	datad => \inst|mouse_data_reg|data\(5),
	combout => \inst22|data_next[5]~7_combout\);

-- Location: LCCOMB_X32_Y19_N12
\inst22|data_next[21]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[21]~1_combout\ = (\inst3|inst~q\ & (((\inst13|inst~q\ & !\inst13|inst1~q\)) # (!\inst3|inst1~q\))) # (!\inst3|inst~q\ & (\inst13|inst~q\ & (!\inst13|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst~q\,
	datab => \inst13|inst~q\,
	datac => \inst13|inst1~q\,
	datad => \inst3|inst1~q\,
	combout => \inst22|data_next[21]~1_combout\);

-- Location: FF_X31_Y19_N11
\inst22|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[5]~7_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(5));

-- Location: LCCOMB_X35_Y19_N26
\inst|mouse_data_int_reg52|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[6]~feeder_combout\ = \inst|inst77|inst31|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst31|data\(6),
	combout => \inst|mouse_data_int_reg52|data[6]~feeder_combout\);

-- Location: FF_X35_Y19_N27
\inst|mouse_data_int_reg52|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[6]~feeder_combout\,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(6));

-- Location: LCCOMB_X31_Y19_N14
\inst|mouse_data_reg|data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[6]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(6),
	combout => \inst|mouse_data_reg|data[6]~feeder_combout\);

-- Location: FF_X31_Y19_N15
\inst|mouse_data_reg|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[6]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(6));

-- Location: LCCOMB_X31_Y19_N24
\inst22|data_next[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[6]~8_combout\ = (!\inst25~0_combout\ & \inst|mouse_data_reg|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~0_combout\,
	datac => \inst|mouse_data_reg|data\(6),
	combout => \inst22|data_next[6]~8_combout\);

-- Location: FF_X31_Y19_N25
\inst22|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[6]~8_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(6));

-- Location: FF_X35_Y19_N21
\inst|mouse_data_int_reg52|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst31|data\(7),
	sload => VCC,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(7));

-- Location: LCCOMB_X32_Y19_N16
\inst|mouse_data_reg|data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[7]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(7),
	combout => \inst|mouse_data_reg|data[7]~feeder_combout\);

-- Location: FF_X32_Y19_N17
\inst|mouse_data_reg|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[7]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(7));

-- Location: LCCOMB_X31_Y19_N26
\inst22|data_next[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[7]~9_combout\ = (!\inst25~0_combout\ & \inst|mouse_data_reg|data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25~0_combout\,
	datad => \inst|mouse_data_reg|data\(7),
	combout => \inst22|data_next[7]~9_combout\);

-- Location: FF_X31_Y19_N27
\inst22|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[7]~9_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(7));

-- Location: FF_X35_Y19_N31
\inst|mouse_data_int_reg52|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst31|data\(4),
	sload => VCC,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(4));

-- Location: LCCOMB_X31_Y19_N12
\inst|mouse_data_reg|data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[4]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(4),
	combout => \inst|mouse_data_reg|data[4]~feeder_combout\);

-- Location: FF_X31_Y19_N13
\inst|mouse_data_reg|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[4]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(4));

-- Location: LCCOMB_X31_Y19_N16
\inst22|data_next[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[4]~6_combout\ = (!\inst25~0_combout\ & \inst|mouse_data_reg|data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25~0_combout\,
	datad => \inst|mouse_data_reg|data\(4),
	combout => \inst22|data_next[4]~6_combout\);

-- Location: FF_X31_Y19_N17
\inst22|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[4]~6_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(4));

-- Location: LCCOMB_X31_Y19_N28
\inst32|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32|Equal0~1_combout\ = (!\inst22|data\(5) & (!\inst22|data\(6) & (!\inst22|data\(7) & !\inst22|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|data\(5),
	datab => \inst22|data\(6),
	datac => \inst22|data\(7),
	datad => \inst22|data\(4),
	combout => \inst32|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y19_N18
\inst|mouse_data_int_reg|data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg|data[5]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(5),
	combout => \inst|mouse_data_int_reg|data[5]~feeder_combout\);

-- Location: FF_X35_Y19_N19
\inst|mouse_data_int_reg|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg|data[5]~feeder_combout\,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg|data\(5));

-- Location: LCCOMB_X35_Y19_N16
\inst|mouse_data_int_reg53|data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg53|data[5]~feeder_combout\ = \inst|mouse_data_int_reg|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg|data\(5),
	combout => \inst|mouse_data_int_reg53|data[5]~feeder_combout\);

-- Location: FF_X35_Y19_N17
\inst|mouse_data_int_reg53|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg53|data[5]~feeder_combout\,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg53|data\(5));

-- Location: LCCOMB_X32_Y19_N28
\inst|mouse_data_reg|data[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[21]~feeder_combout\ = \inst|mouse_data_int_reg53|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg53|data\(5),
	combout => \inst|mouse_data_reg|data[21]~feeder_combout\);

-- Location: FF_X32_Y19_N29
\inst|mouse_data_reg|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[21]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(21));

-- Location: LCCOMB_X31_Y19_N8
\inst22|data_next[21]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[21]~0_combout\ = (!\inst25~0_combout\ & \inst|mouse_data_reg|data\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25~0_combout\,
	datad => \inst|mouse_data_reg|data\(21),
	combout => \inst22|data_next[21]~0_combout\);

-- Location: FF_X31_Y19_N9
\inst22|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[21]~0_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(21));

-- Location: LCCOMB_X35_Y19_N22
\inst|mouse_data_int_reg52|data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[2]~feeder_combout\ = \inst|inst77|inst31|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst31|data\(2),
	combout => \inst|mouse_data_int_reg52|data[2]~feeder_combout\);

-- Location: FF_X35_Y19_N23
\inst|mouse_data_int_reg52|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[2]~feeder_combout\,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(2));

-- Location: LCCOMB_X32_Y19_N4
\inst|mouse_data_reg|data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[2]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(2),
	combout => \inst|mouse_data_reg|data[2]~feeder_combout\);

-- Location: FF_X32_Y19_N5
\inst|mouse_data_reg|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[2]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(2));

-- Location: LCCOMB_X31_Y19_N22
\inst22|data_next[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[2]~4_combout\ = (!\inst25~0_combout\ & \inst|mouse_data_reg|data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25~0_combout\,
	datad => \inst|mouse_data_reg|data\(2),
	combout => \inst22|data_next[2]~4_combout\);

-- Location: FF_X31_Y19_N23
\inst22|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[2]~4_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(2));

-- Location: FF_X35_Y19_N1
\inst|mouse_data_int_reg52|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst31|data\(3),
	sload => VCC,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(3));

-- Location: LCCOMB_X31_Y19_N2
\inst|mouse_data_reg|data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[3]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(3),
	combout => \inst|mouse_data_reg|data[3]~feeder_combout\);

-- Location: FF_X31_Y19_N3
\inst|mouse_data_reg|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[3]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(3));

-- Location: LCCOMB_X31_Y19_N20
\inst22|data_next[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[3]~5_combout\ = (\inst|mouse_data_reg|data\(3) & !\inst25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mouse_data_reg|data\(3),
	datac => \inst25~0_combout\,
	combout => \inst22|data_next[3]~5_combout\);

-- Location: FF_X31_Y19_N21
\inst22|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[3]~5_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(3));

-- Location: FF_X35_Y19_N29
\inst|mouse_data_int_reg52|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|inst77|inst31|data\(0),
	sload => VCC,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(0));

-- Location: LCCOMB_X32_Y19_N26
\inst|mouse_data_reg|data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_reg|data[0]~feeder_combout\ = \inst|mouse_data_int_reg52|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mouse_data_int_reg52|data\(0),
	combout => \inst|mouse_data_reg|data[0]~feeder_combout\);

-- Location: FF_X32_Y19_N27
\inst|mouse_data_reg|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_reg|data[0]~feeder_combout\,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(0));

-- Location: LCCOMB_X31_Y19_N4
\inst22|data_next[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[0]~3_combout\ = (!\inst25~0_combout\ & \inst|mouse_data_reg|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25~0_combout\,
	datad => \inst|mouse_data_reg|data\(0),
	combout => \inst22|data_next[0]~3_combout\);

-- Location: FF_X31_Y19_N5
\inst22|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[0]~3_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(0));

-- Location: LCCOMB_X35_Y19_N6
\inst|mouse_data_int_reg52|data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_data_int_reg52|data[1]~feeder_combout\ = \inst|inst77|inst31|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst77|inst31|data\(1),
	combout => \inst|mouse_data_int_reg52|data[1]~feeder_combout\);

-- Location: FF_X35_Y19_N7
\inst|mouse_data_int_reg52|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst|mouse_data_int_reg52|data[1]~feeder_combout\,
	ena => \inst|inst5|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_int_reg52|data\(1));

-- Location: FF_X31_Y19_N1
\inst|mouse_data_reg|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	asdata => \inst|mouse_data_int_reg52|data\(1),
	sload => VCC,
	ena => \inst|inst66|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_data_reg|data\(1));

-- Location: LCCOMB_X31_Y19_N6
\inst22|data_next[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|data_next[1]~2_combout\ = (!\inst25~0_combout\ & \inst|mouse_data_reg|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25~0_combout\,
	datad => \inst|mouse_data_reg|data\(1),
	combout => \inst22|data_next[1]~2_combout\);

-- Location: FF_X31_Y19_N7
\inst22|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_~inputclkctrl_outclk\,
	d => \inst22|data_next[1]~2_combout\,
	ena => \inst22|data_next[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|data\(1));

-- Location: LCCOMB_X31_Y19_N18
\inst32|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32|Equal0~0_combout\ = (!\inst22|data\(2) & (!\inst22|data\(3) & (!\inst22|data\(0) & !\inst22|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|data\(2),
	datab => \inst22|data\(3),
	datac => \inst22|data\(0),
	datad => \inst22|data\(1),
	combout => \inst32|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y19_N30
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\inst22|data\(21)) # ((\inst32|Equal0~1_combout\ & \inst32|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Equal0~1_combout\,
	datac => \inst22|data\(21),
	datad => \inst32|Equal0~0_combout\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X31_Y19_N0
inst5 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\inst22|data\(21) & ((!\inst32|Equal0~0_combout\) # (!\inst32|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|Equal0~1_combout\,
	datab => \inst22|data\(21),
	datad => \inst32|Equal0~0_combout\,
	combout => \inst5~combout\);

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


