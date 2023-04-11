-- Ingreso registros a la tabla "Avion"
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) 
VALUES (02, '420', 'PAMPA', 300, 'A2');
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) 
VALUES (03, '210', 'PAMPA', 300, 'A1');
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) 
VALUES (01, '350', 'AeroLis', 400, 'C2');

-- Ingreso registro a la tabla "Vuelo"
INSERT INTO vuelos (horaSalida, fecha, horaLlegada, ciudad, nro_avion) 
VALUES (13, '2023-04-12', 15,'bariloche',02);
INSERT INTO vuelos (horaSalida, fecha, horaLlegada, ciudad, nro_avion) 
VALUES (15, '2023-04-15', 19, 'brasil', 01);
INSERT INTO vuelos (horaSalida, fecha, horaLlegada, ciudad, nro_avion) 
VALUES (09, '2023-04-15', 11, 'mar del plata',03);

-- ingreso registro a la tabla "Pasajeros"
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (22666443, 1);
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (34653452, 2);
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (32567457, 3);

-- ingreso registro a la tabla "Personal"
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (35467453, 'Javier', 01, 'piloto');
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (24447656, 'Omar', 02, 'piloto');
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (34654567, 'Daniel', 03, 'piloto');

-- ingreso registro a la tabla "Pilotos"
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (35467453, 01);
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (24447656, 02);
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (34654567, 03);

-- ingreso registro a la tabla "Piloto_personal"
INSERT INTO piloto_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (35467453, 35467453);
INSERT INTO piloto_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (24447656, 24447656);
INSERT INTO piloto_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (34654567, 34654567);

/* Consultas */
select * from aviones;
select * from vuelos;
select * from personal;
select * from pasajeros;
select * from pilotos;
select * from piloto_personal;

-- Consultar la cantidad de horas totales que viajo el piloto de una ciudad a otra
select horaSalida, horaLlegada, ciudad, (horaLlegada - horaSalida) as totalHoras from vuelos;

-- Consultar la cantidad total de pasajeros
select count(*) as cantidad_total from vuelos where ciudad = "bariloche";