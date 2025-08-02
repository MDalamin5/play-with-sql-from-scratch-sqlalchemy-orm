-- lag function
SELECT *,
LAG(marks) OVER(PARTITION BY branch ORDER BY student_id)
FROM students;

-- lead function
SELECT *,
LEAD(marks) OVER(PARTITION BY branch ORDER BY student_id)
FROM students;