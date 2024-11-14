library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Summator is
    Port (
        A         : in  STD_LOGIC_VECTOR(3 downto 0); 
        B         : in  STD_LOGIC_VECTOR(3 downto 0); 
        SUM       : out STD_LOGIC_VECTOR(3 downto 0); 
        CARRY_OUT : out STD_LOGIC                   
    );
end Summator;

architecture Behavioral of Summator is
    signal temp_sum : STD_LOGIC_VECTOR(4 downto 0); 
begin
    temp_sum <= ('0' & A) + ('0' & B); 

    SUM <= temp_sum(3 downto 0);

    CARRY_OUT <= temp_sum(4);
end Behavioral;
