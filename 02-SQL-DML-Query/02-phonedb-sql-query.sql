-- DISTINCT Query testing
SELECT DISTINCT(brand_name) AS "All Brands" FROM smartphones;

SELECT DISTINCT(os) as "Operating Systems" FROM smartphones;

-- 2. Find the unique combination like 'snapdragon'-->brand name
SELECT DISTINCT brand_name, processor_brand FROM smartphones