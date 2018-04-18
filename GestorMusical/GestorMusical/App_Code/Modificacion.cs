using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de Modificacion
/// </summary>
public class Modificacion
{
   public String mostrarNombre(String id)
    {

        {

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "Select Usuario.NombreCompleto from Usuario Where IdUsuario = @id";

                //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

                //Crear un objeto de tipo SqlCommand y enviar el String

                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@id", id);

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
    }

    public string mostrarRol(string id)
    {
        {

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "Select Usuario.Rol from Usuario Where IdUsuario = @id";

                //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

                //Crear un objeto de tipo SqlCommand y enviar el String

                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@id", id);

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
    }

    public int mostrarEstado(string id)
    {
        {

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "Select Usuario.Estado_FK from Usuario " +
                    "where Usuario.IdUsuario = @id";

                


                //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

                //Crear un objeto de tipo SqlCommand y enviar el String

                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@id", id);

                //Ejecutar Query
                try
                {
                    int estado = comando.ExecuteNonQuery();
                    conexion.Close();

                    return estado;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
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

    public string mostrarContraseña(string id)
    {
        {

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "Select Usuario.Contraseña from Usuario Where IdUsuario = @id";

                //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

                //Crear un objeto de tipo SqlCommand y enviar el String

                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@id", id);

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
    }

    public string mostrarUsuario(string id)
    {
        {

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "Select Usuario.Username from Usuario Where IdUsuario = @id";

                //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

                //Crear un objeto de tipo SqlCommand y enviar el String

                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@id", id);

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
    }

    public string mostrarCorreo(string id)
    {
        {

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "Select Usuario.CorreoElectronico from Usuario Where IdUsuario = @id";

                //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

                //Crear un objeto de tipo SqlCommand y enviar el String

                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@id", id);

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
    }

    public String mostrarDatosArtista(String idUsuario, String peticion)
    {

        {

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = generarConsultaArtista(idUsuario, peticion);
                                
                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@idUsuario", idUsuario);
                

                //Ejecutar Query
                try
                {
                    String estado = "";

                    if (peticion.Equals("nacionalidad") | peticion.Equals("genero"))
                    {
                        int nacGen = Convert.ToInt32(comando.ExecuteNonQuery());
                        estado = nacGen.ToString();
                    }
                    else
                    {
                         estado = (comando.ExecuteScalar()).ToString();
                    }                    
                    conexion.Close();

                    return estado;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                    conexion.Close();
                    return "";
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return "";
            }
        }
    }

    public int mostrarNacionalidadGenero(String idUsuario, String peticion)

    {
       {
            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "";

                if (peticion.Equals("nacionalidad"))
                {
                    accion = "Select Nacionalidad.IdNacionalidad from Nacionalidad inner join Artista ON Nacionalidad.IdNacionalidad = Artista.Nacionalidad_FK " +
                        "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario";


                }
                else if (peticion.Equals("genero"))
                {
                    accion = "Select Artista_Genero.Genero_FK from Artista_Genero inner join Artista ON Artista_Genero.Artista_FK = Artista.IdArtista "+
                        "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario ";
                }




                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@idUsuario", idUsuario);                

                //Ejecutar Query
                try
                {
                                        
                    int nacGen = Convert.ToInt32(comando.ExecuteScalar());                                                               
                    conexion.Close();

                    return nacGen;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
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


    private String generarConsultaArtista(String idUsuario, String peticion)
    {
        String accion = "";

        if (peticion.Equals("nombre"))
        {
            accion = "Select Artista.NombreArtista from Artista " +
            "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario";

        }
        else if (peticion.Equals("debut"))
        {
            accion = "Select Artista.AñoFormacion from Artista " +
            "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario";

        }      
        else if (peticion.Equals("descripcion"))
        {
            accion = "Select Artista.Descripcion from Artista " +
            "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario";

        }
        else if (peticion.Equals("portada"))
        {
            accion = "Select Artista.Fotografia from Artista " +
            "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario";

        }        
        else if (peticion.Equals("facebook"))
        {
            accion = "Select Artista.Facebook from Artista " +
            "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario";
        }
        else if (peticion.Equals("twitter"))
        {
            accion = "Select Artista.Twitter from Artista " +
            "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario";

        }
        else if (peticion.Equals("youtube"))
        {
            accion = "Select Artista.Youtube from Artista " +
            "inner join Usuario ON Artista.Usuario_FK = Usuario.IdUsuario WHERE Usuario.IdUsuario = @idUsuario";

        }

        return accion;
    }

    public String mostrarDatosDeAlbum(String idArtista, String titulo, String peticion)

    {

        {

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = generarConsultaAlbum(idArtista, titulo, peticion);

                SqlCommand comando = new SqlCommand(accion, conexion);

                //Para agregar un parámetro al Where usuario = @username
                comando.Parameters.AddWithValue("@idArtista", idArtista);
                comando.Parameters.AddWithValue("@titulo", titulo);


                //Ejecutar Query
                try
                {                    
                   
                        String estado = (comando.ExecuteScalar()).ToString();                    
                    conexion.Close();

                    return estado;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                    conexion.Close();
                    return "";
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return "";
            }
        }
    }

    private string generarConsultaAlbum(string idArtista, string titulo, string peticion)
    {
        String accion = "";

        if (peticion.Equals("creacion"))
        {
            accion = "Select Album.FechaCreacion from Album inner join Artista on Album.Artista_FK = Artista.IdArtista "+
                "WHERE Artista.IdArtista = @idArtista AND Album.Titulo = @titulo";

        }
        else if (peticion.Equals("reseña"))
        {
            accion = "Select Album.Reseña from Album inner join Artista on Album.Artista_FK = Artista.IdArtista " +
                "WHERE Artista.IdArtista = @idArtista AND Album.Titulo = @titulo";

        }else if (peticion.Equals("portada"))
        {
            accion = "Select Album.Portada from Album inner join Artista on Album.Artista_FK = Artista.IdArtista " +
                "WHERE Artista.IdArtista = @idArtista AND Album.Titulo = @titulo";
        }


        return accion;
    }    
}