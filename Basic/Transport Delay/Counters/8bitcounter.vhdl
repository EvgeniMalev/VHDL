ibrary IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
    Port ( rst, clk : in std_logic;
           o : out std_logic_vector(7 downto 0));
end counter;

architecture count_arch of counter is
    signal count : std_logic_vector(7 downto 0);
begin
    process(rst, clk)
    begin
        if (rst = '1') then 
            count <= "00000000";
        elsif (rising_edge(clk)) then 
            count <= count + 1;
        end if;
    end process;
    
    o <= count;
end count_arch;
