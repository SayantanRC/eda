-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity CKT_F is
port (
	A, B, C, D : in BIT;
    F : out BIT
    );
end CKT_F;

architecture arch_CKT_F of CKT_F is

component AND_2 is
port ( P, Q : in BIT;
	R : out BIT
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

C1 : AND_2 port map (A, B, s1);
C2 : AND_2 port map (C, D, s2);
C3 : OR_2 port map (s1, s2, F);

end architecture;
