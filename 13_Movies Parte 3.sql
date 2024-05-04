# INNER JOIN
SELECT a.first_name, a.last_name
FROM movies AS m
INNER JOIN actor_movie AS am
ON m.id = am.movie_id
INNER JOIN actors AS a
ON am.actor_id = a.id
WHERE title LIKE "Harry%";



# DISTINCT
SELECT DISTINCT a.first_name, a.last_name
FROM movies AS m
INNER JOIN actor_movie AS am
ON m.id = am.movie_id
INNER JOIN actors AS a
ON am.actor_id = a.id
WHERE title LIKE "Harry%";

# Utilizando la base de datos de movies, queremos conocer, por un lado, los títulos y el nombre del género de todas las series de la base de datos.
SELECT m.title, g.name AS genero
FROM movies AS m
INNER JOIN genres AS g 
ON m.genre_id = g.id;


# Por otro, necesitamos listar los títulos de los episodios junto con el nombre y apellido de los actores que trabajan en cada uno de ellos.
SELECT e.title, a.last_name, a.first_name 
FROM episodes AS e
INNER JOIN actor_episode as ae
ON e.id = ae.episode_id
INNER JOIN actors AS a
ON ae.id = a.id
order by title;


# Obtener a todos los actores o actrices (mostrar nombre y apellido) que han trabajado en cualquier película de la saga de La Guerra de las galaxias.
SELECT a.first_name, a.last_name
FROM movies AS m
INNER JOIN actor_movie AS am
ON m.id = am.movie_id
INNER JOIN actors AS a
ON am.actor_id = a.id
WHERE title LIKE "%Galaxia%";


# Crear un listado a partir de la tabla de películas, mostrar un reporte de la cantidad de películas por nombre de género.
SELECT g.name AS Genero, count(genre_id) AS Cantidad
FROM movies AS m
INNER JOIN genres AS g
ON m.genre_id = g.id
GROUP BY g.id;


