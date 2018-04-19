-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity HA_dataflow is 
port (
	P, Q : in BIT;
    S1, C1 : out BIT
    );
end entity;

architecture arch_HA of HA_dataflow is
begin
S1 <= P XOR Q;
C1 <= P AND Q;
end architecture;
