-- basics SET operations

SELECT FirstName, LastName
FROM Sales.Customers

UNION

SELECT FirstName, LastName
FROM Sales.Employees

-- datatype must be same 

SELECT
    CustomerID,
    FirstName
FROM Sales.Customers

UNION

SELECT 
    EmployeeID,
    LastName
FROM Sales.Employees