USE [Fase2-Proyecto]
GO

Select * from Estado;
Select * from Usuario;
Select * from Artista;
Select * from Album;
Select * from Cancion;
Select * from Lista;
select * from Genero;

UPDATE Artista SET Estado_FK = 1, Eliminacion = null WHERE IdArtista = 1;
UPDATE Album SET Estado_FK = 1, Eliminacion = null WHERE Artista_FK = 1;

<-- Cantidad de artistas por usuario

Select Count(Artista.Estado_FK) from Artista  inner join Usuario on Artista.Usuario_FK = Usuario.IdUsuario
where Artista.Estado_FK = 1 AND Usuario.IdUsuario = 1;
<--------------------------------------


Update Album set Estado_FK = 2 where Artista_FK = ;

Delete Cancion where Cancion.IdCancion = 15 ;

UPDATE Cancion SET Estado_FK = 1 WHERE Album_FK = 2; 
UPDATE Album SET Estado_FK = 1 WHERE Artista_FK = 1;
UPDATE Artista SET Estado_FK = 1 WHERE Usuario_FK = 18;

SELECT Album.IdAlbum from Album INNER JOIN Artista ON Album.Artista_FK = Artista.IdArtista 
WHERE Artista.IdArtista = 1 AND Artista.NombreArtista = 'Artista1';

SELECT Album.IdAlbum FROM Album INNER JOIN Artista ON Album.Artista_FK = Artista.IdArtista 
WHERE Artista.IdArtista = 1 AND Album.Titulo = 'Album1'; 

Select Nacionalidad.IdNacionalidad from Nacionalidad inner join Artista ON Nacionalidad.IdNacionalidad = Artista.Nacionalidad_FK 
inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = 16;

UPDATE Cancion SET Estado_FK = 1 FROM Cancion inner join Album ON Album.IdAlbum = Cancion.Album_FK inner join Artista ON Album.Artista_FK = Artista.IdArtista 
WHERE Artista.NombreArtista = 'Artista1' ;

SELECT Cancion.Cancion, Cancion.Ruta from Cancion inner join Album on Cancion.Album_FK = Album.IdAlbum 
inner join Artista on Album.Artista_FK = Artista.IdArtista where Artista.IdArtista = 2;

DELETE FROM Cancion where Cancion.IdCancion = 9;

Select * from Cancion;


Select Album.FechaCreacion from Album inner join Artista on Album.Artista_FK = Artista.IdArtista 
WHERE Artista.IdArtista = 1 AND Album.Titulo = 'Album3';

Select Album.Reseña from Album inner join Artista on Album.Artista_FK = Artista.IdArtista
WHERE Artista.IdArtista = 1 AND Album.Titulo = 'Album3' ;

Select Album.Portada from Album inner join Artista on Album.Artista_FK = Artista.IdArtista
WHERE Artista.IdArtista = 1 AND Album.Titulo = 'Album3' ;

Select Album.Titulo from Album inner join Artista on Album.Artista_FK = Artista.IdArtista
WHERE Artista.IdArtista = 1 AND Album.Titulo = 'Album3' ;


SELECT Album.IdAlbum, Album.Titulo, Album.FechaCreacion, Album.Reseña from Album WHERE Album.IdAlbum = 2;
SELECT Cancion.IdCancion, Cancion.Cancion, Cancion.Ruta from Cancion inner join Album on Cancion.Album_FK = Album.IdAlbum 
inner join Artista on Album.Artista_FK = Artista.IdArtista where Artista.IdArtista = 1 AND Album.IdAlbum = 2;

<!-- Actualizar album -->

UPDATE Album SET FechaCreacion = '2004/04/05', Reseña = 'Album editado', Portada = null	where IdAlbum = 2; 



DELETE FROM Cancion where Album_FK = 3;
DELETE FROM Album where Album.IdAlbum = 3;

Select * from Cancion;
Select * from Album;

Select * from Usuario;
Select * from Artista;
Select * from Cancion;
SElect * from Cancion_Lista;
SELECT * from Lista;


INSERT INTO Lista(Nombre, Usuario_FK) VALUES ('', 16);
INSERT INTO Cancion_Lista(Cancion_FK, Lista_FK);

select Lista.IdLista from Lista where Lista.Nombre = '';



<-- Mostrar listado de canciones para agregar a la lista
Select Cancion.IdCancion, Cancion.Cancion, Artista.NombreArtista from Cancion 
inner join Album on Cancion.Album_FK = Album.IdAlbum
inner join Artista on Album.Artista_FK = Artista.IdArtista WHERE Cancion.Estado_FK != 2 ;


