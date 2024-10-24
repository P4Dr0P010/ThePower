/*EJERCICIO 04
Nivel de dificultad: Experto
1.  Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos").*/
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER CONSTRAINT FK_id_user REFERENCES usuarios(id),
    id_producto INTEGER CONSTRAINT FK_id_prod REFERENCES productos(id)
)

/*2.  Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos.*/
INSERT INTO pedidos (id_usuario, id_producto)
VALUE
    (2, 3),
    (2, 5),
    (3, 2),
    (4, 1)

/*3.  Realiza una consulta que muestre los nombres de los usuarios y los nombres de los productos que han comprado, incluidos aquellos que no han realizado ningún pedido (utiliza LEFT JOIN y COALESCE).*/
SELECT 
    usuarios.nombre, 
    COALESCE (productos.nombre, 'SIN PEDIDOS') AS productos 
FROM public.usuarios
LEFT JOIN public.productos
ON usuarios.id = productos.id

/*4.  Realiza una consulta que muestre los nombres de los usuarios que han realizado un pedido, pero también los que no han realizado ningún pedido (utiliza LEFT JOIN).*/
SELECT usuarios.nombre, COALESCE (pedidos.id, 0) AS pedidos_realizados 
FROM public.usuarios
LEFT JOIN public.pedidos
ON usuarios.id = pedidos.id

/*5.  Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE*/
ALTER TABLE pedidos
ADD COLUMN cantidad INT;

UPDATE pedidos
SET cantidad = 1;
