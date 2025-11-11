DECLARE
    greetings varchar2(20) := 'Hello World!';
                            -- 123456789012

    -- Remember !!!!! It starts with 1 instead of 0

    greet2 varchar2(30) := '.....Hello World.....';
BEGIN
    DBMS_OUTPUT.PUT_LINE(UPPER(greetings)); 

    DBMS_OUTPUT.PUT_LINE(LOWER(greetings));

    DBMS_OUTPUT.PUT_LINE(INITCAP(greetings));

    DBMS_OUTPUT.PUT_LINE(SUBSTR(greetings, 1, 3));
    DBMS_OUTPUT.PUT_LINE(SUBSTR(greetings, -1, 5)); -- Reverse
    DBMS_OUTPUT.PUT_LINE(SUBSTR(greetings, 7, 3));
    DBMS_OUTPUT.PUT_LINE(SUBSTR(greetings, 5));

    -- To find the postion/index of that character
    DBMS_OUTPUT.PUT_LINE(INSTR(greetings,'e'));

    -- TRIM
    DBMS_OUTPUT.PUT_LINE(RTRIM(greet2,'.'));
    DBMS_OUTPUT.PUT_LINE(LTRIM(greet2,'.'));
    DBMS_OUTPUT.PUT_LINE(TRIM('.' from greet2));
END;
/