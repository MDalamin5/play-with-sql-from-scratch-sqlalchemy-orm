-- Find this phone which phone brand name is Samsung
SELECT * FROM smartphones
WHERE brand_name = "samsung";

-- -- Find all flagship phone which price is gater then 50k
SELECT * FROM smartphones
WHERE price > 50000;

-- Between keyword- fine the phone in a range like gater then 20 and less then 30
SELECT * FROM smartphones
WHERE price > 20000 AND price < 30000;

-- Write same query with more robust way
SELECT * FROM smartphones
WHERE price BETWEEN 10000 AND 15000;

-- Find this phone which rating is gater then 80 and and price less then 20000
SELECT model, price, rating FROM smartphones
WHERE rating > 8 and price < 20000

-- Find all samsung phones with ram 8gb

SELECT model as "Phone Name", ram_capacity as "RAM" FROM smartphones
WHERE brand_name = "samsung" and price <20000;

-- Find this phone which processor is 'snapdragon, exynos, bionic'
SELECT model, processor_brand FROM smartphones
WHERE processor_brand = "snapdragon" OR processor_brand = "exynos"

-- same query but advanced way.
SELECT * FROM smartphones
WHERE processor_brand IN ("snapdragon", "exynos")