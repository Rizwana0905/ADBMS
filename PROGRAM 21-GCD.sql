SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 42;
    b NUMBER := 56;
    gcd NUMBER;
BEGIN
    WHILE b != 0 LOOP
        gcd := MOD(a, b);
        a := b;
        b := gcd;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || a);
END;
