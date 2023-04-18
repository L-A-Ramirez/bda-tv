-- Ingreso registros a la tabla "Avion"
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) 
VALUES (02, '420', 'PAMPA', 300, 'A2');
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) 
VALUES (03, '210', 'PAMPA', 300, 'A1');
INSERT INTO aviones (nro, modelo, fabricante, capacidad, angar) 
VALUES (01, '350', 'AeroLis', 400, 'C2');

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


-- ingreso registro a la tabla "Personal"
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (35467453, 'Javier', 01, 'piloto');
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (24447656, 'Omar', 02, 'piloto');
INSERT INTO personal (nroLegajo, nombre, nro_vuelo, areaAsignada) VALUES (34654567, 'Daniel', 03, 'piloto');

-- ingreso registro a la tabla "Pilotos"
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (35467453, 01);
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (24447656, 02);
INSERT INTO pilotos (nroLegajo, nro_avion) VALUES (34654567, 03);

select * from pilotos_personal;

-- ingreso registro a la tabla "pilotos_personal"
INSERT INTO pilotos_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (35467453, 35467453);
INSERT INTO pilotos_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (24447656, 24447656);
INSERT INTO pilotos_personal (nroLegajo_piloto, nroLegajo_personal) VALUES (34654567, 34654567);