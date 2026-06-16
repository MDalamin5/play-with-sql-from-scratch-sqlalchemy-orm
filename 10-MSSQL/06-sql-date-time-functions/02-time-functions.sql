-- time functions
-- Format the Day
-- dd -> date only
-- ddd -> First 3 chat of the day: Sun
-- dddd -> full name of the data : Sunday

SELECT 
CreationTime,
FORMAT(CreationTime, 'dd') as 'Date Number',
FORMAT(CreationTime, 'ddd') as 'First 3 Latter',
FORMAT(CreationTime, 'dddd') Full_Name
FROM 
Sales.Orders