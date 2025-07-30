-- perform Cross join

-- SELECT * FROM sql_cx_live.users 
-- Cross JOIN sql_cx_live.groups

SELECT * FROM membership t1
INNER JOIN users t2
ON t1.user_id = t2.user_id;

-- Doing left join
SELECT * FROM membership t1
LEFT JOIN users t2
ON t1.user_id = t2.user_id;

-- Right join
SELECT * FROM membership t1
RIGHT JOIN users t2
ON t1.user_id = t2.user_id