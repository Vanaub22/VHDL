library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fourbit_adder_rtl is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC_VECTOR (3 downto 0);
           CARRY : out  STD_LOGIC);
end fourbit_adder_rtl;
architecture Behavioral of fourbit_adder_rtl is
component full_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;
signal t1,t2,t3:std_logic:='0';
begin
fa0: full_adder_rtl port map(a=>A(0),b=>B(0),c=>C,sum=>SUM(0),carry=>t1);
fa1: full_adder_rtl port map(a=>A(1),b=>B(1),c=>t1,sum=>SUM(1),carry=>t2);
fa2: full_adder_rtl port map(a=>A(2),b=>B(2),c=>t2,sum=>SUM(2),carry=>t3);
fa3: full_adder_rtl port map(a=>A(3),b=>B(3),c=>t3,sum=>SUM(3),carry=>CARRY);
end Behavioral;