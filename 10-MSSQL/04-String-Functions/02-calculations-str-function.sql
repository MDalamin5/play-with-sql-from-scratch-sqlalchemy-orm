-- LEN: How many character in one word or sentence ro chunk.
SELECT 
    first_name,
    LEN(first_name) as 'FN_len',
    LEN(TRIM(first_name)) as 'FN_LEN_TRIM'
    
FROM customers