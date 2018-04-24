using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Vista_UsuarioConsulta_iniciar : System.Web.UI.Page
{
    private Usuario usuario = UserConnect.usuario;
    private Modificacion modificacion = new Modificacion();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {

        if(txtBusqueda.Text.Length > 0)
        {
            buscarCoincidencias(txtBusqueda.Text);
        }        
    }

    private void buscarCoincidencias(String busqueda)
    {
        buscarArtista(busqueda);
        buscarAlbum(busqueda);
        buscarCancion(busqueda);
    }

    private void buscarArtista(String artista)
    {
        lbArtista.Visible = true;

        SqlConnection conexion = Conexion.conectar();

        String query = "Select Artista.IdArtista, Artista.NombreArtista from Artista Where Artista.NombreArtista like '%"+artista+"%'" +
            " AND Artista.Estado_FK = 1";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridResultArtista.DataSource = dt;
        gridResultArtista.DataBind();
        conexion.Close();
    }

    private void buscarAlbum(String album)
    {
        lbAlbumes.Visible = true;

        SqlConnection conexion = Conexion.conectar();

        String query = "Select Album.IdAlbum, Album.Titulo from Album Where Album.Titulo like '%"+album+"%'" +
            " AND Album.Estado_FK = 1";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridResultAlbum.DataSource = dt;
        gridResultAlbum.DataBind();
        conexion.Close();
    }

    private void buscarCancion(String cancion)
    {
        lbCanciones.Visible = true;

        SqlConnection conexion = Conexion.conectar();

        String query = "Select Cancion.IdCancion, Cancion.Cancion from Cancion Where Cancion.Cancion like '%"+cancion+"%'" +
            " AND Cancion.Estado_FK = 1";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridResultCancion.DataSource = dt;
        gridResultCancion.DataBind();
        conexion.Close();
    }

    protected void gridResultArtista_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Modificacion modificacion = new Modificacion();
        int fila = e.RowIndex;        
        String idArtista = gridResultArtista.Rows[fila].Cells[1].Text;
                            
        mostrarAlbumArtista(Convert.ToInt32(idArtista));

    }

    private void mostrarAlbumArtista(int idArtista)
    {
        
        SqlConnection conexion = Conexion.conectar();
        
        String query = "Select Album.IdAlbum, Album.Titulo, Album.Reseña, Album.FechaCreacion from Album inner join Artista on "+
            "Album.Artista_FK = Artista.IdArtista "+
            "WHERE Artista.IdArtista =" + idArtista +"AND Album.Estado_FK = 1 " ;


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridVerAlbum.DataSource = dt;
        gridVerAlbum.DataBind();
        conexion.Close();
    }

    protected void gridVerAlbum_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String id = gridVerAlbum.Rows[fila].Cells[1].Text;
        String nombreAlbum = gridVerAlbum.Rows[fila].Cells[2].Text;

        int idAlbum = Convert.ToInt32(id);

        int idArtista = modificacion.obtenerIdArtistaConIdAlbum(id);

        String portada = modificacion.mostrarDatosDeAlbum(idArtista.ToString(), nombreAlbum, "portada");

        if(idArtista != 0)
        {
            mostrarCanciones(idAlbum, portada);
        }

        
    }

    protected void gridResultAlbum_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String id = gridResultAlbum.Rows[fila].Cells[1].Text;
        String nombreAlbum = gridResultAlbum.Rows[fila].Cells[2].Text;

        int idAlbum = Convert.ToInt32(id);

        int idArtista = modificacion.obtenerIdArtistaConIdAlbum(id);

        String portada = modificacion.mostrarDatosDeAlbum(idArtista.ToString(), nombreAlbum, "portada");

        if (idArtista != 0)
        {
            mostrarCanciones(idAlbum, portada);
        }
    }

    private void mostrarCanciones(int idAlbum, String portada)
    {

        imgPortada.ImageUrl = portada;

        lbCanciones.Visible = true;

        SqlConnection conexion = Conexion.conectar();

        String query = "Select Cancion.IdCancion, Cancion.Cancion, Cancion.Album_FK from Cancion inner join Album on " +
            "Cancion.Album_FK = Album.IdAlbum where Album.IdAlbum =" + idAlbum + "AND Cancion.Estado_FK = 1";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridVerCanciones.DataSource = dt;
        gridVerCanciones.DataBind();
        conexion.Close();
    }

    protected void gridResultCancion_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;        
        String idCancion = gridResultCancion.Rows[fila].Cells[1].Text;

        String ruta = modificacion.obtenerRutaCancion(idCancion);

        reproducir(ruta);
                
    }
 
    protected void gridVerCanciones_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String idCancion = gridVerCanciones.Rows[fila].Cells[1].Text;

        String ruta = modificacion.obtenerRutaCancion(idCancion);

        reproducir(ruta);
    }

    private void reproducir(String ruta)
    {
        System.Media.SoundPlayer player = new System.Media.SoundPlayer();
        player.SoundLocation = ruta;
        player.Play();
    }
}