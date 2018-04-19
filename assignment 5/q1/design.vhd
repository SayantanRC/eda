-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity AND_3 is
port (
	A, B, C : in BIT;
    F : out BIT
    );
end AND_3;

architecture arch of AND_3 is
begin
F <= A AND B AND C;
end arch;
