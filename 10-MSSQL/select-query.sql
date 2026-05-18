-- Query to select customers with a score of 500 or higher

-- SELECT id, country, score
-- FROM Customers WHERE
-- score >=500

-- Query to select customers who are from Germany

-- SELECT id, country, score
-- FROM Customers WHERE
-- country = 'Germany'
-- order by score DESC;

-- Nested Sorting

SELECT *
FROM
customers
ORDER BY
country ASC,
score DESC;