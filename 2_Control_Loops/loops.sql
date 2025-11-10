SET SERVEROUTPUT ON;

DECLARE
    counter NUMBER := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('This is iteration number ' || counter);
    
        IF counter = 3 THEN
            EXIT;
        END IF;

        counter := counter + 1;

    END LOOP;
END;
