USE [Fase2-Proyecto]
GO

CREATE TABLE Usuario(

IdUsuario INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
NombreCompleto VARCHAR(50) NOT NULL,
FechaNacimiento DATE NOT NULL,
CorreoElectronico VARCHAR(50) NOT NULL, 
Rol VARCHAR(20) NOT NULL,
Username VARCHAR(20) NOT NULL,
Contraseña VARCHAR(50) NOT NULL,

Estado_FK INT NOT NULL,
CONSTRAINT IdEstadoUsuario_FK FOREIGN KEY(Estado_FK) REFERENCES Estado(IdEstado),

);




	

SELECT Usuario.IdUsuario, Usuario.NombreCompleto, Usuario.CorreoElectronico, Usuario.FechaNacimiento, Usuario.Rol, Usuario.Username, Estado.Descripcion 
FROM Usuario inner join Estado on Usuario.Estado_FK = Estado.IdEstado WHERE Usuario.IdUsuario != 1
group by Usuario.IdUsuario, Usuario.NombreCompleto, Usuario.CorreoElectronico, Usuario.FechaNacimiento, Usuario.Rol, Usuario.Username, Estado.Descripcion ;

insert into Usuario(NombreCompleto, FechaNacimiento, CorreoElectronico, Rol, Username, Contraseña, Estado_FK) 
values('Angel', '1994-07-24', 'angel@gmail.com', 'Administrador', 'Administrador', 'IPC2', 1);

insert into Usuario(NombreCompleto, FechaNacimiento, CorreoElectronico, Rol, Username, Contraseña, Estado_FK)
values ('Usuario8', '2018/04/13', 'user8@gmail.com', 'Consulta', 'User8', '123', 2);

Select Usuario.Contraseña from Usuario where IdUsuario = 1;

UPDATE Usuario SET NombreCompleto='Angel', FechaNacimiento='04/04/2018', CorreoElectronico = 'admin@gmail.com', 
Rol = 'Administrador', Username = 'AdministradorP'   where Usuario.IdUsuario = 1; 

Select Estado.Descripcion from Usuario inner join Estado on Usuario.Estado_FK = Estado.IdEstado where Usuario.Username = 'Administrador';

Select Estado.Descripcion from Usuario inner join Estado on Usuario.Estado_FK = Estado.IdEstado where Usuario.IdUsuario = 2;
Select Usuario.Estado_FK from Usuario where Usuario.IdUsuario = 2;

select * from Estado ;

Select * from Usuario;

SELECT Usuario.NombreCompleto, Usuario.Username, Usuario.FechaNacimiento, Estado.Descripcion from Usuario inner join Estado on Usuario.Estado_FK = Estado.IdEstado
WHERE Usuario.Rol = 'Consulta' GROUP BY Usuario.NombreCompleto, Usuario.Username, Usuario.FechaNacimiento, Estado.Descripcion;


Select * from Estado;

Delete from Usuario where IdUsuario = 4;


drop table Usuario;
drop table Artista;
drop table Album;
drop table Cancion;
drop table Cancion_Lista;
drop table Artista_Genero;
drop table Lista;


CREATE TABLE Estado(

IdEstado INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Descripcion VARCHAR(20) NOT NULL,

);

INSERT INTO Estado(Descripcion) VALUES('Activo');
INSERT INTO Estado(Descripcion) VALUES('Eliminado');

CREATE TABLE Artista(

IdArtista INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
NombreArtista VARCHAR(30) NOT NULL,
AñoFormacion VARCHAR (4) NOT NULL,
Descripcion VARCHAR(240) NOT NULL,
Fotografia VARCHAR(30) NOT NULL,
Facebook VARCHAR(100) NULL,
Twitter VARCHAR(100) NULL,
Youtube VARCHAR(100) NULL,

Nacionalidad_FK INT NOT NULL,
CONSTRAINT IdNacionalidadArtista_FK FOREIGN KEY(Nacionalidad_FK) REFERENCES Nacionalidad(IdNacionalidad),

Usuario_FK INT NOT NULL,
CONSTRAINT IdUsuario_FK FOREIGN KEY(Usuario_FK) REFERENCES Usuario(IdUsuario),

Estado_FK INT NOT NULL,
CONSTRAINT IdEstado_FK FOREIGN KEY(Estado_FK) REFERENCES Estado(IdEstado)
);


