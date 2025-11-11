SET SERVEROUTPUT ON;

DECLARE
    counter NUMBER := 0;
    counter2 NUMBER := 0;
BEGIN

    -- Simple
    LOOP
        DBMS_OUTPUT.PUT_LINE('This is iteration number ' || counter);
    
        IF counter = 3 THEN
            EXIT;
        END IF;

        counter := counter + 1;

    END LOOP;


    -- Nested Loop
    LOOP
        
        LOOP
            DBMS_OUTPUT.PUT_LINE('Value i: ' || counter || ' and j : ' || counter2);
            exit when counter2 >= 3;
            counter2 := counter2 + 1;
        END LOOP;

        exit when counter >= 5;
        counter := counter + 1;
        
END;


