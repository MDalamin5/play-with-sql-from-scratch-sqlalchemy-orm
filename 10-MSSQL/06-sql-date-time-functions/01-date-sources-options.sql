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