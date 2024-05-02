CREATE database CasaDelFuturo

USE CasaDelFuturo;
CREATE TABLE Rol (
id int primary key not null auto_increment,
rol VARCHAR(20)
);
USE CasaDelFuturo;
CREATE TABLE Domicilio(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
provincia VARCHAR(20) NOT NULL,
localidad VARCHAR(20) NOT NULL,
calle VARCHAR(40) NOT NULL,
altura INT NOT NULL,
piso INT,
departamento VARCHAR(5)
);

CREATE TABLE Usuario (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(60) NOT NULL,
dni INT NOT NULL,
correo VARCHAR(100) NOT NULL,
contrasenia VARCHAR(60) NOT NULL,
fecha_nacimiento DATE NOT NULL,
id_rol INT NOT NULL,
id_domicilio INT NOT NULL,
FOREIGN KEY (id_rol) REFERENCES rol(id),
FOREIGN KEY (id_domicilio) REFERENCES domicilio(id)
);

CREATE TABLE ordenes (
    orden_id INT NOT NULL,
    orden_numero INT NOT NULL,
    cliente_id INT,
    PRIMARY KEY (orden_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

