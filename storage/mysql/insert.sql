INSERT INTO libro(titulo, genero, ISBN, disponibilidad) VALUES ('Pajaros Felices', 'infantil', '87326326423', 'disponible'),('Perros y Gatos', 'infantil', '1245678', 'disponible');
INSERT INTO autor(nombre, apellido, nacionalidad) VALUES ('jacinto', 'perez', 'peruano'),('Pedro', 'Morales', 'colombiano');
INSERT INTO LibroAutor(libro_id.autor_id) VALUES ('1','1'),('2','2');
INSERT INTO editorial(nombre,pais) VALUES('editorial1','peru'),('editorial2','colombia');
INSERT INTO publicacion(id_editorial, fecha_publicacion,edicion,estado) VALUES (1,'2013-02-02','primera','publicado'),('2','2013-02-02','primera','publicado');
INSERT INTO miembro(nombre,apellido,correo,telefono) VALUES ('Camilo','Hernandez', 'camilo@gmail.com','3125006423'),('Pedro','Perez', 'pedro@gmail.com','3129806423');
INSERT INTO tipo_transaccion(nombre) VALUES ('prestamo'),('venta');
INSERT INTO detalle_transaccion (miembro_id,libro_id,tipo_transaccion_id,fecha_vencimiento, fecha_devolucion) VALUE('1','1','1','2025-06-06','2025-04-13'),('1','2','1','2025-06-06','2025-04-13'),('2','1','2','2025-08-06','2025-06-13');