CREATE DATABASE libreria;
USE libreria;

CREATE TABLE libro(
     id INT AUTO_INCREMENT PRIMARY KEY ,
     titulo VARCHAR(50),
     genero VARCHAR (20),
     ISBN VARCHAR(20),
     disponibilidad VARCHAR(20)
);

CREATE TABLE autor(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    apellido VARCHAR (50),
    nacionalidad VARCHAR (50)
);

CREATE TABLE LibroAutor(
    id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    autor_id INT,
    FOREIGN KEY (libro_id) REFERENCES libro(id),
    FOREIGN KEY (autor_id) REFERENCES autor(id)
);

CREATE TABLE editorial (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20),
    pais VARCHAR(30)
);

CREATE TABLE publicacion(
    id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    id_editorial INT,
    fecha_publicacion DATE,
    edicion VARCHAR(20),
    estado VARCHAR(15),
    FOREIGN KEY (id_editorial) REFERENCES editorial(id),
    FOREIGN KEY (id_libro) REFERENCES libro(id)
);
CREATE TABLE miembro(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    correo  VARCHAR(30),
    telefono VARCHAR(30)
);
CREATE TABLE tipo_transaccion(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200)
);
CREATE TABLE detalle_transaccion(
    id INT AUTO_INCREMENT PRIMARY KEY,
    miembro_id INT,
    libro_id INT,
    tipo_transaccion_id INT,
    fecha_vencimiento DATE,
    fecha_devolucion DATE
);
