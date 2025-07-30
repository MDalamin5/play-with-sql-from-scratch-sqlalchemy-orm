-- find all profitable orders
-- find the customer who has placed max number of orders
-- which is the most profitable category
-- which is the mos profitable state
-- find all categories with profit higher than 5000

SELECT t1.order_id, sum(t2.profit) FROM orders t1
JOIN order_details t2
ON t1.order_id = t2.order_id
GROUP BY t1.order_id
HAVING sum(t2.profit) > 0