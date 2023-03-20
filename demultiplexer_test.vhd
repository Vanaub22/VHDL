LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY demultiplexer_test IS
END demultiplexer_test;
ARCHITECTURE behavior OF demultiplexer_test IS 
    COMPONENT demultiplexer_rtl
    PORT(
         i : IN  std_logic;
         s : IN  std_logic_vector(2 downto 0);
         op : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
   signal i : std_logic := '0';
   signal s : std_logic_vector(2 downto 0) := (others => '0');
   signal op : std_logic_vector(7 downto 0);
BEGIN
   uut: demultiplexer_rtl PORT MAP (
          i => i,
          s => s,
          op => op
        );
   stim_proc: process
   begin		
	i<='0';
	s<="011";
	wait for 1 ps;
	i<='1';
	s<="111";
	wait for 1 ps;
	i<='1';
	s<="000";
	wait for 1 ps;
   end process;
END;