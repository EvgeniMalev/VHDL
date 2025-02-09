library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
port(    I:        in std_logic;
    clock:     in std_logic;
    shift:     in std_logic;
    Q:        out std_logic
);
end shift_reg;

architecture behv of shift_reg is

    signal S: std_logic_vector(5 downto 0):="111111";

begin
    
    process(I, clock, shift, S)
    begin

    if clock'event and clock='1' then
        if shift = '1' then
            S <= I & S(5 downto 1);
        end if;
    end if;

    end process;
    
    Q <= S(0);

end behv;
