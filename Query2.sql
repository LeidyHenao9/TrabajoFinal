USE Final;


-- usamos la funcion para los clientes que tienen como id_Servicio 1003
SELECT
    c.id_cliente,
    Detalle_Cita(cita.id_cita) AS Detalle_Cita,
    c.correo_electronico
FROM
    Cliente c
JOIN
    Cita cita ON c.id_cliente = cita.id_cliente
WHERE
    cita.id_servicio = 1003