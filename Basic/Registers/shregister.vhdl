library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clk_div is
    generic (
        clk_in_freq      : natural;
        clk_out_freq     : natural;
        high_cycles      : natural := 1; 
        low_cycles       : natural := 1  
    );
    port (
        rst     : in  std_logic;
        clk_in  : in  std_logic;
        clk_out : out std_logic
    );
end clk_div;

architecture BHV of clk_div is
    constant TOTAL_PERIOD : natural := high_cycles + low_cycles;
    signal count    : natural := 0;
    signal clk_reg  : std_logic := '0';
begin
    process(clk_in, rst)
    begin
        if rst = '1' then
            count <= 0;
            clk_reg <= '0';
        elsif rising_edge(clk_in) then
            if count = TOTAL_PERIOD - 1 then
                count <= 0;
            else
                count <= count + 1;
            end if;

            if count < high_cycles then
                clk_reg <= '1';
            else
                clk_reg <= '0';
            end if;
        end if;
    end process;

    clk_out <= clk_reg;
end BHV;
