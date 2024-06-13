LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux IS
    PORT (
        i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15 : IN std_logic;
        a, b, c, d : IN std_logic;
        q : OUT std_logic
    );
END mux;

ARCHITECTURE behavior OF mux IS
BEGIN
    PROCESS (a, b, c, d)
    BEGIN
        CASE (a & b & c & d) IS
            WHEN "0000" => q <= i0;
            WHEN "0001" => q <= i1;
            WHEN "0010" => q <= i2;
            WHEN "0011" => q <= i3;
            WHEN "0100" => q <= i4;
            WHEN "0101" => q <= i5;
            WHEN "0110" => q <= i6;
            WHEN "0111" => q <= i7;
            WHEN "1000" => q <= i8;
            WHEN "1001" => q <= i9;
            WHEN "1010" => q <= i10;
            WHEN "1011" => q <= i11;
            WHEN "1100" => q <= i12;
            WHEN "1101" => q <= i13;
            WHEN "1110" => q <= i14;
            WHEN "1111" => q <= i15;
            WHEN OTHERS => q <= '0';  
        END CASE;
    END PROCESS;
END behavior;
