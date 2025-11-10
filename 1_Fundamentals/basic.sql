DECLARE
    -- Sinle Line Comment
    myMessage varchar2(20) := 'Hello, World!';
    name VARCHAR2(20) default 'Nazil';
    message VARCHAR2(30) := 'That''s bang on theory'; -- Escape Sequence Characters
BEGIN
    /* 
        This is a 
        Multi Line comment    
     */
    DBMS_OUTPUT.put_line(myMessage);
    DBMS_OUTPUT.PUT_LINE('My name is ' || name);
    DBMS_OUTPUT.PUT_LINE('Hey, ' || message); -- Escape Sequence Characters
END;
/
