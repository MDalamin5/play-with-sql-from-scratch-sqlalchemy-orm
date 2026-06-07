-- SQL RULES
    -- R1: ORDER BY can be used only once
    -- R2: Same Number of Column
    -- R3: Matching Data type
    -- R4: Same order of column
    -- R5: First query controls Aliases
    -- R6: Mapping Correctly column

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