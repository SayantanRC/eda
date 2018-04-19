-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is
	port (
    	A, B : in BIT;
        X : out BIT
    );
end or_gate;
architecture or_gate_arch of or_gate is
begin
    X <= A OR B;
end or_gate_arch;
