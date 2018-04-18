USE [Fase2-Proyecto]
GO

Select * from Usuario;
Select * from Artista;
Select * from Album;
Select * from Cancion;


UPDATE Cancion SET Estado_FK = 1 WHERE Album_FK = 1; 
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

Select Album.Rese�a from Album inner join Artista on Album.Artista_FK = Artista.IdArtista
WHERE Artista.IdArtista = 1 AND Album.Titulo = 'Album3' ;

Select Album.Portada from Album inner join Artista on Album.Artista_FK = Artista.IdArtista
WHERE Artista.IdArtista = 1 AND Album.Titulo = 'Album3' ;

Select Album.Titulo from Album inner join Artista on Album.Artista_FK = Artista.IdArtista
WHERE Artista.IdArtista = 1 AND Album.Titulo = 'Album3' ;




