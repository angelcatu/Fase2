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

CREATE TABLE Novedad(

IdNovedad INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
TituloDePortada VARCHAR(100) NOT NULL,
Contenido VARCHAR(240) NOT NULL,
FotoPortada VARCHAR(120) NOT NULL,

Usuario_FK INT NOT NULL,
CONSTRAINT IdUsuarioNovedad_FK FOREIGN KEY(Usuario_FK) REFERENCES Usuario(IdUsuario),

);

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
CONSTRAINT IdEstado_FK FOREIGN KEY(Estado_FK) REFERENCES Estado(IdEstado),

Eliminacion VARCHAR(30) NULL,
);



CREATE TABLE Artista_Genero(

IdArtistaGenero INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

Artista_FK INT NOT NULL,
CONSTRAINT IdArtista_FK FOREIGN KEY(Artista_FK) REFERENCES Artista(IdArtista),

Genero_FK INT NOT NULL,
CONSTRAINT IdGenero_FK FOREIGN KEY(Genero_FK) REFERENCES Genero(IdGenero),

);




CREATE TABLE Genero(
IdGenero INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Tipo VARCHAR(20) NOT NULL,
);






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


CREATE TABLE Comentario(

IdComentario INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

Comentario VARCHAR(240),

Usuario_FK INT NOT NULL,
CONSTRAINT IdComentarioUsuario_FK FOREIGN KEY(Usuario_FK) REFERENCES Usuario(IdUsuario),

Album_FK INT NOT NULL,
CONSTRAINT IdComentarioAlbum_FK FOREIGN KEY(Album_FK) REFERENCES Album(IdAlbum),

);

Select * from Comentario;


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

Eliminacion VARCHAR(30) NULL,

);

Select * from Album;

select Artista.IdArtista from Artista inner join Album on Artista.IdArtista = Album.Artista_FK where Album.IdAlbum = 5;

					

CREATE TABLE Cancion(

IdCancion INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Cancion VARCHAR(50) NOT NULL,

Ruta VARCHAR(100) NOT NULL,

Estado_FK INT NOT NULL,
CONSTRAINT IdEstadoCancion_FK FOREIGN KEY(Estado_FK) REFERENCES Estado(IdEstado),

Album_FK INT NOT NULL,
CONSTRAINT IdAlbumCancion_FK FOREIGN KEY(Album_FK) REFERENCES Album(IdAlbum),
);

CREATE TABLE Favorito(

IdFavorito INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

Nombre VARCHAR (100) NOT NULL,
Tipo VARCHAR(20) NOT NULL,

Album_FK INT NULL,
CONSTRAINT IdAlbum_FK FOREIGN KEY(Album_FK) REFERENCES Album(IdAlbum),

Cancion_FK INT NULL,
CONSTRAINT IdCancionFavorito_FK FOREIGN KEY(Cancion_FK) REFERENCES Cancion(IdCancion),

Usuario_FK INT NOT NULL,
CONSTRAINT IdUsuarioFavorito FOREIGN KEY(Usuario_FK) REFERENCES Usuario(IdUsuario),

Fav INT NOT NULL,

);

drop table Favorito;
drop table MeGusta;

CREATE TABLE MeGusta(
IdLike INT NOT NULL IDENTITY(1,1) PRIMARY KEY,

Album_FK INT NULL,
CONSTRAINT IdAlbumMeGusta_FK FOREIGN KEY(Album_FK) REFERENCES Album(IdAlbum),

Cancion_FK INT NULL,
CONSTRAINT IdCancionMeGusta_FK FOREIGN KEY(Cancion_FK) REFERENCES Cancion(IdCancion),

Usuario_FK INT NOT NULL,
CONSTRAINT IdUsuarioMeGusta_FK FOREIGN KEY(Usuario_FK) REFERENCES Usuario(IdUsuario),
);








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

select * from Usuario;
select * from Artista;
select * from Album;
select * from Cancion;
