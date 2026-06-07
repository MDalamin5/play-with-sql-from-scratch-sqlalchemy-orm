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

-- First table control the table name
SELECT
    CustomerID as ID,
    FirstName
FROM Sales.Customers

UNION

SELECT 
    EmployeeID,
    LastName
FROM Sales.Employees