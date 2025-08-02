-- Find all the student who have marks higher than the avg marks of their respective branch

SELECT * FROM (
    SELECT *, AVG(marks) OVER(PARTITION BY branch) as "branch_avg_marks"
FROM students
) t1
WHERE t1.marks > t1.branch_avg_marks