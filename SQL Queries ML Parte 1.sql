# QUERIES ML DB E-market Parte 1

#Categorias y productos

SELECT CategoriaNombre
FROM categorias;

SELECT categoriaNombre, descripcion
FROM categorias;

SELECT productonombre
FROM productos;

SELECT productonombre
FROM productos
WHERE discontinuado= 1;

SELECT productonombre
FROM productos
WHERE proveedorid=8;

SELECT productonombre, PrecioUnitario
FROM productos
WHERE preciounitario BETWEEN 10 AND 22;

SELECT productonombre, unidadesstock, nivelreorden, UnidadesPedidas
FROM productos
WHERE UnidadesStock < NivelReorden;

SELECT productonombre, unidadesstock, nivelreorden
FROM productos
WHERE UnidadesStock < NivelReorden AND UnidadesPedidas = 0;

#CLientes

SELECT Compania, Contacto, Titulo, Pais
FROM clientes
ORDER BY Pais DESC;

SELECT Compania, Titulo
FROM clientes
WHERE Titulo = 'owner';

SELECT Compania, Contacto
FROM Clientes
WHERE Contacto LIKE 'C%';

#Facturas

SELECT facturaID, FechaFactura
FROM facturas
ORDER by FechaFactura ASC;

SELECT FacturaID, EnvioVia, PaisEnvio
FROM facturas
WHERE PaisEnvio = 'USA' AND EnvioVia <> 3;

SELECT ClienteID, Compania 
FROM Clientes
Where Compania LIKE '%Gourl%';

SELECT facturaID, EmpleadoID
FROM Facturas
WHERE EmpleadoID IN (2,3,5,8,9);

