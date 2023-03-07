library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity full_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end full_adder_rtl;
architecture Behavioral of full_adder_rtl is
signal t :STD_LOGIC:='0';
begin
t<=(a and (not b)) or ((not a) and b);
sum<=(c and (not t)) or ((not c) and t);
carry<=((a and b) or (b and c) or (c and a));
end Behavioral;

