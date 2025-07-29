-- Sorting data
-- 01. Find the top 5 phone with biggest screen size which is from samsung brand

SELECT model, brand_name, screen_size FROM smartphones
WHERE brand_name = "samsung"
ORDER BY screen_size DESC LIMIT 5;
-- 02. sort all the phone in defending order of number of total camera (front and rare camera combination.)

SELECT model, num_rear_cameras + num_front_cameras as "total_camera" FROM smartphones
ORDER BY total_camera DESC;

03. Sort the phone based on the phone PPi
SELECT model,
SQRT(resolution_width*resolution_width + resolution_height*resolution_height) / screen_size as PPi FROM smartphones
ORDER BY PPi DESC;

-- 04. Find the phone with 2nd largest battery

SELECT model, battery_capacity FROM smartphones
ORDER BY battery_capacity DESC LIMIT 1, 1;

-- 05. Find the worst rated apple phone.
SELECT model, brand_name, rating
FROM smartphones
WHERE brand_name = "apple"
ORDER BY rating ASC LIMIT 1;

-- sorting based on two column

SELECT model, brand_name, price FROM smartphones
ORDER BY brand_name ASC, price ASC