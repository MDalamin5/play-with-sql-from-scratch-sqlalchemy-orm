-- Find to the total score all country.

SELECT country, SUM(score) as 'People'
FROM customers
GROUP BY country

ORDER BY 'People'