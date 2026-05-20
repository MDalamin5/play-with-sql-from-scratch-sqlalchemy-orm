-- Create the table with column is id, name, bod, phone

CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
)
-- view the table.

SELECT *
FROM persons

-- add a new column in person table

ALTER TABLE persons
ADD email VARCHAR(30) NOT NULL

-- remove the phone table from the table

ALTER TABLE persons
DROP column phone 

-- Delete the table persons from the database
DROP TABLE persons