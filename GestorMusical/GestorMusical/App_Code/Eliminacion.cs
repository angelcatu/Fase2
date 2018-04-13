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
}