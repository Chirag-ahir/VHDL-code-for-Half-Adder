library IEEE;
use IEEE.std_logic_1164.all;

entity halfadd is
port(
  a: in std_logic;
  b: in std_logic;
  c: out std_logic;
  d:out std_logic);
end halfadd;

architecture rtl of halfadd is
begin
  process(a, b) is
  begin
    c <= a and b;
    d <= a XOR b;
  end process;
end rtl;
