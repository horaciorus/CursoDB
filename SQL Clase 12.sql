USE emarket;

SELECT COUNT(*)
FROM facturas
WHERE EmpleadoID =6;

SELECT avg(preciounitario)
FROM productos;

SELECT ROUND (AVG(preciounitario),1) AS promedio_precio
FROM productos
WHERE categoriaid= 6;

SELECT sum(unidadesstock)
FROM productos
WHERE preciounitario >10
AND categoriaid =3;

SELECT MIN(preciounitario), avg(preciounitario), max(preciounitario)
FROM productos;

# Having
SELECT pais, COUNT(clienteid)
FROM clientes
GROUP BY pais
HAVING COUNT(clienteid)>=3;


#Consignas

#Cuántas películas hay?
SELECT COUNT(*) 
FROM movies;

#Cuántas películas tienen entre 3 y 7 premios?
SELECT COUNT(*)
FROM movies
WHERE awards BETWEEN 3 AND 7;

#Cuántas películas tienen entre 3 y 7 premios y un rating mayor a 7?
SELECT COUNT(*)
FROM movies
WHERE awards BETWEEN 3 AND 7
AND rating > 7;

#Encuentra la cantidad de actores en cada película.
SELECT movie_id, COUNT(actor_id) AS cantidad_actores
FROM actor_movie
GROUP BY movie_id;

#Crear un listado a partir de la tabla de películas, mostrar un reporte de la cantidad de películas por id. de género
SELECT genre_id, COUNT(*) AS cantidad_peliculas
FROM movies
GROUP BY genre_id;

#De la consulta anterior, listar sólo aquellos géneros que tengan como suma de premios un número mayor a 5.
SELECT genre_id, COUNT(*) AS cantidad_peliculas
FROM movies
GROUP BY genre_id
HAVING SUM(awards) > 5;


#Encuentra los géneros que tienen las películas con un promedio de calificación mayor a 6.0.
SELECT name, AVG(ranking) AS promedio_calificacion
FROM genres
GROUP BY name
HAVING AVG(ranking) > 6.0;

#Encuentra los géneros que tienen al menos 3 películas.
SELECT genre_id, COUNT(*) AS cantidad_peliculas
FROM movies
GROUP BY genre_id
HAVING COUNT(*) >= 3;

