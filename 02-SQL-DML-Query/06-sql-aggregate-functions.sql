-- Find the maximum price phone info
-- play out little bit sub query

SELECT * FROM smartphones
WHERE price = (SELECT Max(price) FROM smartphones)

-- FInd the costly samsung Phone
SELECT max(price) FROM smartphones
WHERE brand_name = "samsung";

-- find the 'apple' brand avg price
SELECT avg(price) as "Apple phone Avg Price" FROM smartphones
WHERE brand_name = "oppo";

-- how much money will be required if you want to buy all phone from the database.
 SELECT sum(price) FROM smartphones

-- count the number of phone is there where brand name is 'oneplus'
SELECT count(*) as "OnePlus Phone" FROM smartphones
WHERE brand_name = "oneplus";

-- SELECT count(DISTINCT(brand_name)) as "Unique Phone Brand" FROM smartphones
SELECT count(DISTINCT(processor_brand)) as "Unique Phone Brand" FROM smartphones