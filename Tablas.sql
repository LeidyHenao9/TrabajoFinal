CREATE DATABASE Final;
USE Final;

DELIMITER //
CREATE PROCEDURE Tablas_final()
BEGIN
    -- Crear tabla Cliente
    CREATE TABLE IF NOT EXISTS Cliente (
        id_cliente INTEGER PRIMARY KEY,
        nombre VARCHAR(20),
        apellido VARCHAR(20),
        direccion VARCHAR(50),
        correo_electronico VARCHAR(50)
    );
    -- Crear tabla Cita
    CREATE TABLE IF NOT EXISTS Cita (
        id_cita INTEGER PRIMARY KEY,
        id_cliente INTEGER,
        fecha DATETIME,
        id_servicio VARCHAR(5),
        id_empleado VARCHAR(10),
        cod_bono VARCHAR(3),
        valor_adiciones VARCHAR(10), 
        total VARCHAR(10),
        FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
    );
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE InsertarDatos()
BEGIN
    -- Insertar datos en la tabla Cliente
    INSERT INTO Cliente (id_cliente, nombre, apellido, direccion, correo_electronico)
    VALUES (1152187122,'Natalia ','	Benjumea','Clle 37 N° 106 - 23','nataliabenju@gmail.com'),
			(1152123456	,'Marcela','Montaño','Cra 45 N° 68 - 33','marcemonta@hotmail.com'),
			(1152234563	,'Andrea','	Castillo','	Cir 60 N° 71 - 12','andreacastillo1@gmail.com'),
			(1152876098	,'Juliana','Mejia','Clle 98 N° 99 -02','julianamejia23@gmail.com'),
			(1152657345	,'Lina','Zapata','Cra 95 N° 91 - 16','linazapata3@hotmail.com'),
			(1152345678	,'Sofia ','Alcaraz','Cll 59 N° 58 - 23','	sofi012@gmail.com'),
			(1153765321	,'Milena','Gil','Cra 34 N° 34 - 45','mileg123@hotmail.com'),
			(1153678432	,'Diana	','Ortiz','	Cra 56 N° 45 - 67','dianaortiz12@gmail.com'),	
            (1154765234	,'Ana ','Cartagena','Cra 76 N° 32 - 65','anacarta43@hotmail.com'),
            (1153345987	,'Cristina ','Gomez','Cll 106 N° 32 - 67','cristinagomez67@gmail.com');

    -- Insertar datos en la tabla Cita
    INSERT INTO Cita (id_cita, id_cliente, fecha, id_servicio, id_empleado, cod_bono, valor_adiciones, total)
    VALUES  (1,1152234563,'2023-01-20','1001',1152123456,59,	2000,	20000),
			(2,1152187122,'2023-11-15','1002',1152657345,64,	4000,	300000),
            (3,1153345987,'2023-05-15','1001',1152123456,63,	5000,	35000),
            (4,1152123456,'2023-06-12','1003',1234564789,60,	5000,	40000),
            (5,1153678432,'2023-05-23','1002',1178345878,57,	1000,	20000),
            (6,1152234563,'2023-12-23','1003',1198456876,60,	null,	10000),
            (7,1152187122,'2023-06-30','1001',1198456876,60,	2000,	30000),
            (8,1152345678,'2023-06-27','1001',1152768900,60,	3000,	20000),
            (9,1153345987,'2023-11-14','1003',1153765321,61,	4000,	40000),
            (10,1152123456,'2023-04-06','1002',1152876098,66,	2000,	30000),
            (11,1152345678,'2023-04-02','1002',1152187122,64,	5000,	40000);
END//
DELIMITER ;


select * from Cita;
