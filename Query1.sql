use final;

-- Selecciona el ID del cliente, el total de sus citas y el promedio del total de citas
SELECT id_cliente,
       COUNT(id_cita) AS total_citas,
       AVG(total) AS promedio_total_citas
FROM Cita
GROUP BY id_cliente
HAVING COUNT(id_cita) >= 2  -- Solo clientes con más de 5 citas
ORDER BY total_citas DESC;  -- Ordena por el total de citas en orden descendente