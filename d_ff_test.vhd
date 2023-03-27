LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY d_ff_test IS
END d_ff_test;
ARCHITECTURE behavior OF d_ff_test IS  
    COMPONENT d_ff_rtl
    PORT(
         d : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         qp : OUT  std_logic
        );
    END COMPONENT;
   signal d : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal q : std_logic;
   signal qp : std_logic;
   constant clk_period : time := 2 ps;
BEGIN
   uut: d_ff_rtl PORT MAP (
          d => d,
          reset => reset,
          clk => clk,
          q => q,
          qp => qp
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
	d<='0';
	wait for 2 ps;
	d<='1';
	wait for 2 ps;
   end process;
END;
