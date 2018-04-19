-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity nand_gate is
port(
A, B: in BIT;
X: out BIT
);
end entity;
architecture nand_arch of nand_gate is
begin
X <= NOT ( A AND B );
end architecture;
