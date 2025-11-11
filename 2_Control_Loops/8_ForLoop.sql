DECLARE
    i number;
BEGIN

    -- Simple
    /* FOR i IN 10..20 LOOP
        DBMS_OUTPUT.PUT_LINE('Value of i : ' || i);
    END LOOP; */


    -- For Reverse (Just need to add reverse keyWord)
    FOR i IN REVERSE 50..60 LOOP
        DBMS_OUTPUT.PUT_LINE('Value of i : ' || i);
    END LOOP;
END;
/