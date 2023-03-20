library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity demultiplexer_rtl is
    Port ( i : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (2 downto 0);
           op : out  STD_LOGIC_VECTOR (7 downto 0));
end demultiplexer_rtl;
architecture Behavioral of demultiplexer_rtl is
begin
	process(i,s)
	begin
	op<="00000000";
	case s is
	when "000"=>op(0)<=i;
	when "001"=>op(1)<=i;
	when "010"=>op(2)<=i;
	when "011"=>op(3)<=i;
	when "100"=>op(4)<=i;
	when "101"=>op(5)<=i;
	when "110"=>op(6)<=i;
	when "111"=>op(7)<=i;
	when others=>op<="00000000";
	end case;
	end process;
end Behavioral;