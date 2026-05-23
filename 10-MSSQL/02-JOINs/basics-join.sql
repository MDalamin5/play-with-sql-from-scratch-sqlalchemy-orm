-- retrieve all data from customer and order in two different table

SELECT *
FROM customers;

SELECT * FROM orders

-- inner join
-- get all customer along with their orders, but only for customer who have placed an order

SELECT *
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id