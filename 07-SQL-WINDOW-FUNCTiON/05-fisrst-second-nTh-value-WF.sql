-- Query related to FIrst, second, nTh value.

-- find this student whose mark is 1 in his branch
-- SELECT *,
-- FIRST_VALUE(name) OVER(PARTITION BY branch ORDER BY marks DESC) as 'Rank-1  Name'
-- FROM students

-- find the last value use Frame-window function.

-- SELECT *,
-- LAST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC 
--     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
-- ) FROM students

-- find nTh value using window function.

SELECT *,
NTH_VALUE(name, 2) OVER(PARTITION BY branch ORDER BY marks DESC 
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
) FROM students