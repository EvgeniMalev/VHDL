library ieee;
use ieee.std_logic_1164.all;

entity tristate_dr is
  port (
    d_in  : in std_logic_vector(7 downto 0);
    en    : in std_logic;
    d_out : out std_logic_vector(7 downto 0)
  );
end tristate_dr;

architecture behavior of tristate_dr is
begin

  process(d_in, en)
  begin
    if en = '1' then
      d_out <= d_in;
    else
      d_out <= (others => 'Z'); 
    end if;
  end process;

end behavior;
