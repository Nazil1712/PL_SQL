DECLARE
    /* Can grow dynamically and be stored in database columns. */
    TYPE t_marks IS TABLE OF NUMBER INDEX BY VARCHAR2(50);
    student_marks t_marks;
BEGIN
    student_marks('Nazil') := 85;
    student_marks('Naresh') := 70;
    student_marks('Mahesh') := 13;

    DBMS_OUTPUT.PUT_LINE('Nazil''s Marks : ' || student_marks('Nazil'));
END; 
/