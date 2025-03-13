##EXAMEN SQL


-- Listar todos los libros disponibles
```sql
SELECT id, titulo, genero, disponibilidad FROM libro WHERE disponibilidad = 'disponible';
```
-- Buscar libros por género
```sql
SELECT id, titulo, genero FROM libro WHERE genero = 'infantil';
```
-- Obtener información de un libro por ISBN
```sql
SELECT id, titulo, genero, ISBN FROM libro WHERE ISBN = '87326326423';
```
-- Contar el número de libros en la biblioteca
```sql
SELECT COUNT(id) AS total_libros FROM libro;
```
-- Listar todos los autores
```sql
SELECT id, nombre, apellido, nacionalidad FROM autor;
```
-- Buscar autores por nombre
```sql
SELECT nombre FROM autor;
```
-- Obtener todos los libros de un autor específico
```sql
SELECT L.id, L.titulo 
FROM libro L
JOIN LibroAutor LA ON L.id = LA.libro_id
JOIN autor A ON LA.autor_id = A.id
WHERE A.nombre = 'Camilo';
```
-- Listar todas las ediciones de un libro
```sql
SELECT id, libro_id, fecha_publicacion, id_editorial 
FROM publicacion 
WHERE libro_id = 1;
```
-- Obtener la última edición de un libro
```sql
SELECT id, libro_id, fecha_publicacion, id_editorial 
FROM publicacion 
WHERE libro_id = 1
ORDER BY fecha_publicacion DESC
LIMIT 1;
```

-- Contar cuántas ediciones hay de un libro específico
```sql
SELECT COUNT(id) AS total_ediciones 
FROM publicacion 
WHERE libro_id = 1;
```

-- Listar todas las transacciones de préstamo
```sql
SELECT id, miembro_id, tipo_transaccion_id 
FROM detalle_transaccion 
WHERE tipo_transaccion_id = 1; 
```

-- Obtener los libros prestados actualmente
```sql
SELECT L.id, L.titulo 
FROM libro L
JOIN detalle_transaccion DT ON L.id = DT.libro_id
WHERE DT.tipo_transaccion_id = 1;
```

-- Contar el número de transacciones de un miembro específico
```sql
SELECT COUNT(id) AS total_transacciones 
FROM detalle_transaccion
WHERE miembro_id = 1;
```
-- Listar todos los miembros de la biblioteca
```sql
SELECT id, nombre, apellido FROM miembro;
```

-- Buscar un miembro por nombre
```sql
SELECT id, nombre, apellido FROM miembro WHERE nombre = 'Pedro';
```
-- Obtener las transacciones de un miembro específico
```sql
SELECT id, libro_id, fecha_vencimiento, fecha_devolucion, tipo_transaccion_id 
FROM detalle_transaccion
WHERE miembro_id = 1;
```

-- Listar todos los libros y sus autores
```sql
SELECT L.id, L.titulo, A.nombre AS autor 
FROM libro L
JOIN LibroAutor LA ON L.id = LA.libro_id
JOIN autor A ON LA.autor_id = A.id;
```

-- Obtener el historial de préstamos de un libro específico
```sql
SELECT M.nombre, M.apellido, DT.fecha_vencimiento, DT.fecha_devolucion
FROM detalle_transaccion DT 
JOIN miembro M ON DT.miembro_id = M.id
WHERE DT.libro_id = 1;
```

-- Contar cuántos libros han sido prestados en total
```sql
SELECT COUNT(id) AS total_prestamos 
FROM detalle_transaccion;
```

-- Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
SELECT L.titulo, P.edicion, P.estado, L.disponibilidad 
FROM libro L
JOIN publicacion P ON L.id = P.libro_id
ORDER BY P.fecha_publicacion DESC;
```
