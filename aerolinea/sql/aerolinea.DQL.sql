/* Consultas */
select * from aviones;
select * from vuelos;
select * from personal;
select * from pasajeros;
select * from pilotos;
select * from pilotos_personal;

-- Consultar la cantidad de horas totales que viajo el piloto de una ciudad a otra
select horaSalida, horaLlegada, ciudad, (horaLlegada - horaSalida) as totalHoras from vuelos;

-- Consultar la cantidad total de pasajeros
select count(*) as cantidad_total from vuelos where ciudad = "bariloche";