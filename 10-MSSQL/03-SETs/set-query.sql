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
SELECT
    FirstName,
    LastName
FROM Sales.Customers

UNION ALL

SELECT
    FirstName,
    LastName
FROM Sales.Employees