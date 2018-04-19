-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity OR_2 is
port (
	D, E : in BIT;
    F : out BIT
    );
end OR_2;

architecture arch_OR_2 of OR_2 is
begin
F <= D OR E;
end arch_OR_2;
