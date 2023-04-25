<<<<<<< HEAD
-- Comentario de una linea

/* 
	Comentario de bloque
*/

-- SHOW DATABASES; -- Muestra las bases de datos

drop database if exists aerolinea; -- Borra la base de datos
create database if not exists aerolinea;
use aerolinea;

/* 
	drop table if exists pasajeros;
	drop table if exists vuelos;
	drop table if exists personal;
	drop table if exists aviones;
	drop table if exists pilotos;
	drop table if exists piloto_personal;
*/

-- SHOW TABLES; -- mostrar las tablas

-- Creamos tabla pasajeros
CREATE TABLE vuelos(
	nro int primary key auto_increment,
    horaSalida int,
    fecha date,
    horaLlegada int,
    ciudad varchar(50),
    precio double
);

create table personas (
	pasaporte int primary key,
    nombre varchar(50),
    apellido varchar(50),
    tel int,
    email varchar(50)
);

CREATE TABLE pasajeros(
	pasaporte int PRIMARY KEY,
	nro_vuelo int
);

CREATE TABLE personal(
=======
-- Borrar base de datos si es que existe
drop database if exists conviasa;
--  Creamos base de datos si es que existe
create DATABASE conviasa;
-- Usamos la base de datos
use conviasa;

-- Crear pasajeros
create table pasajeros(
	pasaporte int primary key,
	nro_vuelo int 
);

-- Crear personas
create table personas(
	pasaporte int primary key,
	nombre varchar(25),
    apellido varchar(25),
    fechaNacimiento date,
    nacionalidad enum("Argentina","Mexico","Chile","Peru","Colombia","Paraguay","Ecuador","Bolivia","Uruguay"),
    telefono int,
    email varchar(50)
);

-- Crear vuelos
create table vuelos (
	nro int primary key auto_increment,
   horaSalida int,
   fecha date,
   horallegada int,
   ciudad varchar (50),
   nro_avion int
);

-- Crear personal
create table personal(
>>>>>>> 7abdc9a3b9275adc83f8918da921779abba72217
	nroLegajo int primary key,
    nombre varchar(25),
    areaAsignada enum('azafata','soporte','limpieza','piloto'),
	nro_vuelo int
);

<<<<<<< HEAD
CREATE TABLE aviones(
	nro int primary key,
    modelo varchar(50),
    fabricante varchar(50),
    capacidad int,
    pista varchar(12),
    nro_vuelo int
);

=======
-- Crear aviones
create table aviones (
	nro int primary key,
   modelo varchar(50),
   fabricante varchar(50),
   capacidad int,
   angar varchar(12)
);

-- Crear pilotos
>>>>>>> 7abdc9a3b9275adc83f8918da921779abba72217
create table pilotos(
	nroLegajo int primary key,
   nro_avion int
);

-- Crear piloto_personal
create table piloto_personal(
	id int primary key auto_increment,
   nroLegajo_piloto int,
   nroLegajo_personal int
);

<<<<<<< HEAD
/* 
	Relaciones entre tablas (alter table) 
*/
=======

/*
	-------- RELACIONES --------

	1) altero tabla pasajeros
	2)agregar FK a la variable 'nro_vuelo' PK
	3)referenciar FK que indicamos a 'nro' (pk) de vuelos
*/ 
>>>>>>> 7abdc9a3b9275adc83f8918da921779abba72217

/* 
	1) alterame la tabla pasajeros
    2) agregame foreign key (fk) a la variable "nro_vuelo"
    3) referenciame la fk a la variable "nro" de la tabla vuelos
*/

alter table pasajeros 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table personal 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table aviones 
add foreign key (nro_vuelo)
references vuelos (nro);

alter table pilotos 
add foreign key (nro_avion)
references aviones (nro);

alter table piloto_personal 
add foreign key (nroLegajo_piloto)
references pilotos (nroLegajo);

alter table piloto_personal 
add foreign key (nroLegajo_personal)
<<<<<<< HEAD
references personal (nroLegajo);

alter table personas 
add foreign key (pasaporte)
references pasajeros (pasaporte);
=======
references personal(nroLegajo);	

alter table personas 
add foreign key (pasaporte) 
references pasajeros (pasaporte);

/* 
	Alter Table
*/

-- Renombrar tabla
ALTER TABLE piloto_personal
RENAME pilotos_personal;

-- Renombrar columna
ALTER TABLE pasajeros
CHANGE pasaporte dni INT;

-- Agregar columna
ALTER TABLE vuelos
ADD COLUMN precio DOUBLE;


ALTER TABLE vuelos
ADD COLUMN columnademas VARCHAR(50);


-- Eliminar columna
ALTER TABLE vuelos 
DROP COLUMN columnademas;


-- Modificar tipo de dato (modificar extra)
ALTER TABLE aviones 
MODIFY column modelo VARCHAR(25);


-- Eliminar constraint
alter table pilotos_personal
modify column id int auto_increment;


-- Eliminar Primary key
alter table pilotos_personal
drop primary KEY;

-- Eliminar Foreign key
>>>>>>> 7abdc9a3b9275adc83f8918da921779abba72217
