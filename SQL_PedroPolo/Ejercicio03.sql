/*EJERCICIO 03
Nivel de dificultad: Difícil
01.  Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).*/

CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    precio DECIMAL
)

/*02.  Inserta al menos cinco registros en la tabla "Productos".*/
INSERT INTO productos (nombre, precio)
VALUES 
    ('pan', 2.96),
    ('aguacate', 1.50),
    ('salmon', 23.20),
    ('naranjas', 3.99),
    ('coca-cola 2L', 2.58),
    ('cafe molido', 6.20)


/*03.  Actualiza el precio de un producto en la tabla "Productos".*/
UPDATE public.productos
SET precio = 18.50
WHERE nombre = 'salmon'

/*04.  Elimina un producto de la tabla "Productos".*/
DELETE FROM public.pedidos
WHERE id = 6

/*05.  Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos"*/