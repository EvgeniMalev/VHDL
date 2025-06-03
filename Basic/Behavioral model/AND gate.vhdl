ARCHITECTURE load_dependent OF and2 IS
  SIGNAL internal : BIT;
BEGIN
  internal <= a AND b;

  c <= internal AFTER (rise + (load * 4 ns)) WHEN internal = '1'
       ELSE internal AFTER (fall + (load * 3 ns));

  d <= internal AFTER (rise + (load * 4 ns)) WHEN internal = '0';
END load_dependent;
