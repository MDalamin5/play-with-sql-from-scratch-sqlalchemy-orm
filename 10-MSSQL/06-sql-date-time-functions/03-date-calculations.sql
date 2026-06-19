-- DATEADD(): Adds or subtracts a specific time interval to/from a date
-- add 3 years, reduce 2 month and add 3 day
-- SYntax: DATEADD(part, interval, date)
-- DateADD(year, 2, OrderDate)

SELECT 
OrderDate,
DATEADD(YEAR, 2, OrderDate) Add_2_Years,
DATEADD(MONTH, -3, OrderDate) Reduce_2_Month,
DATEADD(DAY, 10, OrderDate) Add10Days
FROM
Sales.Orders

-- DateDIFF: Find the difference between two dates. 
-- Problem: Calculate the age of the employees.

SELECT 
BirthDate,
DATEDIFF(YEAR, BirthDate, GETDATE()) Age_Year
FROM
Sales.Employees

-- Find the average shipping durations in days for each month
SELECT
OrderID,
OrderDate, 
ShipDate,
DATEDIFF(DAY, OrderDate, ShipDate)
FROM Sales.Orders

-- for each month
SELECT 
MONTH(OrderDate) as ORDERDate,
AVG(DATEDIFF(DAY, OrderDate, ShipDate))
FROM
Sales.Orders
GROUP BY MONTH(OrderDate)

-- find the number of days between each order and previous order.
SELECT 
OrderID,
OrderDate as CurrentDate,
LAG(OrderDate) OVER (ORDER BY OrderDate) Previous_date,
DATEDIFF(DAY, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) NoOfGapBetweenOrder
FROM
Sales.Orders

-- ISDATE(): its return a value is date format or not
SELECT
ISDATE('124') DateCheck
