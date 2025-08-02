-- Overall rank on the data based on the marks.

SELECT *,
RANK() OVER(ORDER BY marks DESC)
FROM students

-- Rank based on the branch marks. if more than the two student is same mark the the got the same rank
SELECT *,
rank() OVER(PARTITION BY branch ORDER BY marks DESC)
FROM students

-- Dense Rank

SELECT *,
DENSE_RANK() OVER(PARTITION BY branch ORDER BY marks DESC)
FROM students;

-- Row number basics on branch

SELECT *,
ROW_NUMBER() OVER(PARTITION BY branch)
FROM students

-- make a unique column like branch name and branch row number as serial

SELECT *,
CONCAT(branch, "-", ROW_NUMBER() OVER(PARTITION BY branch))
FROM students


