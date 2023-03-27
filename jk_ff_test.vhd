LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY jk_ff_test IS
END jk_ff_test;
ARCHITECTURE behavior OF jk_ff_test IS 
    COMPONENT jk_ff_rtl
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic;
         qp : OUT  std_logic
        );
    END COMPONENT;
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal q : std_logic;
   signal qp : std_logic;

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jk_ff_rtl PORT MAP (
          j => j,
          k => k,
          clk => clk,
          reset => reset,
          q => q,
          qp => qp
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
		j<='0';
		k<='0';
		wait for 2 ps;
		j<='0';
		k<='1';
		wait for 2 ps;
		j<='1';
		k<='0';
		wait for 2 ps;
		j<='1';
		k<='1';
		wait for 2 ps;
		reset<='1';
   end process;

END;
