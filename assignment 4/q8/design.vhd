-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
port(
A, B, CIN: in BIT;
SUM, CY: out BIT
);
end entity;
architecture full_adder_arch of full_adder is
begin
SUM <= (A XOR B) XOR CIN;
CY <= (A AND B) OR ((A XOR B) AND CIN);
end architecture;
