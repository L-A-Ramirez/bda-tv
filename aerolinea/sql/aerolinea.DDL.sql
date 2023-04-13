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
	nroLegajo int primary key,
    nombre varchar (25),
    nro_vuelo int,
    areaAsignada enum ('azafata','soporte','piloto','limpieza')
);

-- Crear aviones
create table aviones (
	nro int primary key,
    modelo varchar(50),
    fabricante varchar (50),
    capacidad int,
    angar varchar(12)
    
);

-- Crear pilotos
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

/*
	1) altero tabla pasajeros
	2)agregar FK a la variable 'nro_vuelo' PK
	3)referenciar FK que indicamos a 'nro' (pk) de vuelos
*/ 

alter table pasajeros
add foreign key (nro_vuelo) 
references vuelos(nro);

alter table vuelos 
add foreign key(nro_avion)
references aviones(nro);

alter table personal 
add foreign key (nro_vuelo)
references vuelos(nro);

alter table pilotos
add foreign key(nro_avion)
references aviones(nro);

alter table piloto_personal
add foreign key (nroLegajo_piloto)
references pilotos(nroLegajo);

alter table piloto_personal
add foreign key (nroLegajo_personal)
references personal(nroLegajo);	

/* 
	Alter Table
*/

-- Renombrar tabla
ALTER TABLE piloto_personal
RENAME pilotos_personal;

SELECT * FROM pilotos_personal;

-- Renombrar columna
ALTER TABLE pasajeros
CHANGE pasaporte dni INT;

-- Agregar columna
ALTER TABLE vuelos
ADD COLUMN precio DOUBLE;

-- Eliminar columna


-- Modificar tipo de dato (modificar extra)
-- Eliminar constraint
-- Eliminar Primary key
-- Eliminar Foreign key 