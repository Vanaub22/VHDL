LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY counter_test IS
END counter_test;
 
ARCHITECTURE behavior OF counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_rtl
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         mode : IN  std_logic;
         q : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal mode : std_logic := '0';

	--BiDirs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_rtl PORT MAP (
          clk => clk,
          reset => reset,
          mode => mode,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
	reset<='0';
	mode<='0';
	wait for 30 ps;
	reset<='0';
	mode<='1';
	wait for 30 ps;
   end process;

END;
