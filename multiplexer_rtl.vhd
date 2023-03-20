library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity multiplexer is
    Port ( i : in  STD_LOGIC_VECTOR (7 downto 0);
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           op : out  STD_LOGIC);
end multiplexer;
architecture Behavioral of multiplexer is
begin
	process(i,s)
	begin
	case s is
	when "000"=>op<=i(0);
	when "001"=>op<=i(1);
	when "010"=>op<=i(2);
	when "011"=>op<=i(3);
	when "100"=>op<=i(4);
	when "101"=>op<=i(5);
	when "110"=>op<=i(6);
	when "111"=>op<=i(7);
	when others=>op<='0';
	end case;
	end process;
end Behavioral;