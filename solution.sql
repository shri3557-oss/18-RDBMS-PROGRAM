CREATE OR REPLACE FUNCTION count_students(p_dept_id NUMBER)
RETURN NUMBER
IS
    total_students NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total_students
    FROM Student
    WHERE DepartmentID = p_dept_id;

    RETURN total_students;
END;
/BEGIN
    DBMS_OUTPUT.PUT_LINE('Number of Students: ' || count_students(101));
END;
/
