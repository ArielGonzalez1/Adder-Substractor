-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/29/2023 22:57:40"
                                                            
-- Vhdl Test Bench template for design  :  AdderSub
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AdderSub_vhd_tst IS
END AdderSub_vhd_tst;
ARCHITECTURE AdderSub_arch OF AdderSub_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Overflow : STD_LOGIC;
SIGNAL Result : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Sub : STD_LOGIC;
COMPONENT AdderSub
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Overflow : OUT STD_LOGIC;
	Result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Sub : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AdderSub
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Overflow => Overflow,
	Result => Result,
	Sub => Sub
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once   
 -- code that exece only once   
	  
			Sub <= '1';
			A <= "1000";
			B <= "0010";
			WAIT FOR 10 ns; --Result 3
			
			Sub <= '1';
			A <= "0110";
			B <= "0011";
			WAIT FOR 10 ns; --Result 3
			
	 
			Sub <= '0';
			A <= "0110";
			B <= "0001";
			WAIT FOR 10 ns; --Result 
					  
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END AdderSub_arch;
