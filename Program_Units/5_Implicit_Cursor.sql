DECLARE
   total_rows NUMBER;
BEGIN
    UPDATE EMPLOYEE
    SET EMP_SAL = EMP_SAL + 200;

    IF sql%notfound THEN
        DBMS_OUTPUT.PUT_LINE('No Employee found!');
    ELSIF sql%found THEN
        total_rows := sql%rowcount;
        DBMS_OUTPUT.PUT_LINE(total_rows || ' Employees updated.');
    END IF;
END;
/