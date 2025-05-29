LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE p_shift IS
  TYPE s_int IS RANGE 0 TO 255;
  TYPE s_array IS ARRAY(0 TO 5) OF std_logic;
  FUNCTION shiftr(a : s_array) RETURN s_array;
  FUNCTION shiftr(a : s_int) RETURN s_int;
END p_shift;

PACKAGE BODY p_shift IS

  FUNCTION shiftr(a : s_array) RETURN s_array IS
    VARIABLE result : s_array;
  BEGIN
    FOR i IN a'RANGE LOOP
      IF i = a'HIGH THEN
        result(i) := '0';
      ELSE
        result(i) := a(i + 1);
      END IF;
    END LOOP;
    RETURN result;
  END shiftr;

  FUNCTION shiftr(a : s_int) RETURN s_int IS
  BEGIN
    RETURN (a / 2);
  END shiftr;

END p_shift;
