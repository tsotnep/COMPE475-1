-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/04/2022 23:39:57"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Y_mux IS
    PORT (
	input_1 : IN std_logic;
	input_2 : IN std_logic;
	\select\ : IN std_logic;
	\out\ : OUT std_logic
	);
END Y_mux;

-- Design Ports Information
-- out	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_2	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_1	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Y_mux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_1 : std_logic;
SIGNAL ww_input_2 : std_logic;
SIGNAL \ww_select\ : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input_2~input_o\ : std_logic;
SIGNAL \select~input_o\ : std_logic;
SIGNAL \input_1~input_o\ : std_logic;
SIGNAL \out~0_combout\ : std_logic;
SIGNAL \ALT_INV_input_1~input_o\ : std_logic;
SIGNAL \ALT_INV_select~input_o\ : std_logic;
SIGNAL \ALT_INV_input_2~input_o\ : std_logic;

BEGIN

ww_input_1 <= input_1;
ww_input_2 <= input_2;
\ww_select\ <= \select\;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_1~input_o\ <= NOT \input_1~input_o\;
\ALT_INV_select~input_o\ <= NOT \select~input_o\;
\ALT_INV_input_2~input_o\ <= NOT \input_2~input_o\;

-- Location: IOOBUF_X57_Y0_N19
\out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out~0_combout\,
	devoe => ww_devoe,
	o => \ww_out\);

-- Location: IOIBUF_X55_Y0_N58
\input_2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_2,
	o => \input_2~input_o\);

-- Location: IOIBUF_X55_Y0_N41
\select~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_select\,
	o => \select~input_o\);

-- Location: IOIBUF_X55_Y0_N75
\input_1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_1,
	o => \input_1~input_o\);

-- Location: MLABCELL_X55_Y1_N30
\out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out~0_combout\ = ( \select~input_o\ & ( \input_1~input_o\ & ( \input_2~input_o\ ) ) ) # ( !\select~input_o\ & ( \input_1~input_o\ ) ) # ( \select~input_o\ & ( !\input_1~input_o\ & ( \input_2~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_2~input_o\,
	datae => \ALT_INV_select~input_o\,
	dataf => \ALT_INV_input_1~input_o\,
	combout => \out~0_combout\);

-- Location: LABCELL_X13_Y12_N3
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


