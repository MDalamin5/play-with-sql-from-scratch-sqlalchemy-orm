-- 1. find the movies that has highest rating.

SELECT * FROM movies
WHERE score = (SELECT max(score) FROM movies);

-- 2. Find out the movies with highest profit.
SELECT * FROM movies
WHERE (gross - budget) = (SELECT max(gross - budget) FROM movies)

-- 3. Find out the how many movies have a rating > the avg of all the movie ratings (find count of above average movies.)
SELECT count(*) FROM movies
WHERE score > (SELECT avg(score) FROM movies);

-- 4. Find out the highest rated movie of 2000

SELECT * FROM movies
WHERE score = (SELECT max(score) FROM movies
WHERE year = 2000) and year = 2000

-- 5. Find the highest rated movie among all movies whose number of votes are > the dataset avg votes

SELECT * FROM movies
WHERE score = (SELECT max(score) FROM movies
                    WHERE votes > (SELECT avg(votes) FROM movies))