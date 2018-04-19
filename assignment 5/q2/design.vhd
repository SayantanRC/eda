-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity AND_3 is
port (
	A, B, C : in BIT;
    F : out BIT
    );
end AND_3;

architecture arch_AND_3 of AND_3 is

component AND_2 is
port (
	A, B : in BIT;
    F : out BIT
    );
end component;

signal s1 : BIT;

begin

C1 : AND_2 port map (A, B, s1);
C2 : AND_2 port map (s1, C, F);

end architecture;
