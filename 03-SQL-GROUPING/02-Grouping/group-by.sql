-- 01. Group smartphones by brand and get the count, average price, max rating, avg screen size and avg battery

SELECT brand_name, COUNT(brand_name) AS "total_phones", AVG(price), MAX(rating), AVG(screen_size), AVG(battery_capacity) FROM smartphones
GROUP BY brand_name
ORDER BY total_phones DESC LIMIT 5
