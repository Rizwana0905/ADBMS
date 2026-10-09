SET SERVEROUTPUT ON;

DECLARE
    str VARCHAR(50) := 'WORLD WIDE';
    rev VARCHAR(50) := '';
BEGIN
    FOR i IN REVERSE 1..LENGTH(str)
    LOOP
        rev := rev || SUBSTR(str, i, 1);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Original string: ' || str);
    DBMS_OUTPUT.PUT_LINE('Reversed string: ' || rev);
END;
/
