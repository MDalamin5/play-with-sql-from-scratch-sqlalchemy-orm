-- Using Sales retrieve a list of all orders, along with the related customer, products, and employee details, for each order display.
-- Order is, customer name, Sales, Price, Sales Person Name.

SELECT 
    odr.OrderID,
    odr.Sales,
    cus.FirstName,
    cus.LastName,
    prd.Product,
    empp.FirstName as 'EMployee name'
    
FROM Sales.Orders as odr
LEFT JOIN Sales.Customers as cus
ON odr.CustomerID = cus.CustomerID
LEFT JOIN Sales.Products as prd
ON odr.ProductID = prd.ProductID
LEFT JOIN Sales.Employees as empp
ON odr.SalesPersonID = empp.EmployeeID

