-- 1. Find the most profitable movie of each year

SELECT * FROM movies
WHERE ((year, gross - budget)
    in (SELECT year, max(gross - budget)FROM movies
            GROUP BY year
            ORDER BY year DESC)
);

-- Find the highest rated movie of each genre votes cutoff of 25000

SELECT * FROM movies
WHERE ((genre, score)
    in (
        SELECT genre, max(score) FROM movies
        WHERE votes > 25000
        GROUP BY genre
    )

) and votes > 25000

