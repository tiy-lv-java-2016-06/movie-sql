

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

-- Order the previous objective by newest to oldest
-- Find the comedies from 2005 and get the title and imdbid from the links table
-- Find all movies that have no ratings
-- Find all fantasy movies using the many to many join between movies and genres through movie_genre table.