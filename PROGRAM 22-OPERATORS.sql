SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 30;
    b NUMBER := 6;
BEGIN
    -- Arithmetic Operators
    DBMS_OUTPUT.PUT_LINE('Addition = ' || (a + b));
    DBMS_OUTPUT.PUT_LINE('Subtraction = ' || (a - b));
    DBMS_OUTPUT.PUT_LINE('Multiplication = ' || (a * b));
    DBMS_OUTPUT.PUT_LINE('Division = ' || (a / b));
    DBMS_OUTPUT.PUT_LINE('Remainder = ' || MOD(a, b));

    -- Relational Operator
    IF a > b THEN
        DBMS_OUTPUT.PUT_LINE('a is greater than b');
    END IF;

    -- Logical Operator
    IF a > 0 AND b > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Both numbers are positive');
    END IF;

    -- Assignment Operator
    a := 40;
    DBMS_OUTPUT.PUT_LINE('New value of a = ' || a);
END;
