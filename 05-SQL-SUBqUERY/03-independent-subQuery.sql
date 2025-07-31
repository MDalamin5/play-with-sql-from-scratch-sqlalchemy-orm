-- 1. Find the most profitable movie of each year

-- SELECT * FROM movies
-- WHERE ((year, gross - budget)
--     in (SELECT year, max(gross - budget)FROM movies
--             GROUP BY year
--             ORDER BY year DESC)
-- );

-- -- Find the highest rated movie of each genre votes cutoff of 25000

-- SELECT * FROM movies
-- WHERE ((genre, score)
--     in (
--         SELECT genre, max(score) FROM movies
--         WHERE votes > 25000
--         GROUP BY genre
--     )

-- ) and votes > 25000

-- Find the favorite food of each customer.


SELECT name, f_name count(*) FROM users t1
JOIN orders t2 on t1.user_id = t2.user_id
JOIN order_details t3 on t2.order_id = t3.order_id
JOIN food t4 on t3.f_id = t4.f_id
GROUP BY t2.user_id, t3.f_id