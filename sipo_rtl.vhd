library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sipo_rtl is
    Port ( s,clock,clr : in  STD_LOGIC;
           op : inout  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;
architecture Behavioral of sipo_rtl is
component d_ff_rtl is
    Port ( d,reset,clk : in  STD_LOGIC;
           q,qp : out  STD_LOGIC);
end component;
begin
D0:d_ff_rtl port map (d=>s,CLK=>clock,reset=>clr,Q=>op(0));
D1:d_ff_rtl port map (d=>op(0),CLK=>clock,reset=>clr,Q=>op(1));
D2:d_ff_rtl port map (d=>op(1),Clk=>clock,reset=>clr,Q=>op(2));
D3:d_ff_rtl port map (d=>op(2),CLK=>clock,reset=>clr,Q=>op(3));
end Behavioral;