LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY piso_test IS
END piso_test;
ARCHITECTURE behavior OF piso_test IS 
    COMPONENT piso_rtl
    PORT(
         clock : IN  std_logic;
         rst : IN  std_logic;
         load : IN  std_logic;
         ip : IN  std_logic_vector(3 downto 0);
         op : OUT  std_logic
        );
    END COMPONENT;
   signal clock : std_logic := '0';
   signal rst : std_logic := '0';
   signal load : std_logic := '0';
   signal ip : std_logic_vector(3 downto 0) := (others => '0');
   signal op : std_logic;
   constant clock_period : time := 2 ps;
BEGIN
   uut: piso_rtl PORT MAP (
          clock => clock,
          rst => rst,
          load => load,
          ip => ip,
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
		rst<='0';
		ip<="0011";
		load<='0';
		wait for clock_period;
   end process;
END;