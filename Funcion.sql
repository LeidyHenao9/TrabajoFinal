use Final;

DELIMITER //

CREATE FUNCTION Detalle_Cita(id_cita_param INT)
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE cita_info VARCHAR(255);
    DECLARE cliente_nombre VARCHAR(50);
    DECLARE fecha_cita VARCHAR(10); 
    DECLARE servicio_programado VARCHAR(50);

    -- Obtener información de la cita utilizando el ID de la cita
    SELECT CONCAT('Cliente: ', CONCAT(nombre, ' ', apellido)), 
           DATE_FORMAT(fecha, '%Y-%m-%d'), 
           CONCAT('Servicio: ', id_servicio)
    INTO cliente_nombre, fecha_cita, servicio_programado
    FROM Cita
    JOIN Cliente ON Cita.id_cliente = Cliente.id_cliente
    WHERE id_cita = id_cita_param;

    -- Concatenar los detalles de la cita
    SET cita_info = CONCAT(cliente_nombre, ', ', fecha_cita, ', ', servicio_programado);

    RETURN cita_info;
END//

DELIMITER ;

SELECT Detalle_Cita(1);