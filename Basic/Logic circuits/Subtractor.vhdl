library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Subtractor is
    Port (
        A : in  STD_LOGIC_VECTOR (3 downto 0);  
        B : in  STD_LOGIC_VECTOR (3 downto 0); 
        Diff : out  STD_LOGIC_VECTOR (3 downto 0);  
        Borrow : out  STD_LOGIC   
    );
end Subtractor;

architecture Behavioral of Subtractor is
begin
    process(A, B)
    variable temp: STD_LOGIC_VECTOR(4 downto 0); 
    begin
        temp := ('0' & A) - ('0' & B);
        Diff <= temp(3 downto 0);    
        Borrow <= temp(4);           
    end process;
end Behavioral;
