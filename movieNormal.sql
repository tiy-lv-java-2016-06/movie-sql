--Select all columns and rows from the movies table
SELECT *
FROM movies;

--Select only the title and id of the first 10 rows
SELECT title, movieid
FROM movies LIMIT 10;

--Find the movie with the id of 485
SELECT *
FROM movies
WHERE movieid = 485;

--Find the id (only that column) of the movie Made in America (1993)
SELECT movieid
FROM movies
WHERE title LIKE 'Made in A%';

--Find the first 10 sorted alphabetically
SELECT *
FROM movies
ORDER BY title ASC
LIMIT 10;

--Find all movies from 2002
SELECT *
FROM movies
WHERE title LIKE '%(2002)';

--Find out what year the Godfather came out
SELECT title
From movies
WHERE title LIKE '%Godfather%';

--Without using joins find all the comedies
SELECT *
FROM movies
Where genres LIKE 'Comedy%';

--Find all comedies in the year 2000
SELECT *
FROM movies
WHERE genres LIKE 'Comedy%' AND title LIKE '%(2000)';

--Find any movies that are about death and are a comedy
SELECT *
FROM tags
WHERE tag = 'death';

SELECT *
FROM movies
  JOIN tags ON movies.movieid = tags.movieid
WHERE genres LIKE 'Comedy%' AND tag = 'death';

--Find any movies from either 2001 or 2002 with a title containing super
SELECT *
FROM movies
WHERE (title LIKE '%(2001)' OR title LIKE '%(2002)') AND (title LIKE '%Super%');

--Find all the ratings for the movie Godfather, show just the title and the rating
SELECT rating, title
FROM movies
  JOIN ratings ON movies.movieid = ratings.movieid
WHERE movies.movieid = 858;

--Order the previous objective by newest to oldest
SELECT rating, title, timestamp
FROM movies
  JOIN ratings ON movies.movieid = ratings.movieid
WHERE movies.movieid = 858
ORDER BY timestamp DESC;

--Find the comedies from 2005 and get the title and imdbid from the links table
SELECT title, imdbid
FROM movies
  JOIN links ON movies.movieid = links.movieid
WHERE genres LIKE 'Comedy%' AND title LIKE '%(2005)';

--Find all movies that have no ratings
SELECT *
FROM movies
  LEFT JOIN ratings ON movies.movieid = ratings.movieid
WHERE ratings.rating IS NULL;

--Find all fantasy movies using the many to many join between movies and genres through movie_genre table.
SELECT *
FROM movies
  LEFT JOIN genre ON movies.genres = genre.genres
  LEFT JOIN movie_genre ON genre.id = movie_genre.genre_id
WHERE genre.genres LIKE '%Fantasy%';
