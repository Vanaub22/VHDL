LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY comparator_test IS
END comparator_test;
 
ARCHITECTURE behavior OF comparator_test IS 
 
    COMPONENT comparator_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         greater : OUT  std_logic;
         lesser : OUT  std_logic;
         equal : OUT  std_logic
        );
    END COMPONENT;
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal greater : std_logic;
   signal lesser : std_logic;
   signal equal : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_rtl PORT MAP (
          A => A,
          B => B,
          greater => greater,
          lesser => lesser,
          equal => equal
        );
 
   stim_proc: process
   begin		
	A<="1100";
	B<="0001";
	wait for 1 ps;
	A<="1101";
	B<="1111";
	wait for 1 ps;
	A<="0001";
	B<="1001";
	wait for 1 ps;
	A<="1001";
	B<="1001";
	wait for 1 ps;
	end process;
END;
