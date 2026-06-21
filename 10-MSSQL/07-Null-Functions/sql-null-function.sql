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