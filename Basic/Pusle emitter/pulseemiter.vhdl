library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pulse_emitter is
    Port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        pulse   : out std_logic
    );
end pulse_emitter;

architecture Behavioral of pulse_emitter is
    constant CLK_FREQ     : integer := 50000000; -- 50 MHz
    constant PULSE_PERIOD : integer := CLK_FREQ; -- 1 second

    signal counter : unsigned(25 downto 0) := (others => '0');
    signal pulse_int : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter    <= (others => '0');
            pulse_int  <= '0';
        elsif rising_edge(clk) then
            if counter = PULSE_PERIOD - 1 then
                counter   <= (others => '0');
                pulse_int <= '1';
            else
                counter   <= counter + 1;
                pulse_int <= '0';
            end if;
        end if;
    end process;

    pulse <= pulse_int;

end Behavioral;
