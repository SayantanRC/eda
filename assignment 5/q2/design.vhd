-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity OR_3 is
port (
	A, B, C : in BIT;
    F : out BIT
    );
end OR_3;

architecture arch_OR_3 of OR_3 is

component OR_2 is
port (
	A, B : in BIT;
    F : out BIT
    );
end component;

signal s1 : BIT;

begin

C1 : OR_2 port map (A, B, s1);
C2 : OR_2 port map (s1, C, F);

end architecture;
