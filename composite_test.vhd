LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY composite_test IS
END composite_test;
ARCHITECTURE behavior OF composite_test IS  
    COMPONENT composite_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         M : IN  std_logic;
         SUM : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal M : std_logic := '0';
   signal SUM : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
 
BEGIN
   uut: composite_rtl PORT MAP (
          A => A,
          B => B,
          M => M,
          SUM => SUM,
          Cout => Cout
        );
   stim_proc: process
   begin		
	A<="1100";
	B<="0011";
	M<='0';
	wait for 1 ps;
	A<="1100";
	B<="0011";
	M<='1';
	wait for 1 ps;
	A<="1100";
	B<="1111";
	M<='0';
	wait for 1 ps;
	A<="1100";
	B<="1111";
	M<='1';
	wait for 1 ps;
   end process;
END;
