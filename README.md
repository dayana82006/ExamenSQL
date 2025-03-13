# ExamenSQL
1. Listar todos los libros disponible
```sql
    SELECT id,titulo,genero,disponibilidad FROM libro WHERE disponibilidad = 'disponible';
```
2. Buscar libros por género
```sql
 SELECT id,titulo,genero FROM libro WHERE genero = 'infantil';
```
3. Obtener información de un libro por ISBN
```sql
 SELECT id,titulo,genero,ISBN FROM libro WHERE ISBN = '87326326423';
```
4. Contar el número de libros en la biblioteca
```sql
SELECT COUNT(id) FROM libro;
```
5. Listar todos los autores
```sql
SELECT id, nombre, apellido, nacionalidad FROM autor ;
```
6. Buscar autores por nombre
```sql
SELECT nombre FROM autor ;
```
7. Obtener todos los libros de un autor específico
```sql
SELECT L.id, L.titulo FROM  libro L
JOIN LibroAutor LA ON L.id = LA.id
JOIN autor A ON LA.id = A.id
WHERE A.nombre = 'Camilo';
```
8. Listar todas las ediciones de un libro
```sql
SELECT id, libro_id, fecha_publicacion, id_editorial FROM publicacion WHERE libro_id = '1';
```
9. Obtener la última edición de un libro
```sql
SELECT id, libro_id, fecha_publicacion, id_editorial FROM publicacion
WHERE libro_id = '1'
ORDER BY fecha_publicacion DESC,
LIMIT 1;
```
10. Contar cuántas ediciones hay de un libro específico
```sql
SELECT COUNT(id) AS total_ediciones FROM publicaciones 
WHERE libro_id = '1'; 
```
11. Listar todas las transacciones de préstamo
```sql
SELECT id, miembro_id, tipó_transaccion FROM transaccion 
WHERE tipo_transaccion_id = 'prestamo';
```
12. Obtener los libros prestados actualmente
```sql
SELECT L.id, L.titulo FROM libro L
JOIN detalle_transaccion DT ON L.id = DT.libro_id
WHERE DT.tipo_transaccion_id = 'prestamo' ;
```
13. Contar el número de transacciones de un miembro específico
```sql
SELECT COUNT(id) AS total_transacciones FROM detalle_transaccion
WHERE miembro_id = '1';
```
14. Listar todos los miembros de la biblioteca
```sql
SELECT id, nombre, apellido FROM miembro;
```
15. Buscar un miembro por nombre:
```sql
SELECT id, nombre, apellido FROM miembro WHERE nombre = 'Pedro';
```
16. Obtener las transacciones de un miembro específico
```sql
SELECT id, libro_id, fecha_transaccion, tipo_transaccion_id FROM detalle_transaccion
WHERE miembro_id = '1';
```
17. Listar todos los libros y sus autores
```sql
SELECT libro.id, libro.titulo, A.nombre AS libro l
JOIN LibroAutor LA ON l.id = LA.libro_id
JOIN AUtor A ON LA.autor_id = A.id;
```
18. Obtener el historial de préstamos de un libro específico
```sql
SELECT m.nombre, m.apellido, dt.fecha_vencimiento, dt.fecha_devolucion
FROM detalle_transaccion dt 
JOIN miembro m ON dt.miembro_id = m.id
WHERE dt.libro_id = '1';
```
19. Contar cuántos libros han sido prestados en total
```sql
SELECT COUNT(id) AS total_prestamo
FROM detalle_transaccion;

```
20. Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
SELECT libro.titulo, publicacion.edicion, publicacion.estado, libro.disponibilidad 
FROM libro
JOIN publicacion ON libro.id = publicacion.libro_id;