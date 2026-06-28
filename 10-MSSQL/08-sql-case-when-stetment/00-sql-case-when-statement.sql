-- what is Case Statement!
-- Evaluate a list of conditions and returns a value when the first conditions is met

-- SQL Conditions Syntax
-- CASE: start of the logics
--   WHEN conditions1 THEN result1
--   WHEN conditions2 THEN result2
--   ...
--  ELSE result
-- END: the end of the logics

-- Main Purpose is Data Transformation
-- Derive new information
-- Create new Columns based on existing data

-- SQL TASK: Generate a report showing the total sales for each category: 
--     - HIGH: if the sales is higher then 50
--     - Medium: if the sales is between 20 and 50
--     - Low: if the sales equal or lower than 20
-- Sort the result from lowest to highest

SELECT
Category,
SUM(Sales) as TotalSales
FROM(
SELECT
OrderID,
Sales,
CASE
    WHEN Sales > 50 THEN 'HIGH'
    WHEN Sales > 20 THEN 'Medium'
    ELSE 'LOW'
END Category
FROM
Sales.Orders
) t
GROUP BY Category
ORDER BY TotalSales DESC

-- Retrieve customer details with abbreviated country code.
SELECT
    CustomerID,
    FirstName,
    LastName,
    Country,
    CASE
        WHEN Country = 'Germany' THEN 'Ge'
        WHEN Country = 'USA' THEN 'Us'
        ELSE 'n/a'
    END
FROM
Sales.Customers;

SELECT DISTINCT Country
FROM Sales.Customers