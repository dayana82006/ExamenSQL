# ExamenSQL
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

```
Contar cuántas ediciones hay de un libro específico
```sql

```
Listar todas las transacciones de préstamo
```sql

```
Obtener los libros prestados actualmente
```sql

```
Contar el número de transacciones de un miembro específico
```sql

```
Listar todos los miembros de la biblioteca
```sql

```
Buscar un miembro por nombre:
```sql

```
Obtener las transacciones de un miembro específico
```sql

```
Listar todos los libros y sus autores
```sql

```
Obtener el historial de préstamos de un libro específico
```sql

```
Contar cuántos libros han sido prestados en total
```sql

```
Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
