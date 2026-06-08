-- Retrieve the first 2 char of each first name
SELECT 
    first_name,
    LEFT(TRIM(first_name), 2) as 'Name First 2c', 
    RIGHT(TRIM(first_name), 3) as 'Name last 3c'
FROM customers

-- Retrieve a list of customer first names removing the first character.

SELECT first_name,
SUBSTRING(TRIM(first_name), 2, LEN(first_name)) as 'Removing the Fist Chat'
FROM 
customers