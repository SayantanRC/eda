-- Testbench
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component i.e. Device Under Test
component FA_structural is
port (
	A, B, Cin : in BIT;
    Sum, Carry : out BIT
    );
end component;

signal a1, b1, c1, s, cy : BIT;

begin

  -- Connect DUT
  DUT: FA_structural port map(a1, b1, c1, s, cy);

  process
  begin
    a1 <= '0';
    b1 <= '0';
    c1 <= '0';
    wait for 30 ns;
  
    a1 <= '0';
    b1 <= '0';
    c1 <= '1';
    wait for 30 ns;

    a1 <= '0';
    b1 <= '1';
    c1 <= '0';
    wait for 30 ns;

    a1 <= '0';
    b1 <= '1';
    c1 <= '1';
    wait for 30 ns;
    
    a1 <= '1';
    b1 <= '0';
    c1 <= '0';
    wait for 30 ns;
    
    a1 <= '1';
    b1 <= '0';
    c1 <= '1';
    wait for 30 ns;
    
    a1 <= '1';
    b1 <= '1';
    c1 <= '0';
    wait for 30 ns;
    
    a1 <= '1';
    b1 <= '1';
    c1 <= '1';
    wait for 30 ns;
    
    -- Clear inputs
    a1 <= '0';
    b1 <= '0';
    c1 <= '0';
    
    wait;
  end process;
end tb;
