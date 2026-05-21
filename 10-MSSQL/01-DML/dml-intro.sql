-- 01: insert: add a new row in the target table
-- syntax: INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES(val1, val2, val3, ...)

-- insert a new customer
INSERT INTO customers(id, first_name, country, score)
Values
    (6, 'Al Amin', 'BD', NULL),
    (7, 'Aminul', 'BD', NULL)

-- view the table data
SELECT *
FROM customers

-- INSERt without column name
Insert into customers
VALUEs
    (8, 'Mohimen', 'USA', 456)


-- copy data from 'customers' table into 'persons'
INSERT into persons(id, person_name, birth_date, phone)

--select the all input data for the person table.
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers

SELECT * FROM persons

-- update syntax: 
-- UPDATE table_name
--  SET column1 = value1
--      column2 = value2

-- WHERE <condition>
-- NOTE: Always use where to avoid updating all rows

-- change the score of customer with ID 6 to 0

UPDATE customers
    SET id = 0
        where id = 6

-- view the table data
SELECT *
FROM customers 

-- update one rwo two item

UPDATE customers
SET score = 400,
    country = 'bd'
WHERE id = 7

-- update all NULL value in score column

UPDATE customers
    SET score = 0
WHERE score is NULL


-- remove row from a table.
-- syntax DELETE FROM table_name
-- where conditions

DELETE FROM customers
WHERE id > 5


-- delete the data from the person table
TRUNCATE TABLE persons