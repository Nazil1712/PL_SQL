DECLARE
    grade char(1) := 'F';
    num1 NUMBER := 45;
BEGIN
 
    CASE
        when grade='A' then DBMS_OUTPUT.PUT_LINE('Excellent');
        when grade='B' then DBMS_OUTPUT.PUT_LINE('Very Good');
        when grade='C' then DBMS_OUTPUT.PUT_LINE('Well done');
        when num1=45 then DBMS_OUTPUT.PUT_LINE('Number is 45');
        ELSE DBMS_OUTPUT.PUT_LINE('Please provide valid credentials');
    END CASE;
END;
/   