-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity FA_structural is
port (
	A, B, Cin : in BIT;
    Sum, Carry : out BIT
    );
end entity;

architecture arch_FA of FA_structural is

component HA_dataflow is 
port (
	P, Q : in BIT;
    S1, C1 : out BIT
    );
end component;

component OR_2 is
port (
	D, E : in BIT;
    F : out BIT
    );
end component;

signal s1, cy1, cy2 : BIT;

begin

C1 : HA_dataflow port map (A, B, s1, cy1);
C2 : HA_dataflow port map (Cin, s1, Sum, cy2);
C3 : OR_2 port map (cy1, cy2, Carry);

end architecture;
