DECLARE
    type studentsArr IS VARRAY(5) OF VARCHAR2(10);
    type gradesArr IS VARRAY(5) OF INTEGER;

    students studentsArr;
    grades gradesArr;
    total INTEGER;
BEGIN
    students := studentsArr('Nazil','Lalu','Raj','Naresh','Mahesh');
    grades := gradesArr(98,98,80,78,89);
    total := students.count;

    DBMS_OUTPUT.PUT_LINE('Total ' || total || ' Students');

    FOR i IN 1..total LOOP
        DBMS_OUTPUT.PUT_LINE('Student: ' || students(i) || ', Marks: ' || grades(i));
    END LOOP;
    
END;
/