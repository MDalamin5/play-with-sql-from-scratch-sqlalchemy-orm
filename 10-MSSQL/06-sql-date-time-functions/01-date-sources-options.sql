SELECT 
CreationTime,
'2026-06-12' as 'Hardcoded',
GETDATE() as 'Today'
FROM 
Sales.Orders

-- Extract the prat of the Date

-- Extract Date, month, year
-- Functions -> Year, Date, Month: Date(2026-06-12) -> 06

SELECT 
CreationTime, 
YEAR(CreationTime) Year, 
MONTH(CreationTime) Month,
DAY(CreationTime) Day
FROM Sales.Orders

-- DATEPART() -> Returns a specific part of a date as a Number.
-- Syntax DATEPART(part, date)
SELECT 
CreationTime, 
DATEPART(MONTH, CreationTime) D_creatoins,
YEAR(CreationTime) Year, 
MONTH(CreationTime) Month,
DAY(CreationTime) Day,
DATEPART(YEAR, CreationTime) D_Datepart,
DATEPART(HOUR, CreationTime) D_Hour,
DATEPART(QUARTER, CreationTime) Quater,
DATEPART(WEEKDAY, CreationTime) Week_day,
DATEPART(WEEK, CreationTime) Week
FROM Sales.Orders

-- Part Extractions: DATENAME -> return the name of the date part.

SELECT 
CreationTime,
DATENAME(MONTH, CreationTime) Month_Name,
DATENAME(WEEK, CreationTime) Week_Name,
DATENAME(WEEKDAY, CreationTime) WeekDay_name
FROM 
Sales.Orders

-- DateTrunc: its reset a datetime specific part

SELECT 
CreationTime,
DATETRUNC(HOUR, CreationTime) Reset_Hour,
DATETRUNC(MONTH, CreationTime) Reset_Month
FROM 
Sales.Orders

-- DateTrunc is use in the Data analysis level.

SELECT 
DATETRUNC(MONTH, CreationTime) CReations_time,

COUNT(*)


FROM 
Sales.Orders

GROUP BY(DATETRUNC(MONTH, CreationTime))


-- EOMONTH() -> Return the last of the month date
-- 2026-05-13 --> 2026-05-31

SELECT 
OrderID,
CreationTime,
EOMONTH(CreationTime) 'End OF the Month'


FROM 
Sales.Orders


-- Part Extraction use case: Data Aggregations
-- How many orders placed each year?
SELECT 
DATETRUNC(YEAR, OrderDate),
count(*)
FROM 
Sales.Orders
GROUP BY(DATETRUNC(YEAR, OrderDate))

