LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY sipo_test IS
END sipo_test;
ARCHITECTURE behavior OF sipo_test IS 
    COMPONENT sipo_rtl
    PORT(
         s : IN  std_logic;
         clock : IN  std_logic;
         clr : IN  std_logic;
         op : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   signal s : std_logic := '0';
   signal clock : std_logic := '0';
   signal clr : std_logic := '0';
   signal op : std_logic_vector(3 downto 0);
   constant clock_period : time := 2 ps;
BEGIN
   uut: sipo_rtl PORT MAP (
          s => s,
          clock => clock,
          clr => clr,
          op => op
        );
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
   stim_proc: process
   begin		
   s<='1';
	clr<='0';
	wait for 2 ps;
   end process;	
END;