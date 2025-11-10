DECLARE
    grade char(1) := 'A';
BEGIN
    CASE grade
        when 'A' then DBMS_OUTPUT.PUT_LINE('Excellent');
        when 'B' then DBMS_OUTPUT.PUT_LINE('Very Good');
        When 'C' then DBMS_OUTPUT.PUT_LINE('Well done');
        When 'D' then DBMS_OUTPUT.put_line('You passed');
        when 'F' then DBMS_OUTPUT.PUT_LINE('Better luck next time!');
        ELSE DBMS_OUTPUT.PUT_LINE('No such grade');
    END CASE;
END;
/