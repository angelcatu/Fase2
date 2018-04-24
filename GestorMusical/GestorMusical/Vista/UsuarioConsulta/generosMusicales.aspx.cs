using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Media;

public partial class Vista_UsuarioConsulta_generosMusicales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        mostrarGenerosMusicales();
    }


    private void mostrarGenerosMusicales()
    {
        SqlConnection conexion = Conexion.conectar();

        String query = "Select Genero.Tipo from Genero";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridGeneros.DataSource = dt;
        gridGeneros.DataBind();
        conexion.Close();
    }

    protected void gridGeneros_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String genero = gridGeneros.Rows[fila].Cells[1].Text;

        mostrarListaDeArtistasPorGenero(genero);
    }

    private void mostrarListaDeArtistasPorGenero(String genero)
    {
        SqlConnection conexion = Conexion.conectar();

        String query = "Select Artista.IdArtista, Artista.NombreArtista from Artista " +
            "inner join Artista_Genero on Artista.IdArtista = Artista_Genero.Artista_FK " +
            "inner join Genero on Artista_Genero.Genero_FK = Genero.IdGenero where Genero.Tipo = '"+genero+"'  AND Artista.Estado_FK = 1";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridArtistas.DataSource = dt;
        gridArtistas.DataBind();
        conexion.Close();
    }

    protected void gridArtistas_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String artista = gridArtistas.Rows[fila].Cells[1].Text;

        int idArtista = Convert.ToInt32(artista);

        mostrarAlbum(idArtista);
    }
   
    private void mostrarAlbum(int idArtista)
    {
        SqlConnection conexion = Conexion.conectar();

        String query = "Select Album.IdAlbum, Album.Titulo, Album.Reseña, Album.FechaCreacion from Album inner join Artista on " +
            "Album.Artista_FK = Artista.IdArtista " +
            "WHERE Artista.IdArtista =" + idArtista + "AND Album.Estado_FK = 1 ";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridAlbumes.DataSource = dt;
        gridAlbumes.DataBind();
        conexion.Close();
    }

    protected void gridAlbumes_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String album = gridAlbumes.Rows[fila].Cells[1].Text;

        int idAlbum = Convert.ToInt32(album);

        mostrarCanciones(idAlbum);
    }



    private void mostrarCanciones(int idAlbum)
    {
        SqlConnection conexion = Conexion.conectar();

        String query = "Select Cancion.IdCancion, Cancion.Cancion, Cancion.Album_FK from Cancion inner join Album on " +
            "Cancion.Album_FK = Album.IdAlbum where Album.IdAlbum =" + idAlbum + "AND Cancion.Estado_FK = 1";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridCanciones.DataSource = dt;
        gridCanciones.DataBind();
        conexion.Close();
    }

    protected void gridCanciones_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Modificacion modificacion = new Modificacion();

        int fila = e.RowIndex;
        String cancion = gridCanciones.Rows[fila].Cells[1].Text;

        int idCancion = Convert.ToInt32(cancion);

        //Reproducir

        String ruta = modificacion.obtenerRutaCancion(idCancion.ToString());

        reproducir(ruta);
    }

    public static void reproducir(String rutaCancion)
    {
        //SoundPlayer player = new SoundPlayer();
        //player.SoundLocation = rutaCancion;
        //player.Play();


    }
}   