-- Testbench
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component i.e. Device Under Test
component full_adder is
port(
  A: in BIT;
  B: in BIT;
  CIN: in BIT;
  SUM: out BIT;
  CY: out BIT
  );
end component;

signal a1, b1, c1, s1, cy1: BIT;

begin

  -- Connect DUT
  DUT: full_adder port map(a1, b1, c1, s1, cy1);

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
