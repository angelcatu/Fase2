using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Vista_Administrar_consultarAlbum : System.Web.UI.Page
{ 
    private Usuario usuario = UserConnect.usuario;

    protected void Page_Load(object sender, EventArgs e)
    {
        mostrarAlbumesDeArtista();
    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {

    }    

    private void mostrarAlbumesDeArtista()
    {
        SqlConnection conexion = Conexion.conectar();

        String query = "Select Album.IdAlbum, Album.Titulo, Album.FechaCreacion AS Eliminacion, Artista.NombreArtista AS Artista from Album "+
                    "inner join Artista on Album.Artista_FK = Artista.IdArtista " +
                    "Where Album.Estado_FK = 2";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();
        conexion.Close();
    }

    private void mostrarCancionesDeAlbum(int idAlbum)
    {
        SqlConnection conexion = Conexion.conectar();        

        String query = "Select Cancion.Cancion from Cancion "+
            "inner join Album on Cancion.Album_FK = Album.IdAlbum "+
            "where Cancion.Estado_FK = 2 AND Album.IdAlbum = " + idAlbum;


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridCanciones.DataSource = dt;
        gridCanciones.DataBind();
        conexion.Close();
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String res = GridView1.Rows[fila].Cells[1].Text;

        int idAlbum = Convert.ToInt32(res);

        mostrarCancionesDeAlbum(idAlbum);
    }
}