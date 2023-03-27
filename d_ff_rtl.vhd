library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity d_ff_rtl is
    Port ( d,reset,clk : in  STD_LOGIC;
           q,qp : out  STD_LOGIC);
end d_ff_rtl;
architecture Behavioral of d_ff_rtl is
signal t:std_logic:='0';
begin
process(d,clk,reset,t)
begin
if(reset='1') then
t<='0';
elsif(rising_edge((clk)))then
t<=d;
end if;
q<=t;
qp<=not t;
end process;
end Behavioral;