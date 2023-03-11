LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY fourbit_sub_test IS
END fourbit_sub_test;
ARCHITECTURE behavior OF fourbit_sub_test IS 
    COMPONENT four_bit_sub_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         DIFF : OUT  std_logic_vector(3 downto 0);
         BORROW : OUT  std_logic
        );
    END COMPONENT;
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';
   signal DIFF : std_logic_vector(3 downto 0);
   signal BORROW : std_logic;
BEGIN
   uut: four_bit_sub_rtl PORT MAP (
          A => A,
          B => B,
          C => C,
          DIFF => DIFF,
          BORROW => BORROW
        );
   stim_proc: process
   begin		
A<="1100";
B<="1111";
C<='0';
wait for 1 ps;
A<="1100";
B<="1111";
C<='1';
wait for 1 ps;
A<="1100";
B<="0001";
C<='1';
wait for 1 ps;
A<="1100";
B<="0000";
C<='0';
wait for 1 ps;
   end process;
END;