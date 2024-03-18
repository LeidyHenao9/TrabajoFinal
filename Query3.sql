USE Final;

WITH CitasEnumeradas AS (
    SELECT
        c.id_cliente,
        CONCAT(c.nombre, ' ', c.apellido) AS nombre_completo,
        ROW_NUMBER() OVER (PARTITION BY c.id_cliente ORDER BY cita.fecha) AS numero_fila,/*para asignar un número de fila a cada cita para cada cliente, particionado por el id_cliente y ordenado por la fecha de la cita.
La CTE se une a las tablas Cliente y Cita para obtener la información necesaria*/
        DATE_FORMAT(cita.fecha, '%Y-%m-%d') as Fecha
    FROM
        Cliente c
    JOIN
        Cita cita ON c.id_cliente = cita.id_cliente
)
SELECT
    id_cliente,
    nombre_completo,
    fecha,
    numero_fila
FROM
    CitasEnumeradas
WHERE
    numero_fila BETWEEN 1 AND 5;