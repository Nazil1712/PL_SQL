SET SERVEROUTPUT ON;

DECLARE
    counter NUMBER := 0;
    counter2 NUMBER := 0;
BEGIN

    -- Simple
    /* LOOP
        DBMS_OUTPUT.PUT_LINE('This is iteration number ' || counter);
    
        IF counter = 3 THEN
            EXIT;
        END IF;

        counter := counter + 1;

    END LOOP; */


    -- Nested Loop
    LOOP
        counter2 := 0;
        LOOP
            DBMS_OUTPUT.PUT_LINE('[' || counter || '] [' || counter2 || ']');
            exit when counter2 >= 3;
            counter2 := counter2 + 1;
        END LOOP;

        exit when counter >= 3;
        counter := counter + 1;
    
    END LOOP;

END;


