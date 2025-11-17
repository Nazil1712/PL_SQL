CREATE FUNCTION totalEmployees
RETURN NUMBER
IS
    totalEmp NUMBER := 0;
BEGIN
    SELECT count(*) 
    into totalEmp
    FROM Employee;

    return totalEmp;
END;
/


-- Calling the function
DECLARE
   totalEmp NUMBER;
BEGIN
    totalEmp := TOTALEMPLOYEES();
    DBMS_OUTPUT.PUT_LINE('Total number of Employees are: ' || totalEmp);
END;
/