using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

    public class Consulta
    {
        public String verificarContraseña(String username)
        {            

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "SELECT Contraseña FROM Usuario Where Username = @username";

                //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

                //Crear un objeto de tipo SqlCommand y enviar el String

                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@username", username);

                //Ejecutar Query
                try
                {
                    String contraseña = (comando.ExecuteScalar()).ToString();
                    conexion.Close();

                    return contraseña;
                }
                catch (Exception e)
                {
                    conexion.Close();
                    return null;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return null;
            }
        }

    public String verificarEstado(String username)
    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "Select Estado.Descripcion from Usuario inner join Estado on Usuario.Estado_FK = Estado.IdEstado where Usuario.Username = @username";

            //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@username", username);

            //Ejecutar Query
            try
            {
                String estado = (comando.ExecuteScalar()).ToString();
                conexion.Close();

                return estado;
            }
            catch (Exception e)
            {
                conexion.Close();
                return null;
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            return null;
        }
    }
    
    public int verificarObtenerIdUsuario(String username, String password)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "SELECT Usuario.IdUsuario from Usuario where Usuario.Username = @username AND Usuario.Contraseña = @password";

            //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@username", username);
            comando.Parameters.AddWithValue("@password", password);
            //Ejecutar Query
            try
            {
                int estado = Convert.ToInt32(comando.ExecuteScalar());
                conexion.Close();

                return estado;
            }
            catch (Exception e)
            {
                conexion.Close();
                return 0;
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            return 0;
        }
    }

    public String verificarRolUsuario(String idUsuario)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "Select Usuario.Rol from Usuario where Usuario.IdUsuario = @idUsuario";            

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idUsuario", idUsuario);

            //Ejecutar Query
            try
            {
                String rol = (comando.ExecuteScalar()).ToString();
                conexion.Close();

                return rol;
            }
            catch (Exception e)
            {
                conexion.Close();
                return null;
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            return null;
        }
    }

    public int obtenerUsuarioAsociadoAArtista(String idUsuario)
    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "Select Artista.IdArtista from Artista inner join Usuario on Artista.Usuario_FK = Usuario.IdUsuario " +
                "where Usuario.IdUsuario = @idUsuario";

            //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idUsuario", idUsuario);            
            //Ejecutar Query
            try
            {
                int estado = Convert.ToInt32(comando.ExecuteScalar());
                conexion.Close();

                return estado;
            }
            catch (Exception e)
            {
                conexion.Close();
                return 0;
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            return 0;
        }
    }

    public int obtenerIdAlbumDeArtista(String idArtista, String album)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "SELECT Album.IdAlbum from Album INNER JOIN Artista ON Album.Artista_FK = Artista.IdArtista " +
                "WHERE Artista.IdArtista = @idArtista AND Album.Titulo = @album ";
            
            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idArtista", idArtista);
            comando.Parameters.AddWithValue("@album", album);
            //Ejecutar Query
            try
            {
                int idAlbum = Convert.ToInt32(comando.ExecuteScalar());
                conexion.Close();

                return idAlbum;
            }
            catch (Exception e)
            {
                conexion.Close();
                return 0;
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            return 0;
        }
    }

    public int obtenerIdAlbumModificarArtista(String idArtista, String artista)


    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "SELECT Album.IdAlbum from Album INNER JOIN Artista ON Album.Artista_FK = Artista.IdArtista "+
                "WHERE Artista.IdArtista = @idArtista AND Artista.NombreArtista = @artista";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idArtista", idArtista);
            comando.Parameters.AddWithValue("@artista", artista);
            //Ejecutar Query
            try
            {
                int idAlbum = Convert.ToInt32(comando.ExecuteScalar());
                conexion.Close();

                return idAlbum;
            }
            catch (Exception e)
            {
                conexion.Close();
                return 0;
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            return 0;
        }
    }


    public int obtenerIdListaActual(String nombreDeLista)
    {        
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "select Lista.IdLista from Lista where Lista.Nombre = @nombreDeLista";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@nombreDeLista", nombreDeLista);            
            //Ejecutar Query
            try
            {
                int idLista = Convert.ToInt32(comando.ExecuteScalar());
                conexion.Close();

                return idLista;
            }
            catch (Exception e)
            {
                conexion.Close();
                return 0;
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            return 0;
        }
    }
}


