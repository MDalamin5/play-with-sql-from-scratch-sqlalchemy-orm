-- SQL join based on two table

SELECT * FROM students s
INNER JOIN class c
ON s.student_id = c.class_id and s.enrollment_year = c.class_year