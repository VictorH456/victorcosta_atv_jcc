-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/02/2023 15:56:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux4_vhd_vec_tst IS
END mux4_vhd_vec_tst;
ARCHITECTURE mux4_arch OF mux4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL s0 : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT mux4
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	s0 : IN STD_LOGIC;
	s1 : IN STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux4
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	s0 => s0,
	s1 => s1,
	z => z
	);

-- a
t_prcs_a: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		a <= '0';
		WAIT FOR 45000 ps;
		a <= '1';
		WAIT FOR 45000 ps;
	END LOOP;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		b <= '0';
		WAIT FOR 75000 ps;
		b <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	b <= '0';
	WAIT FOR 75000 ps;
	b <= '1';
WAIT;
END PROCESS t_prcs_b;

-- c
t_prcs_c: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		c <= '0';
		WAIT FOR 65000 ps;
		c <= '1';
		WAIT FOR 65000 ps;
	END LOOP;
	c <= '0';
	WAIT FOR 65000 ps;
	c <= '1';
WAIT;
END PROCESS t_prcs_c;

-- d
t_prcs_d: PROCESS
BEGIN
LOOP
	d <= '0';
	WAIT FOR 50000 ps;
	d <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_d;

-- s0
t_prcs_s0: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		s0 <= '0';
		WAIT FOR 35000 ps;
		s0 <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	s0 <= '0';
WAIT;
END PROCESS t_prcs_s0;

-- s1
t_prcs_s1: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		s1 <= '0';
		WAIT FOR 90000 ps;
		s1 <= '1';
		WAIT FOR 90000 ps;
	END LOOP;
	s1 <= '0';
	WAIT FOR 90000 ps;
	s1 <= '1';
WAIT;
END PROCESS t_prcs_s1;
END mux4_arch;
