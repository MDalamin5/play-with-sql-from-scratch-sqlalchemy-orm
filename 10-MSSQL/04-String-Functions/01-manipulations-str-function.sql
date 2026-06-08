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

-- TRIM: remove some chat or white space from the word 
-- Find the customer whose first name contains leading or trailing spaces
SELECT 
    first_name,
    LEN(first_name) as 'FN_len',
    LEN(TRIM(first_name)) as 'FN_LEN_TRIM'
    
FROM customers
-- WHERE first_name != TRIM(first_name)