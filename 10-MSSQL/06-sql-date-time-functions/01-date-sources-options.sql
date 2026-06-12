SELECT 
CreationTime,
'2026-06-12' as 'Hardcoded',
GETDATE() as 'Today'
FROM 
Sales.Orders