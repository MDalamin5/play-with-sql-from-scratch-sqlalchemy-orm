-- self join and find the emergency contact person name

SELECT t1.name AS "Name", t2.name as "Emergency Contact Name" FROM users t1
INNER JOIN
users t2
ON t1.emergency_contact = t2.user_id