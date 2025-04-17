CREATE DATABASE mundo_accesorios;

USE mundo_accesorios;

CREATE TABLE usuario(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    rol ENUM('cliente', 'admin', 'super_admin') NOT NULL
);

CREATE TABLE factura(
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    marca_disp VARCHAR(30) NOT NULL,
    modelo_disp VARCHAR(30) NULL,
    imei VARCHAR(15) NULL,
    clave VARCHAR(40) NULL,
    observaciones TEXT NULL,
    tel VARCHAR(10) NULL,
    firma VARCHAR(40) NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_cliente)
);