architecture Behavioral of ControlUnit is
    type state_type is (FETCH, DECODE, WAIT_CYCLE, EXECUTE);
    signal current_state, next_state: state_type;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= FETCH;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    process(current_state, opcode)
    begin
        case current_state is
            when FETCH =>
                -- Instruction fetch logic here
                next_state <= DECODE;

            when DECODE =>
                -- Decode logic
                -- Insert extra cycle before execution
                next_state <= WAIT_CYCLE;

            when WAIT_CYCLE =>
                -- Extra delay cycle
                next_state <= EXECUTE;

            when EXECUTE =>
                -- Actual instruction execution
                next_state <= FETCH;

            when others =>
                next_state <= FETCH;
        end case;
    end process;

end Behavioral;
