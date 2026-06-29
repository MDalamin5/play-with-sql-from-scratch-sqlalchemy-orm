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

-- TASK: Find the total sales for each product, additionally provide details such order id & order date

SELECT
ProductID,
OrderDate,
SUM(Sales) OVER(PARTITION BY ProductID) TotalSales
FROM
Sales.Orders;

-- TASK: Find the total sales for each combination of product and order status
SELECT
OrderID,
ProductID,
OrderStatus,

SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus)
FROM
Sales.Orders

-- WINDOW FUNC: Order By
-- TASK: Rank each order based on their sales from highest to lowest, additionally provide details such order id & order date

SELECT
OrderID,
ProductID,
OrderDate,
Sales,
RANK() OVER(ORDER BY Sales DESC)  as RankSales
FROM 
Sales.Orders

-- Frame Clause Syntax
-- AVG(Sales) Over(partition by category Order By OrderDate ROWS Between Current Row and Unbounded row)
-- Frame clause can only be used together with order by clause.
-- Lower value must be Before the higher value.

