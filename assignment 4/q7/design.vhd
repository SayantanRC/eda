-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
port(
A, B: in BIT;
S, C: out BIT
);
end entity;
architecture half_adder_arch of half_adder is
begin
S <= A XOR B;
C <= A AND B;
end architecture;
