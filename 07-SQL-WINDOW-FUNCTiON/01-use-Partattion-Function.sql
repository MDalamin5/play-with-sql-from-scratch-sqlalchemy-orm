-- Overview of the WIndow Function.

-- SELECT *, AVG(marks) OVER(PARTITION BY branch) FROM students

-- Find the maximum and minimum value for the table use Window function

SELECT *,
max(marks) OVER() as "Max Marks",
min(marks) OVER(PARTITION BY branch) as "Min Marks"
FROM students

ORDER BY student_id ASC