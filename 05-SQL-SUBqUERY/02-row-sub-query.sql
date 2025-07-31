-- 1. find all users who never ordered

SELECT * FROM users
WHERE user_id NOT IN (
    SELECT DISTINCT(user_id) FROM orders
);

-- 2. find all the movies made by top 3 directors (in terms of total gross income)
-- common table expression.
WITH top_directors AS (
    SELECT director FROM movies
    GROUP BY director
    ORDER BY sum(gross) DESC LIMIT 3
)

SELECT * FROM movies
WHERE director IN (
    SELECT * FROM top_directors
);

-- 3. find all movies of all those actors whose filmography's avg rating > 8.5 (take 25000 votes as cutoff.)

SELECT * FROM movies
WHERE star IN (
    SELECT star FROM movies
    WHERE votes > 25000
    GROUP BY star
    HAVING AVG(score) > 8.4
)