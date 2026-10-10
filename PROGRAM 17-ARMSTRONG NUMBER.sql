SET SERVEROUTPUT ON;

DECLARE
    num NUMBER := 370;
    temp NUMBER;
    digit NUMBER;
    total NUMBER := 0;
BEGIN
    temp := num;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        total := total + POWER(digit, 3);
        temp := TRUNC(temp / 10);
    END LOOP;

    IF total = num THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is an Armstrong Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is not an Armstrong Number');
    END IF;
END;
