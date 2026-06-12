-- the date format is
-- date: year: month: day 
-- time: hour(1-23): minutes (0-59): second (0-59)

SELECT 
    OrderDate,
    ShipDate,
    CreationTime
FROM Sales.Orders