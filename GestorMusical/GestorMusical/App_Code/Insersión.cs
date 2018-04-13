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
}
    