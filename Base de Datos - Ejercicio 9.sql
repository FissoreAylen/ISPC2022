/*Crear base de datos segun modelo relacional*/

CREATE DATABASE peluqueriaCanina;   --creamos una tabla

USE peluqueriaCanina;   -- elegimos la tabla con que deseamos trabajar

/* Necesitamos crear el contenido = Tablas
                                        elementos con atributos
                                        
Identificar
    Claves Primarias = PRIMARY KEY
    Claves Foráneas = FOREIGN KEY */

-- TIP Empezar por las tablas independientes, sin clave foránea.


-- Tabla Dueno

CREATE TABLE Dueno (
    DNI int(8) NOT NULL,
    Nombre varchar(150),
    Apellido varchar(150),
    Telefono bigint,
    Direccion varchar(250),
    PRIMARY KEY (DNI)
);

-- Tabla Perro

CREATE TABLE Perro (
    ID_Perro int(11) NOT NULL,
    Nombre varchar(50),
    Fecha_nac DATE,
    Sexo varchar(20),
    DNI_dueno int(8),
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);

-- Tabla Historial

CREATE TABLE Historial (
    ID_Historial int (11) NOT NULL,
    Fecha DATE,
    Perro int,
    Descripcion TEXT,
    Monto DECIMAL(6,2),
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
);



-- Inserto los datos del dueño
insert into Dueno values(39937120,"Aylen","Fissore Vergara",3516190729,"12 de octubre 1747");

-- Inserto los datos del perro
insert into Perro values(7,"Diana",20160305,"hembra",39937120);

-- Inserto el historial
insert into Historial values(5,20220812,7,"perfecto",250);



/* EJERCICIO - Escriba una consulta que permita actualizar la dirección de un dueño.
Su nueva dirección es Libertad 123 */

UPDATE Dueno
SET Direccion = "Libertad 123" where DNI=39937120;

select * from Dueno;
select * from Perro;
select * from Historial; 