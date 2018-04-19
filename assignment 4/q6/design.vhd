-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity xnor_gate is
port(
A, B: in BIT;
X: out BIT
);
end entity;
architecture xnor_arch of xnor_gate is
begin
X <= NOT ( A OR B );
end architecture;
