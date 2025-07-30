-- find all the orders placed in pune
SELECT * FROM users t1
JOIN orders t2
ON t1.user_id = t2.user_id
WHERE t1.city = "pune"