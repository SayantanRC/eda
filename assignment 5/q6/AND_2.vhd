-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity AND_2 is
port (
X, Y: in BIT;
Z : out BIT
);
end entity;
architecture arch_AND_2 of AND_2 is
begin
Z <= X AND Y;
end architecture;
