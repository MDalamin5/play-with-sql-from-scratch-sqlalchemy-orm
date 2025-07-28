-- 1. Select all row into a table
SELECT * FROM smartphones;

-- 2. Filter columns by name any order
SELECT model, price, rating FROM smartphones;

-- 3. Rename the columns name - alias
SELECT model AS "Phone Name", rating AS "User Rating", battery_capacity AS "mAh", os AS "Operating System" FROM smartphones;

-- 4. Crate mathematical expression in the table
SELECT model, SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size AS ppi FROM smartphones;

-- 5. Constants: add a new column like additional column as constants values
SELECT model, "smartphone" as "type" FROM smartphones


