# LA QUERY BASE
SELECT * FROM movies;

SELECT first_name, last_name, rating
FROM actors;

SELECT title
FROM series;

SELECT title, rating, length
FROM movies;

SELECT first_name, last_name
FROM actors
WHERE rating >7.5;

SELECT title, awards, rating
FROM movies
WHERE rating >7.5 AND awards >2;

SELECT title, rating
FROM movies
ORDER BY rating asc;

SELECT first_name, last_name, rating
FROM actors
WHERE rating BETWEEN 4.0 AND 10.0;

SELECT title, release_date, length
FROM movies
WHERE length >150;

SELECT title, rating
FROM movies
WHERE title LIKE 'Toy Story';

SELECT first_name, last_name
FROM actors
WHERE first_name LIKE '%Sam';





