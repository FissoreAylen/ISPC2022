# Primero creamos la base de datos
CREATE DATABASE peluqueriaCanina;

# Comenzamos a crear las tablas
USE peluqueriaCanina;

# Tabla Dueno
CREATE TABLE Dueno (
    DNI int NOT NULL,
    Nombre varchar(255),
    Apellido varchar(255),
    Telefono varchar(255),
    Direccion varchar(255),
    PRIMARY KEY (DNI)
);

# Tabla Perro
CREATE TABLE Perro (
    ID_Perro int NOT NULL AUTO_INCREMENT,
    Nombre varchar(255),
    Fecha_nac DATE,
    Sexo varchar(255),
    DNI_dueno int,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);

# Tabla Historial
CREATE TABLE Historial (
    ID_Historial int NOT NULL AUTO_INCREMENT,
    Fecha DATE,
    Perro int,
    Descripcion TEXT,
    Monto DECIMAL(6,2),
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
);

#Poblamos la base de datos
#Primero los dueños
INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES
(22659784, 'Carla', 'Soria', '011 154789652', 'Avenida Patria 5698'),
(25987635, 'Rocio', 'Zato', '351698745', 'Roberto Sanchez 1213'),
(27589632, 'Ricardo', 'Gutierrez', '3516594789', 'Gral Paz 2022'),
(27896354, 'Esteban', 'Cortez', '3512698745', 'Buenos Aires 368'),
(29711315, 'Seba', 'Sanchez', '4648857', 'Pampayasta 2805'),
(31698745, 'Roberto', 'Estato', '3515987452', 'Pampa Seca 234'),
(32659784, 'Laura', 'Saravia', '+54 351 6547897', 'Avenida Paris 234'),
(33698456, 'Carlos', 'Sanchez', '1156987452', 'La esquina 3569'),
(35698745, 'Lucas', 'Calaña', '1145896325', 'Somos los monos 2345'),
(36598745, 'Lucia', 'Perez', '3512658974', 'Rondo 347');

# Segundo los perros
INSERT INTO `peluqueriacanina`.`perro`
(`Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`)
VALUES
("Juan", "2013/12/05", "Marculino", 22659784),
("Micha", "2021/09/09", "Femenina", 25987635),
("Pichu", "2014/12/06", "Marculino", 27589632),
("Roberta", "2015/11/07", "Femenina", 27896354),
("Felipe", "2018/06/21", "Marculino", 29711315),
("Perla", "2017/05/12", "Marculino", 31698745),
("Tomy", "2019/04/17", "Marculino", 32659784),
("Juan Carlos", "2020/09/09", "Marculino", 33698456),
("Maria Victoria", "2021/10/03", "Femenina", 35698745),
("Lola", "2021/07/15", "Femenina", 36598745),
("Pancho", "2016/05/27", "Marculino", 36598745),
("Juan Raul", "2015/04/12", "Marculino", 33698456),
("Jesucristo", "2015/11/08", "Marculino", 29711315),
("Chirimbola", "2020/06/06", "Femenina", 27589632);

# Tercero las transacciones
INSERT INTO `peluqueriacanina`.`historial`
(`Fecha`, `Perro`, `Descripcion`, `Monto`)
VALUES
("2018/05/07", 11, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2018/08/08", 2, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1500),
("2019/05/22", 5, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2019/11/11", 6, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1500),
("2019/12/04", 4, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2019/12/07", 3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1500),
("2019/12/22", 3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2020/06/18", 12, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2020/08/03", 7, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2020/08/09", 3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2020/12/05", 8, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2022/05/12", 11, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2022/07/05", 9, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2022/07/08", 10, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1500),
("2022/07/12", 3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2022/07/15", 13, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2022/07/26", 1, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1500),
("2018/07/26", 14, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1000),
("2022/07/26", 2, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tincidunt est. Aenean et urna odio.", 1500);

# Ahora viene el ejercico de la consulta.
# 7. Obtener los ingresos percibidos en Julio del 2022
SELECT SUM(`Monto`) FROM `peluqueriacanina`.`historial` WHERE MONTH(`Fecha`) = 7 AND YEAR(`Fecha`) = 2022;
