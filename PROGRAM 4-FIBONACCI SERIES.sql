SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 7;
    x NUMBER := 0;
    y NUMBER := 1;
    z NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Fibonacci Series:');

    FOR i IN 1..n LOOP
        DBMS_OUTPUT.PUT_LINE(x);

        z := x + y;
        x := y;
        y := z;
    END LOOP;
END;
/
