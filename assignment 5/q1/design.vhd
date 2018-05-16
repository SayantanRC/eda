-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity OR_3 is
port (
	A, B, C : in BIT;
    F : out BIT
    );
end OR_3;

architecture arch of OR_3 is
begin
F <= A OR B OR C;
end arch;
