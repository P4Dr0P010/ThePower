/*EJERCICIO 01
01.  Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria), nombre (texto) y email (texto).*/
CREATE TABLE IF NOT EXISTS Clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    email VARCHAR(255)
)

/*02.  Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y 
email="juan@example.com"*/
INSERT INTO public.clientes (id, nombre, email)
VALUES(1, 'Juan', 'juan@example.com')

/*03.  Actualizar el email del cliente con id=1 a "juan@gmail.com"*/
UPDATE public.clientes
SET email = 'juan@gmail.com'
WHERE id = 1

/*04.  Eliminar el cliente con id=1 de la tabla "Clientes"*/
DELETE FROM public.clientes
WHERE id = 1

/*05.  Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria), cliente_id (entero, clave externa referenciando a a tabla "Clientes"), producto (texto) y cantidad (entero)*/
CREATE TABLE IF NOT EXISTS pedidos(
	id SERIAL PRIMARY KEY,
	cliente_id INT NOT NULL,
    producto VARCHAR(255),
	cantidad INT,
    CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes(id)
)

/*06.  Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1, producto="Camiseta" y cantidad=2*/
INSERT INTO public.clientes(nombre, email)
VALUES 
	('Pepe', 'pepe@ya.com'),
	('Juan', 'juan@aya.com'),
	('Amador', 'amador@gmail.com'),
	('Rogelio', 'rogelio@hola.com');

INSERT INTO public.pedidos(id, cliente_id, producto, cantidad)
VALUES (1, 1, 'Camiseta', 2)

/*07.  Actualizar la cantidad del pedido con id=1 a 3*/
UPDATE public.pedidos
SET cantidad=3
WHERE id=1

/*08.  Eliminar el pedido con id=1 de la tabla "Pedidos".*/
DELETE FROM public.pedidos
WHERE id = 1

/*09.  Crear una tabla llamada "Productos" con las columnas: id (entero, clave primaria), nombre (texto) y precio (decimal).*/
CREATE TABLE IF NOT EXISTS productos(
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	precio DECIMAL
)

/*10.  Insertar varios productos en la tabla "Productos" con diferentes valores.*/
INSERT INTO productos (id, nombre, precio)
VALUES 
    (1, 'pan', 2.96),
    (2, 'aguacate', 1.50),
    (3, 'salmon', 23.20),
    (4, 'naranjas', 3.99),
    (5, 'coca-cola 2L', 2.58),
    (6, 'cafe molido', 6.20)

/*11.  Consultar todos los clientes de la tabla "Clientes".*/
SELECT * FROM clientes

/*12.  Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los clientes correspondientes.*/
SELECT * FROM public.pedidos
LEFT JOIN public.clientes
ON public.pedidos.cliente_id = public.clientes.id

/*13.  Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.*/
SELECT * FROM productos
WHERE precio > 50

/*14.  Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o igual a 5.*/
SELECT * FROM pedidos
WHERE cantidad > 5

/*15.  Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra "A".*/
SELECT * FROM clientes
WHERE nombre ILIKE 'A%' OR nombre ILIKE 'Á%'

/*16.  Realizar una consulta que muestre el nombre del cliente y el total de pedidos realizados por cada cliente.*/
SELECT c.nombre, SUM(p.cantidad) AS total_pedidos FROM public.clientes c
INNER JOIN public.pedidos p
ON c.id = p.cliente_id
GROUP BY c.nombre
ORDER BY c.nombre ASC

/*17.  Realizar una consulta que muestre el nombre del producto y la cantidad total de pedidos de ese producto.*/
    /*Para mantener coherencia en los datos a la hora de enlazar tablas, he renombrado la columna pedidos.nombre a pedidos.nom_prod*/
    ALTER TABLE public.productos
    RENAME COLUMN nombre TO nom_prod

    /*Despues, he alimentar las tablas clientes y pedidos para realizar una consulta con un retorno confiable*/
    /*Finalmente, he realizado la consulta*/
    SELECT * FROM public.productos pr
    LEFT JOIN public.pedidos pd
    ON pr.nom_prod = pd.producto

/*18.  Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha.*/
ALTER TABLE public.pedidos
ADD COLUMN fecha DATE

/*19.  Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla "Productos" en la columna "producto".*/
ALTER TABLE public.pedidos
ADD CONSTRAINT FK_prod FOREIGN KEY (id) REFERENCES productos(id)

/*20.  Realizar una consulta que muestre los nombres de los clientes, los nombres de los productos y las cantidades de los pedidos donde coincida la clave externa.*/
INSERT INTO pedidos (cliente_id, producto, cantidad)
VALUES 
    (1, 'pan', 2),
    (1, 'aguacate', 1),
    (2, 'salmon', 2),
    (3, 'naranjas', 9),
    (3, 'coca-cola 2L', 5),
    (3, 'cafe molido', 2);

SELECT nombre, producto, cantidad FROM clientes
INNER JOIN pedidos
on cliente_id = clientes.id
