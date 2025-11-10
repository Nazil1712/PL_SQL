SET SERVEROUTPUT ON;
DECLARE
    counter number := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('Value of i ' || counter);

        counter := counter + 1;

        EXIT WHEN counter >= 5;
    END LOOP;
END;