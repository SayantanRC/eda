-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity XOR_2 is
port(
D, E: in BIT;
F: out BIT
);
end entity;
architecture arch_XOR_2 of XOR_2 is
begin
F <= D XOR E;
end architecture;
