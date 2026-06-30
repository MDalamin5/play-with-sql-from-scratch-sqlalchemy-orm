-- SUM, AVT, MIN, MAX, COUNT
-- why they are called aggregated: its sum all value and return one value.
-- Syntax: AVG(Sales) OVER (PARTITION by productId Orderby ProductName)

-- TASK: Find the total number of orders for each product.

SELECT 
COUNT(Sales) OVER(PARTITION BY productId) NumberOfProduct
FROM
Sales.Orders

