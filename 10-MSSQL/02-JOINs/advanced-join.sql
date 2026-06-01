-- LEFT ANTI JOIN: Return row form left that has NO MATCH in RIght table.

-- Get all customer who haven't placed any order.

SELECT *
FROM customers as C
LEFT JOIN orders as O
ON C.id = O.customer_id
WHERE O.order_id is NULl

SELECT * FROM orders

-- Get all orders without matching customers
SELECT *
FROM customers as C
RIGHT JOIN orders as O
ON C.id = O.customer_id
WHERE C.id is NULl

-- full anti join
-- Find customers without orders and orders without customer.

SELECT *
FROM customers as c
FULL JOIN orders as o
ON c.id = o.customer_id
where c.id is NULL or o.customer_id is NULL

-- Get all customer along with their orders, but only for customers who have placed order.
SELECT *
FROM customers as c
LEFT JOIN orders as o
ON c.id = o.customer_id
WHERE o.customer_id is NOT NULL