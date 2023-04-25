-- Ingreso registros de "vuelos"
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1330, '2023-04-18', 1530, 'MDQ', 20000.00);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (0920, '2023-04-18', 1130, 'MDQ', 18000.00);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1520, '2023-04-10', 1730, 'Bariloche', 23000.00);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1600, '2023-05-15', 2000, 'chile', 25000.00);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1400, '2023-06-01', 1700, 'colombia', 27000.50);
insert into vuelos (horaSalida, fecha, horaLlegada, ciudad,precio) 
values (1500, '2023-06-04', 1800, 'venezuela', 28000.50);

<<<<<<< HEAD
-- Ingreso registro de pasajeros
insert into pasajeros (pasaporte, nro_vuelo) values (23456984, 1);
insert into pasajeros (pasaporte, nro_vuelo) values (34562654, 3);
insert into pasajeros (pasaporte, nro_vuelo) values (24449875, 2);
insert into pasajeros (pasaporte, nro_vuelo) values (26547896, 5);
insert into pasajeros (pasaporte, nro_vuelo) values (24597991, 5);
insert into pasajeros (pasaporte, nro_vuelo) values (26541234, 4);
insert into pasajeros (pasaporte, nro_vuelo) values (85545656, null);
insert into pasajeros (pasaporte, nro_vuelo) values (88554543, null);
insert into pasajeros (pasaporte, nro_vuelo) values (86743524, null);

-- Ingreso registro de "avion"
insert into aviones (nro, modelo, fabricante, capacidad, pista, nro_vuelo) 
values (12, '420', 'PAMPA', 300, 'A2', 3);
insert into aviones (nro, modelo, fabricante, capacidad, pista, nro_vuelo) 
values (08, '320', 'AeroSA', 400, 'A1', 1);
insert into aviones (nro, modelo, fabricante, capacidad, pista, nro_vuelo) 
values (05, '120', 'PAMPA', 300, 'C2', 2);
=======
-- Ingreso registro a la tabla "Vuelo"
INSERT INTO vuelos (horaSalida, fecha, horaLlegada, ciudad, nro_avion, precio) 
VALUES (13, '2023-04-12', 15,'bariloche',02,15000.00);
INSERT INTO vuelos (horaSalida, fecha, horaLlegada, ciudad, nro_avion,precio) 
VALUES (15, '2023-04-15', 19, 'brasil', 01,8000.00);
INSERT INTO vuelos (horaSalida, fecha, horaLlegada, ciudad, nro_avion,precio) 
VALUES (09, '2023-04-15', 11, 'mar del plata',03,10000.00);

-- ingreso registro a la tabla "Pasajeros"
INSERT INTO pasajeros (dni, nro_vuelo) VALUES (22666443, 1);
INSERT INTO pasajeros (dni, nro_vuelo) VALUES (34653452, 2);
INSERT INTO pasajeros (dni, nro_vuelo) VALUES (32567457, 3);
INSERT INTO pasajeros (dni, nro_vuelo) VALUES (24487964, 2);


-- ingreso registro a la tabla "Personas"
INSERT INTO personas (pasaporte, nombre, apellido, fechaNacimiento, nacionalidad, telefono, email) VALUES (22666443, 'Roberto', 'Caseres', '1976-02-17', 'Argentina', 115435674, 'robertito@gmail.com');
INSERT INTO personas (pasaporte, nombre, apellido, fechaNacimiento, nacionalidad, telefono, email) VALUES (34653452, 'Susana', 'Gimenez', '1897-01-26', 'Venezuela', 263746582, 'SSusi@gmail.com');
INSERT INTO personas (pasaporte, nombre, apellido, fechaNacimiento, nacionalidad, telefono, email) VALUES (32567457, 'Brenda', 'Muro', '1998-02-15', 'Argentina', 1543256, 'brenn@gmail,com');
INSERT INTO personas (pasaporte, nombre, apellido, fechaNacimiento, nacionalidad, telefono, email) VALUES (24487964, 'Raul', 'gonzales', '1987-06-17', 'Colombia', 11879456, 'gime@gmail.com');

>>>>>>> 7abdc9a3b9275adc83f8918da921779abba72217

-- ingreso registro de "personal"
insert into personal (nroLegajo, nombre, areaAsignada, nro_vuelo) 
values (35465468, 'Adrian', 'piloto', 1);
insert into personal (nroLegajo, nombre, areaAsignada, nro_vuelo) 
values (54826547, 'Walter', 'piloto', 3);
insert into personal (nroLegajo, nombre, areaAsignada, nro_vuelo) 
values (87965248, 'Daniela', 'piloto', 2);

-- ingreso registro de "pilotos"
insert into pilotos (nroLegajo, nro_avion) VALUES (35465468, 12);
insert into pilotos (nroLegajo, nro_avion) VALUES (54826547, 05);
insert into pilotos (nroLegajo, nro_avion) VALUES (87965248, 08);

<<<<<<< HEAD
-- ingreso registro de "piloto_personal"
insert into piloto_personal (nroLegajo_piloto, nroLegajo_personal)
values (35465468,35465468);
insert into piloto_personal (nroLegajo_piloto, nroLegajo_personal)
values (54826547,54826547);
insert into piloto_personal (nroLegajo_piloto, nroLegajo_personal)
values (87965248,87965248);

INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('23456984', 'juanito', 'perez', '2058901', 'lolo@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('34562654', 'Carlos', 'Gonzales', '2645326225', 'carlitos@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('24449875', 'Jeronimo', 'Ledezma', '114534623', 'Jero@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('26547896', 'Sebastian', 'Perez', '114532345', 'SebaP@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('85545656', 'Brenda', 'Muro', '112346342', 'brenn@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('88554543', 'Leila', 'Mendez', '1145324563', 'leilaM@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('24597991', 'Juan', 'Mendez', '445454545', 'juanM@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('86743524', 'Jerine', 'Morales', '114574342', 'Jeri@gmail.com');
INSERT INTO `aerolinea`.`personas` (`pasaporte`, `nombre`, `apellido`, `tel`, `email`) VALUES ('26541234', 'Agustin', 'Morales', '123456489', 'Agustin@gmail.com');

-- ------------------------
-- Update
-- ------------------------
-- actualizame personal, modificame el nombre y que sea igual a "juan"
-- donde "nroLegajo" sea igual a "35465468"
update personal set nombre = "Juan" where nroLegajo = 35465468;
update aviones set fabricante = "Embraer" where nro = 08;


-- ------------------------
-- Delete
-- ------------------------
-- delete from piloto_personal where id = 3;

-- select * from piloto_personal;
=======
select * from pilotos_personal;

-- ingreso registro a la tabla "pilotos_personal"
INSERT INTO pilotos_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (35467453, 35467453);
INSERT INTO pilotos_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (24447656, 24447656);
INSERT INTO pilotos_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (34654567, 34654567);
>>>>>>> 7abdc9a3b9275adc83f8918da921779abba72217
