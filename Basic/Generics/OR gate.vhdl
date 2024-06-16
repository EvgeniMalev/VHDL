 LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY test IS
    GENERIC (rise, fall : TIME; load : INTEGER);
    PORT (
        ina, inb, inc, ind : IN std_logic;
        out1, out2 : OUT std_logic
    );
END test;

ARCHITECTURE test_arch OF test IS
    COMPONENT OR2
        GENERIC (rise, fall : TIME; load : INTEGER);
        PORT (
            a, b : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;
BEGIN
    U1: OR2
        GENERIC MAP (5 ns, 6 ns, 3)
        PORT MAP (ina, inb, out1);

    U2: OR2
        GENERIC MAP (10 ns, 12 ns, 5)
        PORT MAP (inc, ind, out2);
END test_arch;
