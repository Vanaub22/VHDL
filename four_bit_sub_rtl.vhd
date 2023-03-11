library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity four_bit_sub_rtl is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           DIFF : out  STD_LOGIC_VECTOR (3 downto 0);
           BORROW : out  STD_LOGIC);
end four_bit_sub_rtl;
architecture Behavioral of four_bit_sub_rtl is
component full_subtractor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           difference : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component;
signal t1,t2,t3:std_logic:='0';
begin
hs0: full_subtractor_rtl port map(a=>A(0),b=>B(0),c=>C,difference=>DIFF(0),borrow=>t1);
hs1: full_subtractor_rtl port map(a=>A(1),b=>B(1),c=>t1,difference=>DIFF(1),borrow=>t2);
hs2: full_subtractor_rtl port map(a=>A(2),b=>B(2),c=>t2,difference=>DIFF(2),borrow=>t3);
hs3: full_subtractor_rtl port map(a=>A(3),b=>B(3),c=>t3,difference=>DIFF(3),borrow=>BORROW);
end Behavioral;