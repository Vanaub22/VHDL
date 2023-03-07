library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity full_adder_using_ha is
    Port ( A,B,Cin : in  STD_LOGIC;
           SUM,CARRY : out  STD_LOGIC);
end full_adder_using_ha;
architecture Behavioral of full_adder_using_ha is
component half_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;
signal t1,t2,t3:std_logic:='0';
begin
h1: half_adder_rtl port map(a=>A,b=>B,sum=>t3,carry=>t1);
h2: half_adder_rtl port map(a=>t3,b=>Cin,sum=>SUM,carry=>t2);
CARRY<=t1 or t2;
end Behavioral;

