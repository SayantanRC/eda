-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity not_gate is
port(
A : in BIT;
X : out BIT
);
end entity;
architecture not_arch of not_gate is
begin
X <= NOT A;
end not_arch;
