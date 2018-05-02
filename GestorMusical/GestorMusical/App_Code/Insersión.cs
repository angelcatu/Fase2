using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de Insersión
/// </summary>
public class Insersión
{
    public void registrarUsuario(String nombre, String nacimiento, String correo, String usuario, String password, String estado)
    {
        SqlConnection connection = Conexion.conectar();
        String rol = "Consulta";

        try
        {
            connection.Open();

            String query = "INSERT INTO Usuario (NombreCompleto, FechaNacimiento, CorreoElectronico, Rol, Username, Contraseña, Estado_FK) " +
                "VALUES (@nombre, @nacimiento, @correo, @rol , @usuario, @password, @estado)";

            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@nombre", nombre);
            command.Parameters.AddWithValue("@nacimiento", nacimiento);
            command.Parameters.AddWithValue("@correo", correo);
            command.Parameters.AddWithValue("@rol", rol);
            command.Parameters.AddWithValue("@usuario", usuario);
            command.Parameters.AddWithValue("@password", password);
            command.Parameters.AddWithValue("@estado", estado);


            try
            {
                command.ExecuteNonQuery();
                connection.Close();


            }
            catch (Exception e)
            {

                connection.Close();
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
        }
    }

    public void registarUsuarioAdmin(String nombre, String fecha, String correo, String rol, String user, String pass, String estado)
    {

        {
            SqlConnection connection = Conexion.conectar();

            try
            {
                connection.Open();

                String query = "INSERT INTO Usuario (NombreCompleto, FechaNacimiento, CorreoElectronico, Rol, Username, Contraseña, Estado_FK) " +
                    "VALUES (@nombre, @fecha, @correo, @rol , @user, @pass, @estado)";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@nombre", nombre);
                command.Parameters.AddWithValue("@fecha", fecha);
                command.Parameters.AddWithValue("@correo", correo);
                command.Parameters.AddWithValue("@rol", rol);
                command.Parameters.AddWithValue("@user", user);
                command.Parameters.AddWithValue("@pass", pass);
                command.Parameters.AddWithValue("@estado", estado);


                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {

                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }

    public void registrarGenero(String genero)
    {

        {
            SqlConnection connection = Conexion.conectar();

            try
            {
                connection.Open();

                String query = "INSERT INTO Genero(Tipo) VALUES(@genero)";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@genero", genero);



                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {

                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }

    public void registrarArtista(String nombreArtista, String formacion, String descripcion, String portada, String facebook, String twitter, String youtube, String nacionalidad, String usuario, String estado)
    {
                SqlConnection connection = Conexion.conectar();

                try
                {
                    connection.Open();

                    String query = "INSERT INTO Artista (NombreArtista, AñoFormacion, Descripcion, Fotografia, Facebook, Twitter, Youtube, Nacionalidad_FK, Usuario_FK, Estado_FK) "+
                                "VALUES(@nombreArtista, @formacion, @descripcion, @portada, @facebook, @twitter, @youtube, @nacionalidad, @usuario, @estado)";

                    SqlCommand command = new SqlCommand(query, connection);

                    command.Parameters.AddWithValue("@nombreArtista", nombreArtista);
                    command.Parameters.AddWithValue("@formacion", formacion);                    
                    command.Parameters.AddWithValue("@descripcion", descripcion);
                    command.Parameters.AddWithValue("@portada", portada);                
                    command.Parameters.AddWithValue("@facebook", facebook);
                    command.Parameters.AddWithValue("@twitter", twitter);
                    command.Parameters.AddWithValue("@youtube", youtube);
                    command.Parameters.AddWithValue("@nacionalidad", nacionalidad);
                    command.Parameters.AddWithValue("@usuario", usuario);
                    command.Parameters.AddWithValue("@estado", estado);                    

            try
                    {
                        command.ExecuteNonQuery();
                        connection.Close();


                    }
                    catch (Exception e)
                    {

                        connection.Close();
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.ToString());
                }        
    }

    public void registrarGeneroAArtistas(String artista, String genero)
    {
        
            SqlConnection connection = Conexion.conectar();

            try
            {
                connection.Open();

                String query = "INSERT INTO Artista_Genero(Artista_FK, Genero_FK) VALUES (@artista, @genero);";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@artista", artista);
                command.Parameters.AddWithValue("@genero", genero);



                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {

                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }        
    }

    public void registrarAlbumDeArtista(String titulo, String creacion, String reseña, String portada, String artista, String estado)
    {        
            SqlConnection connection = Conexion.conectar();

            try
            {
                connection.Open();

                String query = "INSERT INTO Album (Titulo, FechaCreacion, Reseña, Portada, Artista_FK, Estado_FK)" +
                    "VALUES(@titulo, @creacion, @reseña, @portada, @artista, @estado)";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@titulo", titulo);
                command.Parameters.AddWithValue("@creacion", creacion);
                command.Parameters.AddWithValue("@reseña", reseña);
                command.Parameters.AddWithValue("@portada", portada);
                command.Parameters.AddWithValue("@artista", artista);
                command.Parameters.AddWithValue("@estado", estado);
                
                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {

                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }        
    }

    public void insertarFavMeGustaAlbum(String nombre, String idAlbum, String peticion, String idUsuario)


    {
        {
            SqlConnection connection = Conexion.conectar();
            try
            {
                connection.Open();

                String query = "";

                if (peticion.Equals("favorito"))
                {
                    query = "INSERT INTO Favorito(Nombre, Tipo, Album_FK, Usuario_FK, Fav) VALUES (@nombre, 'Album', @idAlbum, @idUsuario, @idAlbum)";
                }
                else if (peticion.Equals("like"))
                {
                    query = "INSERT INTO MeGusta(Album_FK, Usuario_FK) VALUES (@idAlbum, @idUsuario)";
                }
               
                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@nombre", nombre);
                command.Parameters.AddWithValue("@idAlbum", idAlbum);
                command.Parameters.AddWithValue("@idUsuario", idUsuario);                ;
                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {
                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }

    public void insertarCancion(String nombre, String estado, String album, String ruta)
    {
        {
            SqlConnection connection = Conexion.conectar();
            try
            {
                connection.Open();

                String query = "INSERT INTO Cancion (Cancion, Estado_FK, Album_FK, Ruta) VALUES (@nombre, @estado, @album, @ruta)";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@nombre", nombre);
                command.Parameters.AddWithValue("@estado", estado);
                command.Parameters.AddWithValue("@album", album);
                command.Parameters.AddWithValue("@ruta", ruta);

                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {

                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }

    public void insertarFavMeGustaCancion(string nombre, string idCancion, string peticion, string idUsuario)
    {
        {
            SqlConnection connection = Conexion.conectar();
            try
            {
                connection.Open();

                String query = "";

                if (peticion.Equals("favorito"))
                {
                    query = "INSERT INTO Favorito(Nombre, Tipo, Cancion_FK, Usuario_FK, Fav) VALUES(@nombre, 'Cancion', @idCancion, @idUsuario, @idCancion)";
                }
                else if (peticion.Equals("like"))
                {
                    query = "INSERT INTO MeGusta(Cancion_FK, Usuario_FK) VALUES (@idCancion, @idUsuario)";
                }

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@nombre", nombre);
                command.Parameters.AddWithValue("@idCancion", idCancion);
                command.Parameters.AddWithValue("@idUsuario", idUsuario);                
                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {
                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }

    public void insertarLista(String nombre, String idUsuario)

    {
        {
            SqlConnection connection = Conexion.conectar();
            try
            {
                connection.Open();

                String query = "INSERT INTO Lista(Nombre, Usuario_FK) VALUES (@nombre, @idUsuario)";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@nombre", nombre);
                command.Parameters.AddWithValue("@idUsuario", idUsuario);                
                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {

                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }

    public void insertarCancionALista(String idCancion, String idLista)


    {
        {
            SqlConnection connection = Conexion.conectar();
            try
            {
                connection.Open();

                String query = "INSERT INTO Cancion_Lista(Cancion_FK, Lista_FK) VALUES (@idCancion, @idLista)";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@idCancion", idCancion);
                command.Parameters.AddWithValue("@idLista", idLista);
                try
                {
                    command.ExecuteNonQuery();
                    connection.Close();


                }
                catch (Exception e)
                {

                    connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }
}
    