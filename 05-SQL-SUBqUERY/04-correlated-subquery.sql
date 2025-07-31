-- Find all the movies that have a rating higher than the average rating of movies in the same genre.

SELECT * FROM movies m1
WHERE score > (
    SELECT avg(score) FROM movies m2 WHERE m2.genre = m1.genre
)