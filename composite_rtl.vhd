library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity composite_rtl is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           M : in  STD_LOGIC;
           SUM : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end composite_rtl;

architecture Behavioral of composite_rtl is
component full_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;
component xor_gate_rtl is
    Port ( x,y : in  STD_LOGIC;
           op : out  STD_LOGIC);
end component;
signal t0,t1,t2,t3,c1,c2,c3:std_logic:='0';
begin
x0: xor_gate_rtl port map(x=>B(0),y=>M,op=>t0);
x1: xor_gate_rtl port map(x=>B(1),y=>M,op=>t1);
x2: xor_gate_rtl port map(x=>B(2),y=>M,op=>t2);
x3: xor_gate_rtl port map(x=>B(3),y=>M,op=>t3);
fa0: full_adder_rtl port map(a=>A(0),b=>t0,c=>M,sum=>SUM(0),carry=>c1);
fa1: full_adder_rtl port map(a=>A(1),b=>t1,c=>c1,sum=>SUM(1),carry=>c2);
fa2: full_adder_rtl port map(a=>A(2),b=>t2,c=>c2,sum=>SUM(2),carry=>c3);
fa3: full_adder_rtl port map(a=>A(3),b=>t3,c=>c3,sum=>SUM(3),carry=>Cout);
end Behavioral;