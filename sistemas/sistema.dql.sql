-- Traeme la cantidad de veces que se ejecuto un programa con frecuencia media en un sistema de nivel bajo
select count(*) as cantidad, frec_ejec, nivel from programas
join sistema_programa on sistema_programa.frec_ejec_programa = programas.frec_ejec
join sistemas on sistema_programa.nivel_sistema = sistemas.nivel
where (nivel = "bajo" and frec_ejec="media");

-- Traeme la cantidad de veces que se ejecutaron programas en el sistema
select count(*) as cantidad from programas
join sistema_programa on sistema_programa.frec_ejec_programa = programas.frec_ejec;

-- Traeme las frecuencias de los programas con archivos input-output
select modo, frec_ejec from programas -- seleccionar los campos necesarios
join programa_archivo on programas.frec_ejec = programa_archivo.frec_ejec_programa -- uno programa_archivo con la tabla programas
join archivos on programa_archivo.modo_archivo = archivos.modo -- uno programa_archivo con la tabla archivos
where modo = "input-output";

/*
	Traeme las frecuencia de los programas con archivos 
	input-output y el nivel de su sistema 
*/	
-- llamar cada campo de distintas tablas	
select frec_ejec, modo, nivel from sistemas 
-- union de la tabla sistema_programa con la tabla sistemas
join sistema_programa on sistemas.nivel = sistema_programa.nivel_sistema 
-- union de la tabla sistema_programa con la tabla programas
join programas on sistema_programa.frec_ejec_programa = programas.frec_ejec 
-- union de la tabla programa_archivo con la tabla programas
join programa_archivo on programas.frec_ejec = programa_archivo.frec_ejec_programa 
-- union de la tabla programa_archivo con la tabla archivo
join archivos on programa_archivo.modo_archivo = archivos.modo 
-- donde modo sea igual a "input-output"
where modo = "input-output";
												