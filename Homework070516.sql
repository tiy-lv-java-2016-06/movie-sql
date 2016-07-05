--Select all columns and rows from the movies table

SELECT *
FROM movies;

--Select only the title and id of the first 10 rows

SELECT title, movieid
FROM movies
LIMIT 10;

--Find the movie with the id of 485

SELECT *
FROM movies
WHERE movieid = 485;

--Find the id (only that column) of the movie Made in America (1993)

SELECT movieid
FROM  movies
WHERE title = 'Made in America (1993)';

--Find the first 10 sorted alphabetically

SELECT *
FROM movies
ORDER BY title ASC;

--Find all movies from 2002

SELECT *
FROM movies
WHERE title LIKE '%2002%';

--Find out what year the Godfather came out

SELECT title
FROM movies
WHERE title LIKE '%Godfather%';

--Without using joins find all the comedies

SELECT *
FROM movies
WHERE genres LIKE '%Comedy%';

--Find all comedies in the year 2000

SELECT *
FROM movies
WHERE genres LIKE '%Comedy%' AND title LIKE '%2000%';

--Find any movies that are about death and are a comedy

SELECT *
FROM movies
  JOIN movie_genre ON movies.movieid = movie_genre.movieid
  JOIN genre ON movie_genre.genre_id = genre.id
  JOIN tags ON tags.movieid = movies.movieid
WHERE genre.genres = 'Comedy' AND tags.tag = 'death';

--Find any movies from either 2001 or 2002 with a title containing super

SELECT *
FROM movies
WHERE title LIKE '%Super%' AND (title LIKE '%2002%' OR title LIKE '%2001%');

