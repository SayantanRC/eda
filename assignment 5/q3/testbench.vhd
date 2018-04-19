-- Testbench
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component i.e. Device Under Test
component XOR_2 is
port(
  X: in BIT;
  Y: in BIT;
  Z: out BIT);
end component;

signal a1, b1, x1: BIT;

begin

  -- Connect DUT
  DUT: XOR_2 port map(a1, b1, x1);

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
