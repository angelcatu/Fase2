using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de Eliminacion
/// </summary>
public class Eliminacion
{
    public void eliminarUsuario(String cod)
    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "DELETE FROM Usuario WHERE IdUsuario = @cod";
            
            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@cod", cod);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();

                
            }
            catch (Exception e)
            {
                conexion.Close();
                
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            
        }
    }


    public void eliminarArtista(String idUsuario, String idArtista, String idAlbum, String nombreArtista, String fechaActual)
    {
        //Poner en estado eliminado la canción, album y el artista
        eliminarCancion(nombreArtista);
        darDeBajaAlbum(idArtista, fechaActual);        
        eliminarArtista(idUsuario, fechaActual);        
    }

    private void eliminarArtista(string idUsuario, String fechaActual)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "UPDATE Artista SET Estado_FK = 2, Eliminacion = @fechaActual WHERE Usuario_FK = @idUsuario";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idUsuario", idUsuario);
            comando.Parameters.AddWithValue("@fechaActual", fechaActual);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    private void eliminarArtistaGenero(string idArtista)
    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "DELETE FROM Artista_Genero WHERE Artista_Genero.Artista_FK = @idArtista";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idArtista", idArtista);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    private void darDeBajaAlbum(String idArtista, String fechaActual)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "UPDATE Album SET Estado_FK = 2, Eliminacion = @fechaActual WHERE Artista_FK = @idArtista";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idArtista", idArtista);
            comando.Parameters.AddWithValue("@fechaActual", fechaActual);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    private void eliminarCancion(String nombreArtista)
    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "UPDATE Cancion SET Estado_FK = 2 FROM Cancion inner join Album ON Album.IdAlbum = Cancion.Album_FK " + 
                "inner join Artista ON Album.Artista_FK = Artista.IdArtista " +
                "WHERE Artista.NombreArtista = @nombreArtista";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@nombreArtista", nombreArtista);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    public void eliminarDeLista(string idCancion)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña

            String accion = "Delete from Cancion_Lista where Cancion_Lista.Cancion_FK = @idCancion";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idCancion", idCancion);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    public void eliminarDeMegusta(string idCancion)
    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña

            String accion = "Delete from MeGusta where MeGusta.Cancion_FK = @idCancion";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idCancion", idCancion);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    public void eliminarDeFavorito(string idCancion)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña

            String accion = "Delete from Favorito where Favorito.Cancion_FK = @idCancion";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idCancion", idCancion);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    public void eliminarCancionDefinitivo(String idCancion)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña

            String accion = "DELETE FROM Cancion where Cancion.IdCancion = @idCancion";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idCancion", idCancion);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el usuario");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    public void eliminarAlbumConCanciones(String idAlbum, String eliminacion)
    {
        eliminarCancionDeAlbum(idAlbum);
        eliminarAlbum(idAlbum, eliminacion);
    }

    private void eliminarCancionDeAlbum(String idAlbum)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "DELETE FROM Cancion where Album_FK = @idAlbum";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idAlbum", idAlbum);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el la cancion");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }

    private void eliminarAlbum(String idAlbum, String eliminacion)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña

            String accion = "Update Album set Estado_FK = 2, Eliminacion = @eliminacion where Album.IdAlbum = @idAlbum ";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idAlbum", idAlbum);
            comando.Parameters.AddWithValue("@eliminacion", eliminacion);

            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
                Console.WriteLine("Se eliminó correctamente el album");
                conexion.Close();


            }
            catch (Exception e)
            {
                conexion.Close();

            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());

        }
    }


}