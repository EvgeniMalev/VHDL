library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_or_gate is
    Port (
        A1 : in  STD_LOGIC;
        B1 : in  STD_LOGIC;
        A2 : in  STD_LOGIC;
        B2 : in  STD_LOGIC;
        Y1 : out STD_LOGIC;
        Y2 : out STD_LOGIC
    );
end double_or_gate;

architecture Behavioral of double_or_gate is
begin
    Y1 <= A1 or B1;
    Y2 <= A2 or B2;
end Behavioral;
