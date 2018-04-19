-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity HA_CKT is
port (
	A, B : in BIT;
    S, C : out BIT
    );
end HA_CKT;

architecture arch_HA_CKT of HA_CKT is

component XOR_2 is
port ( D, E : in BIT;
	F : out BIT
    );
end component;

component AND_2 is
port (
X, Y: in BIT;
Z : out BIT
);
end component;

begin

C1 : XOR_2 port map (A, B, S);
C3 : AND_2 port map (A, B, C);

end architecture;
