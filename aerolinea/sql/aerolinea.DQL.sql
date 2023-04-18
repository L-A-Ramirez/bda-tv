/* Consultas */
select * from aviones;
select * from vuelos;
select * from personal;
select * from pasajeros;
select * from pilotos;
select * from pilotos_personal;

-- Consultar la cantidad de horas totales que viajo el piloto de una ciudad a otra
select horaSalida, horaLlegada, ciudad, (horaLlegada - horaSalida) as totalHoras from vuelos;

/*
	Consultas con funciones
 */
-- Consultar la cantidad de hora maxima total que viajo algun piloto (pendiente en consulta anidada)
select max(horaLlegada - horaSalida) as totalHoras from vuelos;

-- Consultar la cantidad de hora minima total que viajo algun piloto (pendiente en consulta anidada)
select min(horaLlegada - horaSalida) as totalHoras from vuelos;

-- Consultar el precio del vuelo más barato
select min(precio) menor_precio from vuelos; -- Se extiende con consulta anidada

-- Consultar el precio del vuelo más caro
select max(precio) mayor_precio from vuelos; -- Se extiende con consulta anidada

-- Sacar el promedio total del precio de los vuelos
select avg(precio) promedio_total from vuelos;

-- Sacar la suma de todos los vuelos vendidos
select sum(precio) as Suma_total_vuelos from vuelos;

-- Consultar la cantidad total de pasajeros con destino a bariloche
select count(*) as cantidad_total from vuelos where ciudad = "bariloche";

/*
	Consultas condicionadas
 */
 -- seleccioname el precio menor a "8000"
 select precio, ciudad from vuelos where precio > 8000;
 
 -- seleccioname el precio menor a "15000"
 select precio, ciudad from vuelos where precio < 15000;
 
 -- seleccioname el precio entre "8000 y 15000"
 select precio, ciudad from vuelos where precio >= 8000 and precio <= 15000;
 
 select precio, ciudad from vuelos where precio not between 8000 and 10000;

-- seleccioname el precio distinto a "8000 y 10000"
select precio, ciudad from vuelos where precio != 8000 and precio != 10000;

/* 
	
*/