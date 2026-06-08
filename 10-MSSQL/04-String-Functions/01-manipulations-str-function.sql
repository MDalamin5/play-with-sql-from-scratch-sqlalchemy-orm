-- SQL: Data manipulations String Functions.

-- CONCAT: multiple sting value into the one value.

-- show a list of customer first names together with there country in one column.

SELECT 
    first_name,
    country,
    CONCAT(first_name, '-', country) as 'Name_Country'
FROM customers

-- UPPER, LOWER

SELECT 
    first_name, 
    LOWER(first_name) as 'converting name'
FROM customers