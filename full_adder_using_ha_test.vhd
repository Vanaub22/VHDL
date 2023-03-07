LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY full_adder_using_ha_test IS
END full_adder_using_ha_test;
ARCHITECTURE behavior OF full_adder_using_ha_test IS  
    COMPONENT full_adder_using_ha
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         SUM : OUT  std_logic;
         CARRY : OUT  std_logic
        );
    END COMPONENT;
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';
   signal SUM : std_logic;
   signal CARRY : std_logic; 
BEGIN
   uut: full_adder_using_ha PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          SUM => SUM,
          CARRY => CARRY
        );
   stim_proc: process
   begin		
	A<='0';
	B<='0';
	Cin<='0';
	wait for 1 ps;
	A<='0';
	B<='0';
	Cin<='1';
	wait for 1 ps;
	A<='0';
	B<='1';
	Cin<='0';
	wait for 1 ps;
	A<='0';
	B<='1';
	Cin<='1';
	wait for 1 ps;
	A<='1';
	B<='0';
	Cin<='0';
	wait for 1 ps;
	A<='1';
	B<='0';
	Cin<='1';
	wait for 1 ps;
	A<='1';
	B<='1';
	Cin<='0';
	wait for 1 ps;
	A<='1';
	B<='1';
	Cin<='1';
	wait for 1 ps;
   end process;
END;
