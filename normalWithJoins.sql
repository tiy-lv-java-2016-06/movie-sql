

/*** Normal Mode ***/

--Select all columns and rows from the movies table
SELECT *
from movies;

--Select only the title and id of the first 10 rows
SELECT title, movieid
from movies limit 10;

-- Find the id (only that column) of the movie Made in America (1993)
select movieid
from movies
where title = 'Made in America (1993)';

-- Find the first 10 sorted alphabetically
select *
from movies
order by title asc limit 10;

-- Find all movies from 2002
select *
from movies
where title LIKE '%2002%';

-- Find out what year the Godfather came out
SELECT title
from movies
where title like '%Godfather%';

-- Without using joins find all the comedies
select *
from movies
where movies.genres like '%Comedy%';

-- Find all comedies in the year 2000
SELECT *
from movies
where movies.genres like '%Comedy%' and title like '%2000)';

-- Find any movies that are about death and are a comedy
SELECT *
from movies
WHERE movies.genres LIKE '%Drama%' and movies.genres LIKE '%Comedy%';

-- Find any movies from either 2001 or 2002 with a title containing super
select *
from movies
where title like '%Super%' and (title like '%2001)' or title LIKE '%2002)');


/***  Joins ***/

-- Find all the ratings for the movie Godfather, show just the title and the rating
SELECT rating, movies.title
from ratings
  JOIN movies on ratings.movieid = movies.movieid
where movies.title like '%Godfather%';

-- Order the previous objective by newest to oldest
SELECT rating, movies.title
from ratings
  JOIN movies on ratings.movieid = movies.movieid
where movies.title like '%Godfather%'
order by ratings.timestamp ASC;

-- Find the comedies from 2005 and get the title and imdbid from the links table
SELECT title, imdbid
from movies
  join links on movies.movieid = links.movieid
where movies.genres like '%Comedy%' and title like '%2005)';

-- Find all movies that have no ratings
SELECT movies.title, ratings.rating
FROM movies
  left join ratings on movies.movieid = ratings.movieid
where ratings.rating is null;

-- Find all fantasy movies using the many to many join between movies and genres through movie_genre table.
SELECT movies.title, genre.genres
from movies
  join movie_genre on movies.movieid = movie_genre.movieid
  join genre on movie_genre.genre_id = genre.id
where genre.genres like '%Fantasy%';


/***  Hard Mode  ***/

--Use concat and research about internet movie database to produce a valid url from the imdbid

-- Use concat and research about the movie database to produce a valid url from tmdbid
-- Get the ratings for The Usual Suspects and convert the timestamp into a human readable date time
-- Using SQL normalize the tags in the tags table. Make them lowercased and replace the spaces with -
-- The movie_genre table was produced by a sql query that could match a movie to the appropriate rows in genre without the use of the join table. Reproduce that query.
