﻿using System;
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


    public void eliminarArtista(String idUsuario, String idArtista, String idAlbum, String nombreArtista)
    {
        //Poner en estado eliminado la canción, album y el artista
        eliminarCancion(nombreArtista);
        darDeBajaAlbum(idArtista);        
        eliminarArtista(idUsuario);        
    }

    private void eliminarArtista(string idUsuario)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "UPDATE Artista SET Estado_FK = 2 WHERE Usuario_FK = @idUsuario";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idUsuario", idUsuario);

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

    private void darDeBajaAlbum(String idArtista)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "UPDATE Album SET Estado_FK = 2 WHERE Artista_FK = @idArtista";

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

    public void eliminarAlbumConCanciones(String idAlbum)
    {
        eliminarCancionDeAlbum(idAlbum);
        eliminarAlbum(idAlbum);
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

    private void eliminarAlbum(String idAlbum)

    {

        //Crear un objeto de tipo conexión
        SqlConnection conexion = Conexion.conectar();

        try
        {
            //Abrir la conexion
            conexion.Open();

            //Consulta sql para obtener la contraseña
            String accion = "DELETE FROM Album where Album.IdAlbum = @idAlbum";

            //Crear un objeto de tipo SqlCommand y enviar el String

            SqlCommand comando = new SqlCommand(accion, conexion);

            //Para agregar un parámetro al Where usuario = @username
            comando.Parameters.AddWithValue("@idAlbum", idAlbum);

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