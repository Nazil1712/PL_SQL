DECLARE
    /* Used when you know the maximum number of elements in advance. */
   TYPE t_grade IS VARRAY(5) OF VARCHAR2(10);
   grades t_grade := t_grade('A','A+','B','C');
BEGIN

    grades.EXTEND;
    grades(5) := 'B+';
 
 FOR i IN 1..grades.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE('Grade ' || i || ': ' || grades(i));
  END LOOP;
END;
/