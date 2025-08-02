-- Find top 2 most paying customer of each month

-- extract date, monthname, month

SELECT * FROM (
    SELECT user_id, monthname(date) as "Month", sum(amount) as "Total",
    RANK() OVER(PARTITION BY monthname(date) ORDER BY sum(amount) DESC) as "Month_Rank"
    FROM sq.orders
    GROUP BY monthname(date), user_id
) t
WHERE t.Month_Rank < 3
ORDER BY Month DESC, Month_Rank ASC