Select Lista.Nombre from Lista 
inner join Cancion_Lista on Lista.IdLista = Cancion_Lista.Lista_FK 
inner join Cancion on Cancion_Lista.Cancion_FK = Cancion.IdCancion
inner join Album on Cancion.Album_FK = Album.IdAlbum ;


Select Cancion.Cancion, Artista.NombreArtista from Cancion 
inner join Album on Cancion.Album_FK = Album.IdAlbum
inner join Artista on Album.Artista_FK = Artista.IdArtista
inner join Cancion_Lista on Cancion.IdCancion = Cancion_Lista.Cancion_FK
where Cancion_Lista.Lista_FK = 1;


<--Ver las listas creadas por usuario

Select Cancion.Cancion from Cancion 
inner join Cancion_Lista on Cancion.IdCancion = Cancion_Lista.Cancion_FK 
inner join Lista on Cancion_Lista.Lista_FK = Lista.IdLista 
inner join Usuario on Lista.Usuario_FK = Usuario.IdUsuario 
WHERE Usuario.IdUsuario = 19;

Select Lista.Nombre, Count(Cancion_Lista.Cancion_FK) as Canciones from Lista 
inner join Cancion_Lista on Lista.IdLista = Cancion_Lista.Lista_FK 
where Lista.Usuario_FK = 19 group by Lista.Nombre;

Select Album.Titulo, Album.FechaCreacion AS Eliminacion, Artista.NombreArtista AS Artista from Album 
inner join Artista on Album.Artista_FK = Artista.IdArtista
Where Album.Estado_FK = 2;

Select Cancion.Cancion, Album.Titulo from Cancion 
inner join Album on Cancion.Album_FK = Album.IdAlbum 
where Cancion.Estado_FK = 2 AND Album.IdAlbum = 3;


Select * from Cancion;
SElect * from Album;

SELECT Artista.NombreArtista AS Nombre, Artista.AñoFormacion AS Formacion, Nacionalidad.Pais from Artista
inner join Nacionalidad on Artista.Nacionalidad_FK = Nacionalidad.IdNacionalidad 
WHERE Artista.Estado_FK = 2; 


SELECT Cancion.Cancion from Cancion WHERE CONTAINS(Cancion.Cancion, 'cancion');
SELECT Album.Titulo from Album WHERE CONTAINS(Album.Titulo, 'Album1');


<-- Búsqueda por sectores --->

Select Artista.IdArtista, Artista.NombreArtista from Artista Where Artista.NombreArtista like '%artista%';
Select Album.IdAlbum, Album.Titulo from Album Where Album.Titulo like '%album%';
Select Cancion.IdCancion, Cancion.Cancion from Cancion Where Cancion.Cancion like '%1%';

Select Album.IdAlbum, Album.Titulo, Album.Reseña, Album.FechaCreacion from Album inner join Artista on
Album.Artista_FK = Artista.IdArtista
WHERE Artista.IdArtista = 1 ;


Select Cancion.IdCancion, Cancion.Cancion, Cancion.Album_FK from Cancion inner join Album on
Cancion.Album_FK = Album.IdAlbum where Album.IdAlbum = 1 AND Album.Estado_FK = 1;

select Artista.IdArtista from Artista inner join Album on 
Artista.IdArtista = Album.Artista_FK where Album.IdAlbum = 2;

SELECt * FROM Album;


SElect * from Artista;


<---- Seleccion de artistas por génro

Select Artista.IdArtista, Artista.NombreArtista from Artista 
inner join Artista_Genero on Artista.IdArtista = Artista_Genero.Artista_FK 
inner join Genero on Artista_Genero.Genero_FK = Genero.IdGenero where Genero.Tipo = 'Electronica' AND Artista.Estado_FK = 1;


select * from Artista_Genero;
select * from Genero;

Select * from Cancion;

Select Cancion.Ruta from Cancion where IdCancion = ;


<-- Consultas de Fav & Like -->


Select * from Favorito;
Select * from MeGusta;
select * from Album;
select * from Usuario;


drop table Favorito;
drop table MeGusta;

SELECT MeGusta.Album_FK from MeGusta where MeGusta.Album_FK = 5 and MeGusta.Usuario_FK = 18;

Delete from MeGusta where IdLike = 3 and Usuario_FK = 18 ;

INSERT INTO Favorito(Album_FK) VALUES (5);
INSERT INTO MeGusta(Album_FK) VALUES (4);

SELECT Favorito.Album_FK from Favorito where Favorito.Album_FK = 6 and Usuario_FK = 1;
SELECT MeGusta.Album_FK from MeGusta where MeGusta.Album_FK = 6 and Usuario_FK = 2;


INSERT INTO Favorito(Cancion_FK) VALUES ();



drop table Favorito;
drop table MeGusta;