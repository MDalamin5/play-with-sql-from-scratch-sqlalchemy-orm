-- Update data into the table like which processor brand is dimensity and its convert into 'mediatek'
UPDATE smartphones
SET processor_brand = "mediatek"
WHERE processor_brand = "dimensity"

-- Test data
SELECT * FROM smartphones
WHERE processor_brand = "mediatek"

-- Update in two column like where name ia Alamin change his email nsu.edu to northsouth.edu
UPDATE phone.users
SET email = "alamin@northsouth.edu", password = "99999"
WHERE name = 'ALamin'