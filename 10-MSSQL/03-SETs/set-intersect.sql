-- Fiend employee who also a customer

SELECT
    FirstName,
    LastName
FROM Sales.Customers

INTERSECT

SELECT 
    FirstName,
    LastName
from Sales.Employees