INSERT INTO Artista (NombreArtista, AñoFormacion, Descripcion, Fotografia, Facebook, Twitter, Youtube, Nacionalidad_FK, Usuario_FK)
VALUES ('Joe Satriani', '1996', 'Guitarrista muy famoso', '-/Imagenes', null, null, 'you.tr1231S', 2, 2);


ALTER TABLE Artista ADD Estado VARCHAR(100) CONSTRAINT IdUsuario_FK FOREIGN KEY(Usuario_FK) REFERENCES Usuario(IdUsuario) NOT NULL;

Select * from Artista;

Select Artista.NombreArtista, Artista.Descripcion, Nacionalidad.Pais, Usuario.NombreCompleto from Artista 
inner join Usuario on Artista.Usuario_FK = Usuario.IdUsuario 
inner join Nacionalidad on Artista.Nacionalidad_FK = Nacionalidad.IdNacionalidad 
group by Artista.NombreArtista, Artista.Descripcion, Nacionalidad.Pais, Usuario.NombreCompleto;

Select Artista.IdArtista from Artista inner join Usuario on Artista.Usuario_FK = Usuario.IdUsuario;


Select*from Artista;
Select*from Artista_Genero;
Select*from Nacionalidad;
Select*from Usuario;
Select*from Genero;

CREATE TABLE Artista_Genero(

IdArtistaGenero INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

Artista_FK INT NOT NULL,
CONSTRAINT IdArtista_FK FOREIGN KEY(Artista_FK) REFERENCES Artista(IdArtista),

Genero_FK INT NOT NULL,
CONSTRAINT IdGenero_FK FOREIGN KEY(Genero_FK) REFERENCES Genero(IdGenero),

);


Select * from Artista_Genero

INSERT INTO Artista_Genero(Artista_FK, Genero_FK) VALUES (1, 2);



CREATE TABLE Genero(
IdGenero INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Tipo VARCHAR(20) NOT NULL,
);


Select * from Genero;



INSERT INTO Genero (Tipo) VALUES('Rock');
INSERT INTO Genero (Tipo) VALUES('Pop');
INSERT INTO Genero (Tipo) VALUES('Metal');
INSERT INTO Genero (Tipo) VALUES('Electronica');
INSERT INTO Genero (Tipo) VALUES('Blues');
INSERT INTO Genero (Tipo) VALUES('Funk');
INSERT INTO Genero (Tipo) VALUES('Hip hop');
INSERT INTO Genero (Tipo) VALUES('Jazz');
INSERT INTO Genero (Tipo) VALUES('Rap');
INSERT INTO Genero (Tipo) VALUES('Reggae');
INSERT INTO Genero (Tipo) VALUES('Clasica');
INSERT INTO Genero (Tipo) VALUES('Dance');

SELECT * FROM Genero;

Delete from Genero where Genero.IdGenero = 26;

CREATE TABLE Album(

IdAlbum INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Titulo VARCHAR(20) NOT NULL,
FechaCreacion DATE NOT NULL,
Reseña VARCHAR(240) NULL,
Portada VARCHAR(30) NOT NULL,

Artista_FK INT NOT NULL,
CONSTRAINT IdArtistaAlbum_FK FOREIGN KEY(Artista_FK) REFERENCES Artista(IdArtista),

Estado_FK INT NOT NULL,
CONSTRAINT IdEstadoAlbum_FK FOREIGN KEY(Estado_FK) REFERENCES Estado(IdEstado),

);


INSERT INTO Album (Titulo, FechaCreacion, Reseña, Portada, Artista_FK, Estado_FK) 
VALUES('Unstappable', '2013/05/20', 'Disco de oro de Joe Satriani', '/Imagenes/2.png', 4, 1) ;
Select * from Album;

Select Artista.IdArtista from Artista inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario where Usuario.IdUsuario = 11;
Select Artista.IdArtista, Artista.NombreArtista from Artista inner join Usuario on Artista.Usuario_FK = 11;

Select * from Usuario;

Select Artista.NombreArtista from Artista inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = 13;

Select Artista.AñoFormacion from Artista inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = 13;


Select Nacionalidad.IdNacionalidad from Nacionalidad inner join Artista ON Nacionalidad.IdNacionalidad = Artista.Nacionalidad_FK 
inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = 16;

Select Genero.Tipo from Artista inner join Artista_Genero ON Artista.IdArtista = Artista_Genero.Artista_FK 
inner join Genero ON Artista_Genero.Genero_FK = Genero.IdGenero
inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = 16;


