# QUERIES ML DB E-market Parte 1

#Productos

SELECT ProductoID, ProductoNombre, PrecioUnitario
FROM productos
ORDER BY PrecioUnitario DESC;

SELECT ProductoNombre, PrecioUnitario
FROM productos
ORDER BY PrecioUnitario DESC
LIMIT 5;

SELECT ProductoNombre, UnidadesStock
FROM productos
ORDER BY UnidadesStock DESC
LIMIT 10;

#Factura Detalle

SELECT FacturaID, ProductoID, Cantidad
FROM facturadetalle;

SELECT FacturaID, ProductoID, Cantidad
FROM facturadetalle
ORDER BY Cantidad DESC;

SELECT FacturaID, ProductoID, Cantidad
FROM facturadetalle
WHERE cantidad BETWEEN 50 AND 100
ORDER BY Cantidad DESC;

SELECT FacturaID AS NroFactura, ProductoID AS Producto, PrecioUnitario, Cantidad, (PrecioUnitario * Cantidad) AS Total
FROM facturadetalle;




