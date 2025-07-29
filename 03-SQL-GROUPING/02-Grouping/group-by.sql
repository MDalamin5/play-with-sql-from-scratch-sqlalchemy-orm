-- 01. Group smartphones by brand and get the count, average price, max rating, avg screen size and avg battery

SELECT brand_name, COUNT(brand_name) AS "total_phones", ROUND(AVG(price), 2), MAX(rating), ROUND(AVG(screen_size), 2), ROUND(AVG(battery_capacity), 2) FROM smartphones
GROUP BY brand_name
ORDER BY total_phones DESC LIMIT 5;

-- 02. Group smartphones by whether they have an NFC and get the average price and rating

SELECT has_nfc, max(rating), AVG(price) FROM smartphones
GROUP BY has_nfc;

-- 03. get the summary about if the extended_memory is available 
-- its same as question 2.

-- 04. Group smartphones by the brand and processor brand and get the count of models and the average primary camera resolution (rear)

SELECT brand_name, processor_brand, COUNT(model) as "Num_phone", ROUND(AVG(primary_camera_rear), 3) FROM smartphones
GROUP BY brand_name, processor_brand;

-- 05. Find top 5 most costly phone brand

SELECT brand_name, AVG(price) as "Average_Price" FROM smartphones
GROUP BY brand_name
ORDER BY Average_Price DESC LIMIT 5;

-- 06. Which brand makes the smallest screen smartphones

SELECT brand_name, AVG(screen_size) as avg_screen_size FROM smartphones
GROUP BY brand_name
ORDER BY avg_screen_size ASC LIMIT 1;

-- 08 Group smartphones by the brand, and find the brand with the highest number of models that have both NFC and and IR blaster.

SELECT brand_name, COUNT(model) as "num_phone" FROM smartphones
WHERE has_nfc = "True" AND has_ir_blaster = "True"
GROUP BY brand_name
ORDER BY  num_phone DESC LIMIT 1;

-- 9. Find the all samsung 5g enable phones and find out the avg prince for nfc and non-nfc phones

SELECT brand_name, has_nfc, AVG(price) as "Average Price" FROM smartphones
WHERE brand_name = "samsung"
GROUP BY has_nfc;

-- 10. find the phone name, price of the costliest phone

SELECT brand_name, price, brand_name FROM smartphones
WHERE price = (
    SELECT max(price) from smartphones
)