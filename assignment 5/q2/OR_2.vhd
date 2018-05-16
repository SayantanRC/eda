library IEEE;
use IEEE.std_logic_1164.all;

entity OR_2 is
port (
	A, B : in BIT;
    F : out BIT
    );
end OR_2;

architecture arch_OR_2 of OR_2 is
begin
F <= A OR B;
end architecture;
