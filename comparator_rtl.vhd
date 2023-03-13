library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity comparator_rtl is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           greater,lesser,equal : out  STD_LOGIC);
end comparator_rtl;
architecture Behavioral of comparator_rtl is
component xnor_rtl is
    Port ( p,q : in  STD_LOGIC;
           op : out  STD_LOGIC);
end component;
signal x0,x1,x2,x3:std_logic:='0';
begin
xn0: xnor_rtl port map(p=>A(0),q=>B(0),op=>x0);
xn1: xnor_rtl port map(p=>A(1),q=>B(1),op=>x1);
xn2: xnor_rtl port map(p=>A(2),q=>B(2),op=>x2);
xn3: xnor_rtl port map(p=>A(3),q=>B(3),op=>x3);
greater<=(A(3) and not B(3)) or (x3 and x2 and A(1) and not B(1)) or (x3 and x2 and x1 and A(0) and not B(0));
lesser<=(B(3) and not A(3)) or (x3 and x2 and B(1) and not A(1)) or (x3 and x2 and x1 and B(0) and not A(0));
equal<=(x3 and x2 and x1 and x0);
end Behavioral;