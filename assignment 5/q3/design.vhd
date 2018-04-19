-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity XOR_2 is
port (
	X, Y : in BIT;
    Z : out BIT
    );
end XOR_2;

architecture arch_XOR_2 of XOR_2 is

component CKT is
port ( A, B : in BIT;
	C : out BIT
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

C1 : CKT port map (X, Y, s1);
C2 : CKT port map (Y, X, s2);
C3 : OR_2 port map (s1, s2, Z);

end architecture;
