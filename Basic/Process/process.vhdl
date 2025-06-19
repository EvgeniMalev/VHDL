LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY nand2 IS
  PORT(
    a, b, c : IN STD_LOGIC;
    d       : OUT STD_LOGIC
  );
END nand2;

ARCHITECTURE behavior OF nand2 IS
BEGIN
  PROCESS(a, b, c)
    VARIABLE temp : STD_LOGIC;
  BEGIN
    temp := NOT (a AND b);
    IF temp = '1' THEN
      d <= temp AFTER 10 ns;
    ELSIF temp = '0' THEN
      d <= temp AFTER 15 ns;
    ELSE
      d <= temp AFTER 16 ns;
    END IF;

    temp := NOT (a AND c);
    IF temp = '1' THEN
      d <= temp AFTER 13 ns;
    ELSIF temp = '0' THEN
      d <= temp AFTER 15 ns;
    ELSE
      d <= temp AFTER 18 ns;
    END IF;
  END PROCESS;
END behavior;
