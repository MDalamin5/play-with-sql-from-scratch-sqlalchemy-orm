-- WINDOW FUNC: Perform calculations (e.g. aggregations) on a specific subset of data, without losing the level of the details of the rows.

-- GROUP BY: simple data-analysis
-- Window: Advanced data analysis

-- TASK: FIND the total sales across all orders

SELECT 

SUM(Sales) TotalSales
FROM
Sales.Orders

-- TASK: FIND the total sales across each product

SELECT
ProductID,
SUM(Sales) TotalSales
FROM
Sales.Orders
GROUP BY ProductID