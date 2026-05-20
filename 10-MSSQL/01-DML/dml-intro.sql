-- 01: insert: add a new row in the target table
-- syntax: INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES(val1, val2, val3, ...)

-- insert a new customer
INSERT INTO customers(id, first_name, country, score)
Values
    (6, 'Al Amin', 'BD', NULL),
    (7, 'Aminul', 'BD', NULL)

SELECT *
FROM customers