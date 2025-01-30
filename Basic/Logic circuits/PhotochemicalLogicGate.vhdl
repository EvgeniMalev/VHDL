library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Photochemical_Logic_Gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC);
end Photochemical_Logic_Gate;

architecture Behavioral of Photochemical_Logic_Gate is
begin
    Y <= A AND B;
end Behavioral;
