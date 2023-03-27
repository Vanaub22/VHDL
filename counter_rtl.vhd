library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
entity counter_rtl is
    Port ( clk,reset,mode : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end counter_rtl;
architecture Behavioral of counter_rtl is

begin
process(clk,reset)
begin
if(reset='1') then
q<="0000";
elsif(rising_edge(clk)) then
if(mode='0') then
q<=q+1;
else
q<=q-1;
end if;
end if;
end process;
end Behavioral;