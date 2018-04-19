-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is
port(
A, B: in BIT;
X: out BIT
);
end entity;
architecture xor_arch of xor_gate is
begin
X <= A XOR B;
end architecture;
