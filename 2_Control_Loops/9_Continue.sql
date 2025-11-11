DECLARE
    i number := 1;
    counter number := 0;
BEGIN

    FOR i in 10..15 LOOP
        if i = 15 THEN
            CONTINUE;
        END IF;
        DBMS_OUTPUT.PUT_LINE('Value of i : ' || i);
            
    END LOOP;
 
END;
/