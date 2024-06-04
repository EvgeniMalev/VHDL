library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_led is
  generic (
    pwm_bits : integer := 8;
    cnt_bits : integer := 25;
    clk_cnt_len : positive := 47
  );
  port (
    clk : in std_logic;
    rst_n : in std_logic; 
 
    seg_a : out std_logic;
    seg_b : out std_logic;
    seg_c : out std_logic;
    seg_d : out std_logic;
    seg_e : out std_logic;
    seg_f : out std_logic;
    seg_g : out std_logic
  );
end pwm_led;

architecture Behavioral of pwm_led is
  -- Internal signals declaration (if needed)
begin
  -- Architecture body
end Behavioral;
