using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Vista_UsuarioConsulta_tendencias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gridArtistaInf.Visible = false;
        gridTopCanciones.Visible = false;
        gridAlbumesPop.Visible = false;
    }

    protected void btnArtistaInfluyente_Click(object sender, ImageClickEventArgs e)
    {
        mostrarArtistasInfluyentes();
    }

    private void mostrarArtistasInfluyentes()
    {
        gridArtistaInf.Visible = true;

        SqlConnection conexion = Conexion.conectar();

        String query = "Select IdArtista, Artista.NombreArtista, Count(Artista.NombreArtista) as Cantidad_de_MeGusta from Artista "+
                    "inner join Album on Artista.IdArtista = Album.Artista_FK "+
                    "inner join Cancion on Album.IdAlbum = Cancion.Album_FK "+
                    "inner join MeGusta on Cancion.IdCancion = MeGusta.Cancion_FK "+
                    "group by Artista.IdArtista, Artista.NombreArtista order by Cantidad_de_MeGusta desc ";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridArtistaInf.DataSource = dt;
        gridArtistaInf.DataBind();
        conexion.Close();
    }

    protected void gridArtistaInf_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String id = gridArtistaInf.Rows[fila].Cells[1].Text;


        mostrarTopCanciones(Convert.ToInt32(id));
    }

    private void mostrarTopCanciones(int idArtista)
    {
        gridTopCanciones.Visible = true;
        gridArtistaInf.Visible = true;
        SqlConnection conexion = Conexion.conectar();


        String query = "Select Cancion.Cancion, Count(MeGusta.Cancion_FK) as me_gusta from Cancion "+
                    "inner join Album on Cancion.Album_FK = Album.IdAlbum "+
                    "inner join Artista on Album.Artista_FK = Artista.IdArtista "+
                    "inner join MeGusta on Cancion.IdCancion = MeGusta.Cancion_FK "+
                    "where Artista.IdArtista = " + idArtista +
                    "group by Cancion.Cancion, MeGusta.Cancion_FK order by me_gusta desc ";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridTopCanciones.DataSource = dt;
        gridTopCanciones.DataBind();
        conexion.Close();
    }

    protected void btnAlbumPopular_Click(object sender, ImageClickEventArgs e)
    {
        mostrarAlbumesPop();
    }

    private void mostrarAlbumesPop()
    {

        gridAlbumesPop.Visible = true;        
        SqlConnection conexion = Conexion.conectar();


        String query = "Select  Album.Titulo, Count(MeGusta.Album_FK) as MeGustaPorAlbum from Album " +
                    "inner join MeGusta on Album.IdAlbum = MeGusta.Album_FK "+
                    "group by Album.Titulo, MeGusta.Album_FK order by MeGustaPorAlbum desc";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridAlbumesPop.DataSource = dt;
        gridAlbumesPop.DataBind();
        conexion.Close();
    }
}