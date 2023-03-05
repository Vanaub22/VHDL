--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:34:12 02/20/2023
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000121036/and_gate/and_test.vhd
-- Project Name:  and_gate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: and_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY and_test IS
END and_test;
 
ARCHITECTURE behavior OF and_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: and_rtl PORT MAP (
          a => a,
          b => b,
          c => c
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      a<='0';
		b<='0';
		wait for 1 ps;
		a<='0';
		b<='1';
		wait for 1 ps;
		a<='1';
		b<='0';
		wait for 1 ps;
		a<='1';
		b<='1';
		wait for 1 ps;
   end process;

END;
