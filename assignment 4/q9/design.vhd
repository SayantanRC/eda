-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity ckt is
port (
A, C, D : in BIT;
Y : out BIT
);
end entity;
architecture ckt_arch of ckt is
begin
Y <= A OR (C AND D);
end ckt_arch;
