LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY and_test IS
END and_test;
 
ARCHITECTURE behavior OF and_test IS 
 
    COMPONENT and_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;

   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic;
 
 
BEGIN

   uut: and_rtl PORT MAP (
          a => a,
          b => b,
          c => c
        );

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
