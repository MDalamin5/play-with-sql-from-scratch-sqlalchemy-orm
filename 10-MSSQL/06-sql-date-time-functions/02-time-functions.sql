-- time functions
-- Format the Day
-- dd -> date only
-- ddd -> First 3 chat of the day: Sun
-- dddd -> full name of the data : Sunday

SELECT 
CreationTime,
FORMAT(CreationTime, 'dd') as 'Date Number',
FORMAT(CreationTime, 'ddd') as 'First 3 Latter',
FORMAT(CreationTime, 'dddd') Full_Name,
FORMAT(CreationTime, 'MM') Month_as_Number,
FORMAT(CreationTime, 'MMM') Month_as_2dig,
FORMAT(CreationTime, 'MMMM') Month_as_full,
-- won format
FORMAT(CreationTime, 'dd-MM-yyyy') Own_format
FROM 
Sales.Orders

-- P1: Show creationTime using the following format: Day Wed Jan Q1 2025 12:32:56 PM
SELECT 
CreationTime,
'Day ' + FORMAT(CreationTime, 'ddd MMM ') + 'Q' + DATENAME(QUARTER, CreationTime) + FORMAT(CreationTime, ' yyyy') + FORMAT(CreationTime, 'hh:mm:ss tt') as 'Custom Format'
FROM
Sales.Orders