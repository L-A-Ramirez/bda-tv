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
 

-- Guardamos en "variable1" el promedio de los precios con destino a "colombia"
 select @variable1 := avg(precio) from vuelos where ciudad = "colombia";
 
 -- Guardamos en "aumento" el incremento de un 20% del precio de los vuelos
 select @variable2 := 1.20;
 
 select @aumento := precio*@variable2 from vuelos;

-- seleccionamos los vuelos con aumento
 select precio,@aumento as aumento, ciudad from vuelos where precio = @variable1;
 
-- Consultar la cantidad de hora maxima total que viajo algun piloto
select @horasMaximaVuelo := max(horaLlegada - horaSalida) from vuelos;
 
select (horaLlegada - horaSalida) as totalHoras, ciudad from vuelos
having totalHoras = @horasMaximaVuelo;

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
 select precio, ciudad from vuelos where precio > 18000;
 
 -- seleccioname el precio menor a "15000"
 select precio, ciudad from vuelos where precio < 29000;
 
 -- seleccioname el precio entre "8000 y 15000"
 select precio, ciudad from vuelos where precio >= 18000 and precio <= 29000 order by precio;
 
 select precio, ciudad from vuelos where precio between 18000 and 28000 order by precio;

-- seleccioname el precio distinto a "8000 y 10000"
select precio, ciudad from vuelos where precio != 18000 and precio != 27000.5 order by precio;

-- ------------ Group by - Having
-- resultado de la consulta que se guarda en la variable @promVuelosChile
-- Guardamos en la variable "promVuelosChile" el promedio de los vuelos con ese destino
select @promVuelosChile:=avg(precio) from vuelos where ciudad = "chile";

select avg(precio), ciudad from vuelos
group by ciudad having avg(precio) > @promVuelosChile;

-- ------------
/*
	Join
    1) Seleccionamos los campos de diferentes tablas
    2) unimos tablas (join)
    3) relacionamos tablas (on) y comparamos claves ("pasaporte = dni") <-- no importa el orden ("dni = pasaporte") 
*/
select pasaporte, nombre from pasajeros join personas on pasaporte = dni;