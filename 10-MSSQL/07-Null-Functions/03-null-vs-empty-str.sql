-- NUll Vs Empty string.
-- NULL: Don't know anythings about its
-- Empty String: its a 0 char data
-- Blank Space: is string value or more space character.

WITH Orders AS (
    SELECT 1 Id, 'A' Category UNION
    SELECT 2, NULL UNION
    SELECT 3, '' UNION
    SELECT 4, '   '
)
SELECT
*, 
DATALENGTH(Category) CategoryLen
FROM Orders;

-- to remove the empty space and the blank space we use 'TRIM'
-- TRIM: remove the unwanted leading and trailing spaces from a string.

WITH Orders AS (
    SELECT 1 Id, 'A' Category UNION
    SELECT 2, NULL UNION
    SELECT 3, '' UNION
    SELECT 4, '   '
)
SELECT
*, 
DATALENGTH(Category) CategoryLen,
DATALENGTH(TRIM(Category)) AfterTrim
FROM Orders