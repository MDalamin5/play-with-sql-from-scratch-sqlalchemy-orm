-- find the avg rating of smartphone brands which gave more than 20 phone

SELECT brand_name, AVG(rating) as "avg_rating", COUNT(model) as "num_phone" FROM smartphones
GROUP BY brand_name
HAVING num_phone > 20
ORDER BY avg_rating DESC LIMIT 10;

-- find the top 3 brands with the highest avg ram that have a refresh rate of at least 90hz and fast charging available and don't consider brands which have less then 10 phones.

SELECT brand_name, AVG(ram_capacity) "ram_capacity", COUNT(model) AS "num_phone" FROM smartphones
WHERE refresh_rate > 89 and fast_charging_available = 1
GROUP BY brand_name
HAVING num_phone > 10
ORDER BY ram_capacity DESC LIMIT 3;

-- find the avg price of all the phone brands with avg rating > 70 and num_phones more 10 among all 5g enabled phones

SELECT brand_name, Round(AVG(rating), 3) as "avg_rating" FROM smartphones
WHERE has_5g = "True"
GROUP BY brand_name
HAVING avg_rating > 70