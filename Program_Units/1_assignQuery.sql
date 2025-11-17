DECLARE
    c_Emp_No Employee.EMP_NO%TYPE := 101;
    c_Emp_Name Employee.EMP_NAME%TYPE;
    c_Emp_Sal Employee.EMP_SAL%TYPE;
    c_Emp_Comm Employee.EMP_COMM%TYPE;
    c_Dept_No Employee.DEPT_NO%TYPE;
 
BEGIN
    SELECT EMP_NAME, EMP_SAL, EMP_COMM, DEPT_NO 
    INTO  c_Emp_Name, c_Emp_Sal, c_Emp_Comm, c_Dept_No
    from EMPLOYEE 
    where EMP_NO = c_Emp_No;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || c_Emp_Name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || c_Emp_Sal);
    DBMS_OUTPUT.PUT_LINE('Commission: ' || c_Emp_Comm);
    DBMS_OUTPUT.PUT_LINE('Dept No: ' || c_Dept_No);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Employee found with Emp No ' || c_Emp_No);
 
END;
/