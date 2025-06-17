library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Double_AND_Gate is
    Port (
        A1 : in  STD_LOGIC;
        B1 : in  STD_LOGIC;
        A2 : in  STD_LOGIC;
        B2 : in  STD_LOGIC;
        Y1 : out STD_LOGIC;
        Y2 : out STD_LOGIC
    );
end Double_AND_Gate;

architecture Behavioral of Double_AND_Gate is
begin
  
    Y1 <= A1 and B1;
    
    Y2 <= A2 and B2;
end Behavioral;
