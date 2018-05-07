using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_UsuarioConsulta_novedades : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        mostrarNovedades();
    }

    private void mostrarNovedades()
    {
        SqlConnection conexion = Conexion.conectar();

        String query = "Select Novedad.TituloDePortada as Titulo, Novedad.Contenido as Noticia, Novedad.FotoPortada as Portada from Novedad";

        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridNoticias.DataSource = dt;
        gridNoticias.DataBind();
        conexion.Close();
    }
}