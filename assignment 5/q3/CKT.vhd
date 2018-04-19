-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity CKT is
port ( A, B : in BIT;
	C : out BIT
    );
end entity;

architecture arch_CKT of CKT is
begin
C <= A AND ( NOT B);
end arch_CKT;
