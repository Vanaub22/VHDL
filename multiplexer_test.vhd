LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY multiplexer_test IS
END multiplexer_test;
ARCHITECTURE behavior OF multiplexer_test IS 
    COMPONENT multiplexer
    PORT(
         i : IN  std_logic_vector(7 downto 0);
         s : IN  std_logic_vector(2 downto 0);
         op : OUT  std_logic
        );
    END COMPONENT;
   signal i : std_logic_vector(7 downto 0) := (others => '0');
   signal s : std_logic_vector(2 downto 0) := (others => '0');
   signal op : std_logic;
BEGIN
   uut: multiplexer PORT MAP (
          i => i,
          s => s,
          op => op
        );
   stim_proc: process
   begin
	i<="00000010";
	s<="011";
	wait for 1 ps;
	i<="10000010";
	s<="111";
	wait for 1 ps;
	i<="00000010";
	s<="000";
	wait for 1 ps;
   end process;
END;