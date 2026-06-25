-- COALESCE, ISNULL, NULLIF, IS (NOT) NULL Functions

-- Replace NULL: 
    -- NULL --> 40 : ISNULL | COALESCE
    -- 40 --> NULL : NULLIF

-- CHECK NULL: 
    -- ISNULL return true if null else false.

-- ISNULL Functions. ISNULL(value, replacement_value)
-- ISNULL (Shipping_address, 'unknown')

-- COALESCE(): Returns the first non-null value from the a list.

-- COALESCE(value1, value2, value3)
-- COALESCE(shipping_address, unknown)
-- COALESCE(shipping_address, billing_address)
-- COALESCE(shipping_address, billing_address, unknown)

-- FInd the average score from the customer.
SELECT 
CustomerID,
Score,
COAlesce(Score, 0) Score_2,
AVG(Score) OVER() AVGsCORE,
AVG(coalesce(Score, 0)) OVER() Avg_new
FROM
Sales.Customers

-- Handling NULLS: Mathematical OPerations
-- Display the full name of the customers in a single field by merging their first and last names, and add 20 bonus point to the each customer score.

SELECT
FirstName,
LastName,
COALESCE(LastName, '') LastNameU,
COALESCE(Score, 0) NewScore,
FirstName + COALESCE(LastName, '') as 'Full Name',
COALESCE(Score, 0) + 20 as 'New Update Score'

FROM
Sales.Customers


-- Identify the customer who's score has note present.
SELECT *
FROM Sales.Customers
WHERE Score is NULL