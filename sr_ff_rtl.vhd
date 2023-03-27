library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sr_ff is
    Port ( s,r,clk,reset : in  STD_LOGIC;
           q,qbar : out  STD_LOGIC);
end sr_ff;
architecture Behavioral of sr_ff is
signal t,tc:std_logic:='0';
begin
q<=t;
qbar<=tc;
process(clk,reset)
begin
if(reset='1') then
t<='0';
tc<='1';
elsif(rising_edge(clk)) then
if(s/=r) then
t<=s;
tc<=r;
elsif(s='1' and r='1') then
t<='Z';
tc<='Z';
end if;
end if;
end process;
end Behavioral;