DECLARE
    num1 NUMBER := 78;
    num2 NUMBER := 12;
    num3 NUMBER := 10;
    num4 NUMBER := 20;
    num5 NUMBER := 30;

BEGIN
    -- IF THEN
    if num1 > num2 then
        DBMS_OUTPUT.put_line('num1 is greater than num2');
    end if;


    -- IF THEN ELSE
    if num2 > num1 then
        DBMS_OUTPUT.put_line(num2 || ' is greater than (IF) ' || num1);

    else
        DBMS_OUTPUT.put_line(num1 || ' is greater than (ELSE) ' || num2);

    end if;


    -- NESTED IF ELSE
    if num3 < num4 then
        DBMS_OUTPUT.put_line('num3 is less than num4');

        if num4 < num5 then
        DBMS_OUTPUT.put_line('num4 is less than num5');
        end if;

    end if;


    -- IF THEN ELSIF-THEN-ELSE Ladder
    /* if num1 < num2 then
        DBMS_OUTPUT.put_line */

END;