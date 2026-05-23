-- between operators: if a value in specific range
-- in between range two number is inclusive
SELECT *
FROM customers


-- retrieve all customer who score in between 400-900
SELECT *
from customers
WHERE score BETWEEN 400 and 900

-- membership operator: IN, NOT IN
-- IN: if a value exits in a list
-- NOT ID: exactly opposite of IN

-- Retrieve all customer from either Germany or USA
SELECT *
FROM customers
WHERE country = 'USA' or country = 'Germany'

-- more easiest why to write
SELECT *
FROM customers
WHERE country IN ('USA', 'Germany')


-- Like Operator: Search for a pattern
-- %: any char, _: exact char %in, %_%: %r%: maria, peter, rayan, r,

-- find all customer who name start with 'M'
SELECT *
FROM customers
WHERE first_name LIKE 'M%'

-- find all customer who name middle char is r
SELECT *
FROM customers
WHERE first_name LIKE '%r%'
