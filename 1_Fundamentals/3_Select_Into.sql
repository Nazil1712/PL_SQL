DECLARE
   -- 1)
   e_name Employee.EMP_NAME%TYPE;

   -- 2)
   r_customer Employee%rowtype; -- Whole row at once
BEGIN

    -- 1)
    SELECT EMP_NAME 
    into e_name 
    from EMPLOYEE 
    where EMP_NO=102;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || e_name);


    -- 2)
    SELECT * INTO r_customer from EMPLOYEE where EMP_NO=104;
    DBMS_OUTPUT.PUT_LINE('Name of Employee is: ' || r_customer.EMP_NAME);
 
END;
/