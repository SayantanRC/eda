-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity CKT_Y is
port (
	A, B, C, D : in BIT;
    F : out BIT
    );
end CKT_Y;

architecture arch_CKT_Y of CKT_Y is

component AND_2 is
port ( X, Y : in BIT;
	Z : out BIT
    );
end component;

component OR_2 is
port (
	D, E : in BIT;
    F : out BIT
    );
end component;

signal s1, s2 : BIT;

begin

C1 : AND_2 port map (A, C, s1);
C2 : AND_2 port map (s1, D, s2);
C3 : OR_2 port map (s2, B, F);

end architecture;
