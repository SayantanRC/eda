-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity AND_2 is
port (
P, Q: in BIT;
R : out BIT
);
end entity;
architecture arch_AND_2 of AND_2 is
begin
R <= P AND Q;
end architecture;
