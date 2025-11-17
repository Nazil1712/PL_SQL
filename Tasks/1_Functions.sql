/* 
You are tasked with building PL/SQL functions for a Student Performance Management System. Use the following schema:

Students(student_id INT, student_name VARCHAR2(50), course VARCHAR2(30))

Marks(student_id INT, subject VARCHAR2(30), score NUMBER)

Tasks:

Write a function get_student_total(p_student_id IN NUMBER) RETURN NUMBER → returns the total score of a student across subjects.

Write a function get_student_average(p_student_id IN NUMBER) RETURN NUMBER → returns average marks.

Write a function get_grade(p_student_id IN NUMBER) RETURN VARCHAR2 that calculates grade based on average:

>=90 → 'A+'

80-89 → 'A'

70-79 → 'B'

60-69 → 'C'

<60 → 'F'

Write a function course_topper(p_course IN VARCHAR2) RETURN VARCHAR2 that returns the student name with highest total marks in a given course.

Demonstrate using functions in a SQL SELECT query (e.g., SELECT student_id, get_grade(student_id) FROM Students).

Milestone Name	Milestone Name
Function for total marks	15 %
Function for average	15 %
Function for grade	20 %
Function for course topper	25 %
Using functions in SQL queries	25 %
Action Item Guidelines

All functions must be created with proper CREATE OR REPLACE FUNCTION.

Ensure proper return data type for each function.

Handle cases where student has no marks (return 0 or 'N/A').

Demonstrate function calls in both PL/SQL blocks and SQL queries.

Prerequisite

SQL basics (tables, SELECT, aggregation functions)

PL/SQL procedures, control structures, and records

Review Process

Run each function independently with test inputs.

Validate outputs against manual calculations.

Test function integration inside SQL queries.

Award scores per milestone completion.

Skills
PL/SQL
FUNCTION

 */


INSERT INTO Students VALUES (1, 'Nazil', 'CS');
INSERT INTO Students VALUES (2, 'Naresh', 'CS');
INSERT INTO Students VALUES (3, 'Mahesh', 'IT');
INSERT INTO Students VALUES (4, 'Raj', 'IT');
INSERT INTO Students VALUES (5, 'Abdul', 'IT');
INSERT INTO Students VALUES (6, 'Dharmik', 'IT');


INSERT INTO Marks VALUES (1, 'DBMS', 95);
INSERT INTO Marks VALUES (1, 'OS', 90);
INSERT INTO Marks VALUES (2, 'DBMS', 75);
INSERT INTO Marks VALUES (2, 'OS', 85);
INSERT INTO Marks VALUES (3, 'DBMS', 55);
INSERT INTO Marks VALUES (3, 'OS', 65);

INSERT INTO Marks VALUES (4, 'DBMS', 75);
INSERT INTO Marks VALUES (4, 'OS',62);
INSERT INTO Marks VALUES (5, 'DBMS', 69);
INSERT INTO Marks VALUES (5, 'OS', 71);
INSERT INTO Marks VALUES (6, 'DBMS', 88);
INSERT INTO Marks VALUES (6, 'OS', 92);



-- get_student_total
CREATE FUNCTION get_student_total (p_student_id IN number) 
RETURN NUMBER
IS
    v_total_marks NUMBER := 0;
BEGIN
    SELECT NVL(SUM(score),0)
    INTO v_total_marks
    FROM MARKS
    WHERE STUDENT_ID = p_student_id;

    return v_total_marks;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        return 0;
END;
/



-- get_student_average
CREATE FUNCTION get_student_average(p_student_id IN NUMBER) 
RETURN NUMBER
IS
    v_avg NUMBER := 0;
BEGIN
    SELECT NVL(AVG(SCORE),0)
    INTO v_avg 
    FROM MARKS
    WHERE STUDENT_ID = p_student_id;

    return v_avg;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;
/


-- get_grade
CREATE FUNCTION get_grade(p_student_id IN NUMBER) 
RETURN VARCHAR2
IS 
    v_avg NUMBER := 0;
    v_grade VARCHAR2(2);
BEGIN

    v_avg := GET_STUDENT_AVERAGE(p_student_id);

    CASE 
        when v_avg >=90 THEN v_grade := 'A+';
        when v_avg >= 80 THEN v_grade := 'A';
        when v_avg >= 70 THEN v_grade := 'B';
        when v_avg >= 60 THEN v_grade := 'C';
        ELSE v_grade := 'F';
    END CASE;

    return v_grade;
END;
/


-- course_topper

CREATE FUNCTION course_topper(p_course IN VARCHAR2)
RETURN VARCHAR2
IS
    v_topper_name Students.student_name%TYPE;
BEGIN
    SELECT s.student_name
    INTO v_topper_name
    FROM Students s
    JOIN (
        SELECT m.student_id, SUM(m.score) AS total
        FROM Marks m
        GROUP BY m.student_id
    ) t ON s.student_id = t.student_id
    WHERE s.course = p_course
    AND t.total = (
        SELECT MAX(SUM(score))
        FROM Marks m
        JOIN Students s2 ON s2.student_id = m.student_id
        WHERE s2.course = p_course
        GROUP BY m.student_id
    );

    RETURN v_topper_name;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'N/A';
END;
/