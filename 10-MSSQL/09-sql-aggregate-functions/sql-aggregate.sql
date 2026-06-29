-- They accepted multiply row but output is the singe value
-- e.g. SUM, AVG, COUNT, MAX, MIN
-- FInd the total number of order, total sales, avg, max, min sales

SELECT 
CustomerId,
COUNT(*) total_number,
SUM(Sales) total_sales,
AVG(Sales) avg_sales,
MAX(Sales) max_sales,
MIN(Sales) min_sales
FROM
Sales.Orders
GROUP BY CustomerID