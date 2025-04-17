CREATE DATABASE mundo_accesorios;

USE mundo_accesorios;

CREATE TABLE rol(
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE status(
    id_status INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE usuario(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    contrasena VARCHAR(60) NOT NULL,
    rol INT NOT NULL,
    status INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    FOREIGN KEY (rol) REFERENCES rol(id_rol),
    FOREIGN KEY (status) REFERENCES status(id_status)
);

CREATE TABLE dispositivo_reparacion(
    id_dispositivo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    imei VARCHAR(15) NULL,
    clave VARCHAR(15) NULL,
    problema_descripcion TEXT NOT NULL,
    fecha_ingreso DATETIME NOT NULL,
    fecha_entrega DATETIME NULL,
    status INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_cliente),
    FOREIGN KEY (status) REFERENCES status(id_status)
);