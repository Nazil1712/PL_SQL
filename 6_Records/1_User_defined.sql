DECLARE

    TYPE emp_rec IS RECORD (
        emp_id NUMBER,
        emp_name VARCHAR2(50)
    );

    v_emp emp_rec;
BEGIN

    v_emp.emp_id := 101;
    v_emp.emp_name := 'Parth';

    DBMS_OUTPUT.PUT_LINE(v_emp.emp_id || ' | ' || v_emp.emp_name);

END;
/