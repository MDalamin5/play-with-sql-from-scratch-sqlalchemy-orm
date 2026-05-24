-- retrieve all data from customer and order in two different table

SELECT *
FROM customers;

SELECT * FROM orders

-- inner join
-- get all customer along with their orders, but only for customer who have placed an order

SELECT 
    id, 
    first_name,
    sales
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id

-- get all customer along with their orders and including those without orders

SELECT 
    C.id,
    C.first_name,
    O.order_id,
    O.sales
FROM customers as C
LEFT JOIN orders as O
on C.id = O.customer_id



-- full join
SELECT 
    C.id,
    C.first_name,
    O.order_id,
    O.sales
FROM customers as C
FULL JOIN orders as O
on C.id = O.customer_id