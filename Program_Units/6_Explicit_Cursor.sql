DECLARE
    e_no Employee.EMP_NO%TYPE;
    e_name Employee.EMP_NAME%TYPE;
    e_sal Employee.EMP_SAL%TYPE;

    -- Defining / declaring cursor
    CURSOR c_my_employees IS
        SELECT emp_no, emp_name, emp_sal from EMPLOYEE;
BEGIN
    OPEN c_my_employees; -- Allocating the memory

    LOOP
        FETCH c_my_employees INTO e_no, e_name, e_sal; -- Retriving the data
        
        EXIT WHEN c_my_employees%notfound;

        DBMS_OUTPUT.PUT_LINE(e_no || ' ' || e_name || ' ' || e_sal);
    END LOOP;

    CLOSE c_my_employees;   -- Releasing the memory
END;
/