Select Genero.IdGenero from Genero inner join Artista_Genero ON Genero.IdGenero = Artista_Genero.Genero_FK 
inner join Artista ON Artista_Genero.Artista_FK = Artista.IdArtista 
inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = 16;

Select Artista_Genero.Genero_FK from Artista_Genero inner join Artista ON Artista_Genero.Artista_FK = Artista.IdArtista
inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = 16;



DELETE FROM Artista WHERE Artista.Usuario_FK = 17;
DELETE FROM Artista_Genero WHERE Artista_Genero.Artista_FK = 7;
DELETE FROM Album WHERE Album.Artista_FK = 7;
DELETE FROM Cancion WHERE Cancion.Album_FK = 5;





SELECT * FROM Artista_Genero;
Select * from Artista;
Select * from Album;
Select * from Cancion;
Select * from Genero;
Select * from Usuario;

CREATE TABLE Cancion(

IdCancion INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Cancion VARCHAR(50) NOT NULL,

Ruta VARCHAR(100) NOT NULL,

Estado_FK INT NOT NULL,
CONSTRAINT IdEstadoCancion_FK FOREIGN KEY(Estado_FK) REFERENCES Estado(IdEstado),

Album_FK INT NOT NULL,
CONSTRAINT IdAlbumCancion_FK FOREIGN KEY(Album_FK) REFERENCES Album(IdAlbum),
);

SELECT*FROM Usuario;
SELECT*FROM Artista;
SELECT*FROM Album;
SELECT*FROM Cancion;

ALTER TABLE Cancion ADD Ruta VARCHAR(100) NOT NULL;

INSERT INTO Cancion (Cancion, Estado_FK, Album_FK, Ruta) VALUES ('Cancion1', 1, 1, '/Canciones/cancion1'); 

SELECT Album.IdAlbum from Artista inner join Album ON Artista.IdArtista = Album.Artista_FK WHERE Artista.IdArtista = 6 And Album.Titulo = 'Album2';


CREATE TABLE Cancion_Lista(

IdCancionLista INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

Cancion_FK INT NOT NULL,
Lista_FK INT NOT NULL,

CONSTRAINT IdCancionCancion_Lista_FK FOREIGN KEY(Cancion_FK) REFERENCES Cancion(IdCancion),
CONSTRAINT IdListaCancion_Lista_FK FOREIGN KEY(Lista_FK) REFERENCES Lista(IdLista),

);


CREATE TABLE Lista(

IdLista INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Nombre VARCHAR(30) NOT NULL,

Usuario_FK INT NOT NULL,
CONSTRAINT IdUsuarioLista FOREIGN KEY(Usuario_FK) REFERENCES Usuario(IdUsuario),


);

CREATE TABLE Nacionalidad(

IdNacionalidad INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

Pais VARCHAR(20) NOT NULL


);

INSERT INTO Nacionalidad (Pais) VALUES('Argentina');
INSERT INTO Nacionalidad (Pais) VALUES('Bolivia');
INSERT INTO Nacionalidad (Pais) VALUES('Brasil');
INSERT INTO Nacionalidad (Pais) VALUES('Chile');
INSERT INTO Nacionalidad (Pais) VALUES('Colombia');
INSERT INTO Nacionalidad (Pais) VALUES('Costa Rica');
INSERT INTO Nacionalidad (Pais) VALUES('Cuba');
INSERT INTO Nacionalidad (Pais) VALUES('Ecuador');
INSERT INTO Nacionalidad (Pais) VALUES('El Salvador');
INSERT INTO Nacionalidad (Pais) VALUES('Guatemala');
INSERT INTO Nacionalidad (Pais) VALUES('Honduras');
INSERT INTO Nacionalidad (Pais) VALUES('Jamaica');
INSERT INTO Nacionalidad (Pais) VALUES('Mexico');
INSERT INTO Nacionalidad (Pais) VALUES('Nicaragua');
INSERT INTO Nacionalidad (Pais) VALUES('Panama');
INSERT INTO Nacionalidad (Pais) VALUES('Paraguay');
INSERT INTO Nacionalidad (Pais) VALUES('Peru');
INSERT INTO Nacionalidad (Pais) VALUES('Puerto Rico');
INSERT INTO Nacionalidad (Pais) VALUES('Republica Dominicana');
INSERT INTO Nacionalidad (Pais) VALUES('Uruguay');
INSERT INTO Nacionalidad (Pais) VALUES('Venezuela');



SELECT Contraseña FROM Usuario Where IdUsuario = 1;
