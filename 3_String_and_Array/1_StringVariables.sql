DECLARE
    name VARCHAR2(20);
    company varchar2(30);
    introduction CLOB;
    choice char(1);
BEGIN
    name := 'John Smith';
    company := 'tntra';
    introduction := 'Hello!, I''m john smith, form Tntra';
    choice := 'y';

    if choice = 'y' THEN
        DBMS_OUTPUT.PUT_LINE(name);
        DBMS_OUTPUT.PUT_LINE(INITCAP(company));
        DBMS_OUTPUT.PUT_LINE(introduction);
        DBMS_OUTPUT.PUT_LINE(choice);
    end if;
END;
/