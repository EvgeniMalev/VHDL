library ieee;
use ieee.std_logic_1164.all;
 
entity example_and is
  port (
    input_1    : in  std_logic;
    input_2    : in  std_logic;
    and_result : out std_logic
    );
end example_and;
 
architecture rtl of example_and is
  signal xor_gate : std_logic;
begin
  xor_gate   <= input_1 and input_2;
  xor_result <= xor_gate;
end rtl;
