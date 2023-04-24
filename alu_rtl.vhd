library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity alu is
    Port ( sel,a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           f : out  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC);
end alu;
architecture Behavioral of alu is
begin
process(sel,a,b,cin)
variable t: std_logic_vector(3 downto 0);
begin
case sel is
when "0000"=>
	if(cin='0')then
		f<= a+b;
	else
		f<= a+b+1;
	end if;
when "0001"=>
	if(cin='0')then
		f<= a+(not b);
	else 
		f<= a+(not b)+1;
	end if;
when "0010"=>
	if(cin='0')then
		f<= a;
	else 
		f<= a+1;
	end if;
when "0011"=>
	if(cin='0')then
		f<= a;
	else 
		f<= a-1;
	end if;
when "0100"=>f<= a and b;
when "0101"=>f<= a or b;
when "0110"=>f<= a xor b;
when "0111"=>f<= not a;
when "1000"=>
	t:=a;
	t(2 downto 0):= t(3 downto 1);
	t(3):='0';
	f<=t;
when "1001"=>
	t:=a;
	t(2 downto 0):= t(3 downto 1);
	t(3):='0';
	f<=t;
when "1010"=>
	t:=a;
	t(3 downto 1):= t(2 downto 0);
	t(0):='0';
	f<=t;
when "1011"=>
	t:=a;
	t(3 downto 1):= t(2 downto 0);
	t(0):='0';
	f<=t;
when others=>f<="0000";
end case;
end process;
end Behavioral;