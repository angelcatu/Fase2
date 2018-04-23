using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Vista_UsuarioConsulta_verListas : System.Web.UI.Page
{
    private Usuario usuario = UserConnect.usuario;

    protected void Page_Load(object sender, EventArgs e)
    {
        verTusListas();
    }

    private void verTusListas()
    {
        SqlConnection conexion = Conexion.conectar();        

        String query = "Select Lista.Nombre, Count(Cancion_Lista.Cancion_FK) as Canciones from Lista "+
                        "inner join Cancion_Lista on Lista.IdLista = Cancion_Lista.Lista_FK "+
                        "where Lista.Usuario_FK = "+usuario.getId()+" group by Lista.Nombre ";


        SqlCommand command = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridTusListas.DataSource = dt;
        gridTusListas.DataBind();
        conexion.Close();
    }


}