DECLARE
    v_empno emp.empno%TYPE := 7788;
    v_name emp.ENAME%TYPE;

BEGIN
    SELECT ename INTO v_name FROM emp WHERE empno = v_empno;
    DBMS_OUTPUT.put_line('Hello, ' || v_name || ' (Emp No ==> ' || v_empno || ' )');

END;
