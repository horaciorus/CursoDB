#GENERAR UN LISTADO DE TODAS LAS FACTURAS DEL EMPLEADO BUCHANAN

SELECT facturas.FacturaID, empleados.Apellido
FROM facturas
INNER JOIN empleados ON facturas.EmpleadoID = empleados.EmpleadoID;

#GENERAR UN LISTADO DE TODOS LOS CAMPOS DE LAS FACTURAS DEL CORREO SPEEDY EXPRESS
SELECT * 
FROM facturas
INNER JOIN correos ON correos.CorreoID = facturas.EnvioVia
WHERE Compania = 'Speedy Express';

#GENERAR UN LISTADO DE TODAS LAS FACTURAS CON EL NOMBRE Y APELLIDO DE LOS EMPLEADOS
SELECT FacturaID, Apellido, Nombre
FROM facturas
INNER JOIN empleados ON facturas.EmpleadoID = empleados.EmpleadoID; 

#MOSTRAR UN LISTADO DE LAS FACTURAS DE LOS CLIENTES "OWNER" Y PAIS DE ENVIO "USA"
SELECT FacturaID, Compania, Titulo
FROM facturas
INNER JOIN clientes ON facturas.ClienteID = clientes.ClienteId
WHERE Titulo = 'owner';

#MOSTRAR TODOS LOS CAMPOS DE LAS FACTURAS DEL EMPLEADO CUYO APELLIDO SEA LEVERLING O QUE INCLUYAN EL PRODUCTO ID 42
SELECT *
FROM facturas
INNER JOIN empleados ON facturas.EmpleadoID = empleados.EmpleadoID
INNER JOIN facturadetalle ON facturas.FacturaID = facturadetalle.FacturaID
INNER JOIN productos ON facturadetalle.ProductoID = productos.ProductoID
WHERE Apellido = 'Leverling' OR productos.ProductoID = 42;


#MOSTRAR TODOS LOS CAMPOS DE LAS FACTURAS DEL EMPLEADO CUYO APELLIDO SEA LEVERLING Y QUE INCLUYAN EL PRODUCTO ID 80 O 42
SELECT *
FROM facturas
INNER JOIN empleados ON facturas.EmpleadoID = empleados.EmpleadoID
INNER JOIN facturadetalle ON facturas.FacturaID = facturadetalle.FacturaID
INNER JOIN productos ON facturadetalle.ProductoID = productos.ProductoID
WHERE Apellido = 'Leverling' AND productos.ProductoID IN (42, 80);

#GENERAR UN LISTADO CON LOS CINCO MEJORES CLIENTES, SEGUN SUS IMPORTES DE COMPRAS TOTAL (PrecioUnitario*Cantidad)
SELECT  Clientes.Compania, SUM(PrecioUnitario*Cantidad) AS ComprasTotal
FROM facturas
INNER JOIN clientes ON facturas.ClienteID = clientes.ClienteID
INNER JOIN facturadetalle ON facturas.FacturaID = facturadetalle.FacturaID
GROUP BY Clientes.Compania
ORDER BY ComprasTotal DESC
LIMIT 5;

#GENERAR UN LISTADO DE FACTURAS, CON LOS CAMPOS ID, NOMBRE Y APELLIDO DEL CLIENTE, FECHA DE FACTURA, PAIS DE ENVIO , TOTAL
#ORDENADO DE MANERA DESCENDENTE POR FECHA DE FACTURA Y LIMITADO A 10 FILAS
SELECT Compania AS Cliente, facturas.FacturaID, FechaFactura, PaisEnvio, SUM(facturadetalle.PrecioUnitario*facturadetalle.Cantidad) AS Total 
FROM facturas
INNER JOIN clientes ON facturas.ClienteID = clientes.ClienteID
INNER JOIN facturadetalle ON facturas.FacturaID = facturadetalle.FacturaID
GROUP BY facturas.facturaID
ORDER BY FechaFactura DESC
LIMIT 10;


