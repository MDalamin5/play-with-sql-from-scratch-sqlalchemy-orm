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