/*EJERCICIO 02
Nivel de dificultad: Fácil
01.  Crea una base de datos llamada "MiBaseDeDatos".*/
CREATE DATABASE MiBasdeDeDatos

/*02.  Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero).*/
CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    edad INT
)

/*03.  Inserta dos registros en la tabla "Usuarios".*/
INSERT INTO public.usuarios (nombre, edad)
VALUES
    ('Juan', 18),
    ('Pedro', 25)

/*04.  Actualiza la edad de un usuario en la tabla "Usuarios".*/
UPDATE public.usuarios
SET edad = 32
WHERE nombre = 'Pedro'

/*05.  Elimina un usuario de la tabla "Usuarios".*/
DELETE FROM public.usuarios
WHERE id = 1

/*Nivel de dificultad: Moderado*/
/*01.  Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto).*/
CREATE TABLE IF NOT EXISTS ciudades (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    pais VARCHAR(255)
)

/*02.  Inserta al menos tres registros en la tabla "Ciudades".*/
INSERT INTO public.ciudades (nombre, pais)
VALUES
    ('Valencia', 'España'),
    ('Barcelona', 'España'),
    ('Roma', 'Italia')

/*03.  Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".*/
ALTER TABLE public.usuarios
ADD COLUMN id_ciudad INT,
ADD CONSTRAINT FK_id_ciudad FOREIGN KEY (id_ciudad) REFERENCES ciudades(id)

/*04.  Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).*/
SELECT usuarios.nombre, ciudades.nombre as nombre_ciudad, ciudades.pais FROM public.usuarios
LEFT JOIN public.ciudades
ON usuarios.id_ciudad = ciudades.id

/*05.  Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).*/
SELECT usuarios.nombre, ciudades.nombre as nombre_ciudad, ciudades.pais FROM public.usuarios
INNER JOIN public.ciudades
ON usuarios.id_ciudad = ciudades.id