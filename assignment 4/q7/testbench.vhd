-- Testbench
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component i.e. Device Under Test
component half_adder is
port(
  A: in BIT;
  B: in BIT;
  S: out BIT;
  C: out BIT
  );
end component;

signal a1, b1, s1, c1: BIT;

begin

  -- Connect DUT
  DUT: half_adder port map(a1, b1, s1, c1);

  process
  begin
    a1 <= '0';
    b1 <= '0';
    wait for 30 ns;
  
    a1 <= '0';
    b1 <= '1';
    wait for 30 ns;

    a1 <= '1';
    b1 <= '0';
    wait for 30 ns;

    a1 <= '1';
    b1 <= '1';
    wait for 30 ns;
    
    -- Clear inputs
    a1 <= '0';
    b1 <= '0';
    
    wait;
  end process;
end tb;
