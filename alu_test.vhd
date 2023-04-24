LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY alu_test IS
END alu_test;
ARCHITECTURE behavior OF alu_test IS 
    COMPONENT alu
    PORT(
         sel : IN  std_logic_vector(3 downto 0);
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         f : OUT  std_logic_vector(3 downto 0);
         cin : IN  std_logic
        );
    END COMPONENT;
   signal sel : std_logic_vector(3 downto 0) := (others => '0');
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';
   signal f : std_logic_vector(3 downto 0);
BEGIN
   uut: alu PORT MAP (
          sel => sel,
          a => a,
          b => b,
          f => f,
          cin => cin
        );
   stim_proc: process
   begin		
      sel<="0000";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;		
		sel<="0000";
		a<="1001";
		b<="1100";
		cin<='1';
		wait for 1 ps;
		sel<="0001";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;		
		sel<="0001";
		a<="1001";
		b<="1100";
		cin<='1';
		wait for 1 ps;
		sel<="0010";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;		
		sel<="0010";
		a<="1001";
		b<="1100";
		cin<='1';
		wait for 1 ps;
		sel<="0011";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		sel<="0011";
		a<="1001";
		b<="1100";
		cin<='1';
		wait for 1 ps;
		sel<="0100";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		sel<="0101";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		sel<="0110";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		sel<="0111";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		sel<="1000";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
		sel<="1010";
		a<="1001";
		b<="1100";
		cin<='0';
		wait for 1 ps;
   end process;
END;