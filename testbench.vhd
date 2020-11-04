library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component halfadd is
port(
  a: in std_logic;
  b: in std_logic;
  c: out std_logic;
  d: out std_logic);
end component;

signal a_in, b_in, c_out,d_out: std_logic;

begin

  -- Connect DUT
  DUT: halfadd port map(a_in, b_in, c_out,d_out);

  process
  begin
    a_in <= '0';
    b_in <= '0';
    wait for 1 ns;
    
    a_in <= '0';
    b_in <= '1';
    wait for 1 ns;

    a_in <= '1';
    b_in <= '0';
    wait for 1 ns;

    a_in <= '1';
    b_in <= '1';
    wait ;
  end process;
end tb;
