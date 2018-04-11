using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace Musicspot.SQL
{
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
                String accion = "SELECT Contraseña FROM Usuario Where IdUsuario = @username";

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
    }
}

