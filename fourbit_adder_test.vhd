LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY fourbit_adder_test IS
END fourbit_adder_test;
ARCHITECTURE behavior OF fourbit_adder_test IS 
    COMPONENT fourbit_adder_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         SUM : OUT  std_logic_vector(3 downto 0);
         CARRY : OUT  std_logic
        );
    END COMPONENT;
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';
   signal SUM : std_logic_vector(3 downto 0);
   signal CARRY : std_logic; 
BEGIN
   uut: fourbit_adder_rtl PORT MAP (
          A => A,
          B => B,
          C => C,
          SUM => SUM,
          CARRY => CARRY
        );
   stim_proc: process
   begin		
	A<="0001";
	B<="1111";
	C<='1';
	wait for 1 ps;
	A<="0001";
	B<="1111";
	C<='0';
	wait for 1 ps;
	A<="0000";
	B<="1111";
	C<='0';
	wait for 1 ps;
	A<="0000";
	B<="1110";
	C<='1';
	wait for 1 ps;
	end process;
END;