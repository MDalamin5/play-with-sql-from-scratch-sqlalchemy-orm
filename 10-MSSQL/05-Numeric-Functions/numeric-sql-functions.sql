-- count the row of the db.
-- Round UP: 5.126 --> two decimal place: 5.13

SELECT
3.456,
ROUND(3.456, 2) as 'Round_2', 
ROUND(3.456, 1) as 'Round_1',
ROUND(3.456, 0) as 'Round_0'