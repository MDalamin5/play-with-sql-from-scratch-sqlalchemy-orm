-- Union operation

-- SELECT * FROM person1
-- UNION
-- SELECT * FROM person2;

-- Union all operation all value will add in the one table

-- SELECT * FROM person1
-- UNION ALL
-- SELECT * FROM person2;

-- intersect: only common element.

-- SELECT * FROM person1
-- intersect
-- SELECT * FROM person2;

SELECT * FROM person1
except
SELECT * FROM person2