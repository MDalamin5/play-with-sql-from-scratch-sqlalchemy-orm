-- Union operator Must excluded the duplicated.

SELECT
    FirstName,
    LastName
FROM Sales.Customers

UNION

SELECT
    FirstName,
    LastName
FROM Sales.Employees


-- Union all its included the Duplicated as well
-- Union all much faster then the Union
SELECT
    FirstName,
    LastName
FROM Sales.Customers

UNION ALL

SELECT
    FirstName,
    LastName
FROM Sales.Employees


-- Excepts: Returns all distinct rows from the first query that are not found the second query. [Minus Query]

-- Find employee who are not customer at the same time

SELECT
    FirstName,
    LastName
FROM Sales.Customers

EXCEPT

SELECT
    FirstName,
    LastName
FROM Sales.Employees