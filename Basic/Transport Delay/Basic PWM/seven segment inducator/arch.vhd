architecture Behavioral of pwm_led is
  signal pwm_counter : unsigned(pwm_bits-1 downto 0) := (others => '0');
  signal cnt : unsigned(cnt_bits-1 downto 0) := (others => '0');
  signal duty_cycle : unsigned(pwm_bits-1 downto 0) := "01111111"; 
begin
  process(clk, rst_n)
  begin
    if rst_n = '0' then
      pwm_counter <= (others => '0');
      cnt <= (others => '0');
    elsif rising_edge(clk) then
      if cnt = (2**cnt_bits - 1) then
        cnt <= (others => '0');
        pwm_counter <= pwm_counter + 1;
      else
        cnt <= cnt + 1;
      end if;
    end if;
  end process;

  seg_a <= '1' when pwm_counter < duty_cycle else '0';
  seg_b <= '1' when pwm_counter < duty_cycle else '0';
  seg_c <= '1' when pwm_counter < duty_cycle else '0';
  seg_d <= '1' when pwm_counter < duty_cycle else '0';
  seg_e <= '1' when pwm_counter < duty_cycle else '0';
  seg_f <= '1' when pwm_counter < duty_cycle else '0';
  seg_g <= '1' when pwm_counter < duty_cycle else '0';
end Behavioral;
