CREATE DATABASE mundo_accesorios;

USE mundo_accesorios;

CREATE TABLE factura(
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    fecha_registro DATETIME NOT NULL,
    marca_disp VARCHAR(30) NOT NULL,
    modelo_disp VARCHAR(30) NULL,
    imei VARCHAR(15) NULL,
    clave VARCHAR(40) NULL,
    observaciones TEXT NULL,
    tel VARCHAR(10) NULL,
    firma VARCHAR(40) NULL
);