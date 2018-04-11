using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de Conexion
/// </summary>
/// 


    public class Conexion
    {
        //Conexión a la base de datos        
        private static SqlConnection conexion = new SqlConnection(
            "Data Source = DESKTOP-65QBF79\\angeldb; Initial Catalog=Fase2-Proyecto; Integrated Security = true");

        //Metodo para conectarse a la base de datos;
        public static SqlConnection conectar()
        {
            return conexion;
        }

        //Para sql Commands
        public SqlCommand hacerConsulta(String instruccion)
        {
            SqlCommand comando = new SqlCommand(instruccion, conexion);
            return comando;
        }
    }

    




