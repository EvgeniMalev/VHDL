architecture Behavioral of Register4Bit is
    signal reg : STD_LOGIC_VECTOR (3 downto 0);
begin
    process (clk, rst)
    begin
        if rst = '1' then
            reg <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                reg <= d;
            end if;
        end if;
    end process;
    
    q <= reg;
end Behavioral;
