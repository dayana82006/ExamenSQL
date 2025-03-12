Listar todos los libros disponible
```sql
    SELECT id,titulo,genero,disponibilidad FROM libro WHERE disponibilidad = 'disponible';
```
Buscar libros por género
```sql
 SELECT id,titulo,genero FROM libro WHERE genero = 'infantil';
```
Obtener información de un libro por ISBN
```sql
 SELECT id,titulo,genero,ISBN FROM libro WHERE ISBN = '87326326423';
```
Contar el número de libros en la biblioteca
```sql
SELECT COUNT(id) FROM libro;
```
Listar todos los autores
```sql
SELECT id, nombre, apellido, nacionalidad FROM autor ;
```
Buscar autores por nombre
```sql
SELECT nombre FROM autor ;
```
Obtener todos los libros de un autor específico
```sql
SELECT L.id, L.titulo FROM  libro L
JOIN LibroAutor LA ON L.id = LA.id
JOIN autor A ON LA.id = A.id
WHERE A.nombre = 'Camilo',
```
Listar todas las ediciones de un libro
```sql
SELECT id, libro_id, fecha_publicacion, id_editorial FROM publicacion;
```
Obtener la última edición de un libro
```sql
# Introduce aquí las consultas.
```
Contar cuántas ediciones hay de un libro específico
```sql
# Introduce aquí las consultas.
```
Listar todas las transacciones de préstamo
```sql
# Introduce aquí las consultas.
```
Obtener los libros prestados actualmente
```sql
# Introduce aquí las consultas.
```
Contar el número de transacciones de un miembro específico
```sql
# Introduce aquí las consultas.
```
Listar todos los miembros de la biblioteca
```sql
# Introduce aquí las consultas.
```
Buscar un miembro por nombre:
```sql
# Introduce aquí las consultas.
```
Obtener las transacciones de un miembro específico
```sql
# Introduce aquí las consultas.
```
Listar todos los libros y sus autores
```sql
# Introduce aquí las consultas.
```
Obtener el historial de préstamos de un libro específico
```sql
# Introduce aquí las consultas.
```
Contar cuántos libros han sido prestados en total
```sql
# Introduce aquí las consultas.
```
Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
# Introduce aquí las consultas.