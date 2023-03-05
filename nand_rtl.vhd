library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end nand_rtl;

architecture Behavioral of nand_rtl is
signal temp:STD_LOGIC:='0';
begin
temp<=a and b;
c<=not temp;
end Behavioral;

