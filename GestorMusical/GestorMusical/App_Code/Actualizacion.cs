using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de Actualizacion
/// </summary>
public class Actualizacion
{
   
      public void actualizarUsuario(String id, String nombre, String correo, String usuario, String pass, String rol, String estado){            

            //Crear un objeto de tipo conexión
            SqlConnection conexion = Conexion.conectar();

            try
            {
                //Abrir la conexion
                conexion.Open();

                //Consulta sql para obtener la contraseña
                String accion = "UPDATE Usuario SET NombreCompleto = @nombre, CorreoElectronico = @correo, " +
                "Rol = @rol, Username = @usuario, Estado_FK = @estado WHERE Usuario.IdUsuario = @id" ;

    //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

    //Crear un objeto de tipo SqlCommand y enviar el String

    SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@id", id);
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@correo", correo);
            comando.Parameters.AddWithValue("@rol", rol);
            comando.Parameters.AddWithValue("@usuario", usuario);
            comando.Parameters.AddWithValue("@estado", estado);


            //Ejecutar Query
            try
                {
                comando.ExecuteNonQuery();
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

      public void actualizarArtista(String idArtista, String nombre, String formacion, String descripcion, String portada, String facebook, String twitter, String youtube, String pais, String usuario, String estado )
    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "UPDATE Artista SET NombreArtista = @nombre, AñoFormacion = @formacion, " +
            "Descripcion = @descripcion, Fotografia = @portada, Facebook = @facebook, Twitter = @twitter, Youtube = @youtube, " +
            "Nacionalidad_FK = @pais, Usuario_FK = @usuario, Estado_FK = @estado WHERE Artista.IdArtista = @idArtista";            

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idArtista", idArtista);
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@formacion", formacion);
            comando.Parameters.AddWithValue("@descripcion", descripcion);
            comando.Parameters.AddWithValue("@portada", portada);
            comando.Parameters.AddWithValue("@facebook", facebook);
            comando.Parameters.AddWithValue("@twitter", twitter);
            comando.Parameters.AddWithValue("@youtube", youtube);
            comando.Parameters.AddWithValue("@pais", pais);
            comando.Parameters.AddWithValue("@usuario", usuario);
                comando.Parameters.AddWithValue("@estado", estado);


            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
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

    public void actualizarGeneroArtista(String idArtista, String idGenero)
    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "UPDATE Artista_Genero SET Genero_FK = @idGenero WHERE Artista_FK = @idArtista";

            //select * from login where IdUsuario =‘buhoos’ and PWDCOMPARE(‘12345678’, contrasenia)= 1

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idGenero", idGenero);
            comando.Parameters.AddWithValue("@idArtista", idArtista);            
            //Ejecutar Query
            try
            {
                comando.ExecuteNonQuery();
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
