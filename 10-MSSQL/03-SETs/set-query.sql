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