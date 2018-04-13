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
}