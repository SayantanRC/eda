-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is
port (
A, B: in BIT;
X : out BIT
);
end entity;
architecture and_gate_arch of and_gate is
begin
X <= A AND B;
end architecture;
