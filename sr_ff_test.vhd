LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sr_ff_test IS
END sr_ff_test;
 
ARCHITECTURE behavior OF sr_ff_test IS  
    COMPONENT sr_ff
    PORT(
         s : IN  std_logic;
         r : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic;
         qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic := '0';
   signal r : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qbar : std_logic;
   constant clk_period : time := 2 ps;
BEGIN
   uut: sr_ff PORT MAP (
          s => s,
          r => r,
          clk => clk,
          reset => reset,
          q => q,
          qbar => qbar
        );
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
   stim_proc: process
   begin	
		reset<='0';
		s<='0';
		r<='0';
      wait for clk_period;	
		s<='0';
		r<='1';
      wait for clk_period;
		s<='0';
		r<='0';
      wait for clk_period;	
		s<='1';
		r<='0';
      wait for clk_period;	
		s<='0';
		r<='0';
      wait for clk_period;	
		s<='1';
		r<='1';
		wait for clk_period;
   end process;
END;