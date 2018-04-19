library IEEE;
use IEEE.std_logic_1164.all;

entity AND_2 is
port (
	A, B : in BIT;
    F : out BIT
    );
end AND_2;

architecture arch_AND_2 of AND_2 is
begin
F <= A AND B;
end architecture;
