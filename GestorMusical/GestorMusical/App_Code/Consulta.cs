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
    
    }


