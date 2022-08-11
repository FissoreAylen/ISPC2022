
/*Crear base de datos segun modelo relacional*/
CREATE DATABASE peluqueriaCanina;
USE peluqueriaCanina;
CREATE TABLE Dueno (
    DNI int(11) NOT NULL,
    Nombre varchar(255),
    Apellido varchar(255),
    Telefono int(15),
    Direccion varchar(255),
    PRIMARY KEY (DNI)
);
CREATE TABLE Perro (
    ID_Perro int(11) NOT NULL,
    Nombre varchar(255),
    Fecha_nac DATE,
    Sexo varchar(255),
    DNI_dueno int(11),
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);
CREATE TABLE Historial (
    ID_Historial int (11) NOT NULL,
    Fecha DATE,
    Perro int,
    Descripcion TEXT,
    Monto DECIMAL(6,2),
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
);




/*Primero inserto los datos de mi mascota junto al dueño asociado*/
insert into Perro(ID_Perro, Nombre,Fecha_nac,Sexo,DNI_dueno) values(1,"floyd",19960725,"macho",40246182);
/*Segundo inserte los datos del dueño de la mascota asociado a su perro*/
insert into Dueno(DNI,Nombre,Apellido,Telefono,Direccion) values(40246182,"Matias","Ibarra",11111,"san juan bosco 333");
insert into Dueno(DNI,Nombre,Apellido,Telefono,Direccion) values(382430,"Juan","Perez",3333,"san pedro");

/*inserte tambien los datos del historial del animal*/
insert into Historial(ID_Historial,Fecha,Perro,Descripcion,Monto) values(2,20220823,1,"es un perro",150);

/*Elegi la consigna  4 actualizar la fecha de nacimineto de mi mascota en este caso Floyd*/
UPDATE Perro
SET Fecha_nac = 19960826 where Nombre="Floyd";

select * from Dueno;
select * from Perro;
select * from Historial;