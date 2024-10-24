/*1.  Escribe una consulta que recupere los Vuelos (flights) y su identificador que figuren con status On Time.*/
SELECT flight_id, flight_no FROM flights
WHERE status = 'On Time'

/*2.  Escribe una consulta que extraiga todas las columnas de la tabla bookings y refleje todas las reservas que han supuesto una cantidad totSELECTal mayor a 1.000.000 (Unidades monetarias).Nota: las tablas son públicas de Rusia, por tanto son Rublos sus unidades monetarias*/
SELECT * FROM bookings
WHERE total_amount > 1000000

/*Escribe una consulta que extraiga todas las columnas de los datos de los modelos de aviones disponibles (aircraft_data).*/
SELECT * FROM aircrafts_data

/*Con el resultado anterior visualizado previamente, escribe una consulta que extraiga los identificadores de vuelo que han volado con un Boeing 737. (Código Modelo Avión)733*/
SELECT flight_id, flight_no FROM flights
WHERE aircraft_code = '733'

/*Escribe una consulta que te muestre la información detallada de los tickets que han comprado las personas que se llaman Irina.*/
SELECT * from tickets
WHERE passenger_name ILIKE '%IRINA%'