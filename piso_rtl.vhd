library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity piso_rtl is
    Port ( clock,rst,load : in  STD_LOGIC;
           ip : in  STD_LOGIC_VECTOR (3 downto 0);
           op : out  STD_LOGIC);
end piso_rtl;
architecture Behavioral of piso_rtl is
component d_ff_rtl is
    Port ( d,reset,clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;
signal q:std_logic_vector(3 downto 0);
signal t1,t2,t3: std_logic;
begin
d1:d_ff_rtl port map(clk=>clock,d=>ip(3),q=>q(3),reset=>rst);
t1<=(q(3) and load) or (ip(2) and (not load));
d2:d_ff_rtl port map(clk=>clock,d=>t1,q=>q(2),reset=>rst);
t2<=(q(2) and load) or (ip(1) and (not load));
d3:d_ff_rtl port map(clk=>clock,d=>t2,q=>q(1),reset=>rst);
t3<=(q(1) and load) or (ip(0) and (not load));
d4:d_ff_rtl port map(clk=>clock,d=>t3,q=>q(0),reset=>rst);
op<=q(0);
end Behavioral;