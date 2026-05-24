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
