library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity jk_ff_rtl is
    Port ( j,k,clk,reset : in  STD_LOGIC;
           q,qp : out  STD_LOGIC);
end jk_ff_rtl;

architecture Behavioral of jk_ff_rtl is
signal t:std_logic:='0';
begin
process(j,k,clk,t,reset) begin
if(reset='1') then
t<='0';
elsif(rising_edge(clk)) then
if(j<='0' and k<='0') then
t<=t;
elsif(j<='0' and k<='1') then
t<='0';
elsif(j<='1' and k<='0') then
t<='1';
elsif(j<='1' and k<='1') then
t<=not t;
end if;
end if;
q<=t;
qp<=not t;
end process;
end Behavioral;