SET SERVEROUTPUT ON;

CREATE TABLE voter (id NUMBER(10),name VARCHAR(20),city VARCHAR(20));

INSERT INTO voter VALUES (47001, 'Shreya', 'Tirupur');
INSERT INTO voter VALUES (29006, 'Ravi', 'Neyveli');
INSERT INTO voter VALUES (81003, 'Mohan', 'Chengalpet');
INSERT INTO voter VALUES (92007, 'Rihana', 'Chennai');
INSERT INTO voter VALUES (76008, 'Vidhya', 'Coimbatore');

SELECT * FROM voter;

CREATE OR REPLACE TRIGGER tdel
AFTER UPDATE OR DELETE ON voter
DECLARE
    vmsg VARCHAR(20) := 'Trigger Fired ';
BEGIN
    IF UPDATING THEN
        DBMS_OUTPUT.PUT_LINE(vmsg || 'Record updated');
    ELSIF DELETING THEN
        DBMS_OUTPUT.PUT_LINE(vmsg || 'Record Deleted');
    END IF;
END;

DELETE FROM voter WHERE id = 81003;

UPDATE voter SET city = 'Trichy' WHERE id = 47001;

SELECT * FROM voter;
