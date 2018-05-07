using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_UsuarioConsulta_favoritos : System.Web.UI.Page
{
    Usuario usuario = UserConnect.usuario;

    protected void Page_Load(object sender, EventArgs e)
    {
        mostrarTusFavoritos();
    }

    private void mostrarTusFavoritos()
    {        
        SqlConnection conexion = Conexion.conectar();


        String query = "Select Favorito.Nombre from Favorito where Usuario_FK = " + usuario.getId();


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridFavoritos.DataSource = dt;
        gridFavoritos.DataBind();
        conexion.Close();
    }
}