-- Find to the total score all country.

SELECT country, SUM(score) as 'People'
FROM customers
GROUP BY country

ORDER BY 'People'

-- Find the total score and total number of customer for each country.
-- SELECT * from customers

SELECT country, count(first_name) as "Number of Customer", SUM(score) as "Score"
FROM customers
GROUP BY country
HAVING country = 'UK'

-- Find the average score for each country considering only customer with a score not equal to 0 and return only those countries with an average score greater than 430


-- select * 
-- FROM 
-- customers

SELECT country, AVG(score) as ascore
FROM customers
WHERE score != 0
GROUP BY country 
HAVING AVG(score) > 430