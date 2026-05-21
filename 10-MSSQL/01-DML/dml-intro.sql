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
