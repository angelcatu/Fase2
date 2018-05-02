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
    private Album album_connect = UserConnect.album;
    private Modificacion modificacion = new Modificacion();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {

        if (txtBusqueda.Text.Length > 0)
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

        String query = "Select Artista.IdArtista, Artista.NombreArtista from Artista Where Artista.NombreArtista like '%" + artista + "%'" +
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

        String query = "Select Album.IdAlbum, Album.Titulo from Album Where Album.Titulo like '%" + album + "%'" +
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

        String query = "Select Cancion.IdCancion, Cancion.Cancion from Cancion Where Cancion.Cancion like '%" + cancion + "%'" +
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

        String query = "Select Album.IdAlbum, Album.Titulo, Album.Reseña, Album.FechaCreacion from Album inner join Artista on " +
            "Album.Artista_FK = Artista.IdArtista " +
            "WHERE Artista.IdArtista =" + idArtista + "AND Album.Estado_FK = 1 ";


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

        album_connect.setIdAlbum(idAlbum);

        int idArtista = modificacion.obtenerIdArtistaConIdAlbum(id);

        String portada = modificacion.mostrarDatosDeAlbum(idArtista.ToString(), nombreAlbum, "portada");

        if (idArtista != 0)
        {
            mostrarCanciones(idAlbum, portada, nombreAlbum);
        }


    }

    protected void gridResultAlbum_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String id = gridResultAlbum.Rows[fila].Cells[1].Text;
        String nombreAlbum = gridResultAlbum.Rows[fila].Cells[2].Text;

        int idAlbum = Convert.ToInt32(id);

        album_connect.setIdAlbum(idAlbum);

        int idArtista = modificacion.obtenerIdArtistaConIdAlbum(idAlbum.ToString());

        String portada = modificacion.mostrarDatosDeAlbum(idArtista.ToString(), nombreAlbum, "portada");

        if (idArtista != 0)
        {
            mostrarCanciones(idAlbum, portada, nombreAlbum);
        }
    }

    private void mostrarCanciones(int idAlbum, String portada, String nombreAlbum)
    {

        imgPortada.ImageUrl = portada;
        lbTituloAlbum.Text = nombreAlbum;
        lbCanciones.Visible = true;

        actualizarEmoticons(idAlbum.ToString());

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

    private void actualizarEmoticons(String idAlbum)
    {
        int albumFav = modificacion.obtenerFavLikeAlbum(idAlbum, "fav", usuario.getId().ToString());
        int albumLike = modificacion.obtenerFavLikeAlbum(idAlbum, "like", usuario.getId().ToString());

        if (albumFav == Convert.ToInt32(idAlbum))
        {
            btnFav.Visible = true;
            btnFav.Enabled = false;
            btnFav.ImageUrl = "/Imagenes/estrella.png";
        }
        else
        {
            btnFav.Enabled = true;
            btnFav.Visible = true;
            btnFav.ImageUrl = "/Imagenes/estrella_vacio.png";
        }

        if (albumLike == Convert.ToInt32(idAlbum))
        {
            btnLike.Visible = true;
            btnLike.Enabled = false;
            btnLike.ImageUrl = "/Imagenes/like.png";
        }
        else
        {
            btnLike.Enabled = true;
            btnLike.Visible = true;
            btnLike.ImageUrl = "/Imagenes/like_vacio.png";
        }
    }

    protected void gridResultCancion_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String idCancion = gridResultCancion.Rows[fila].Cells[3].Text;

        
        String ruta = modificacion.obtenerRutaCancion(idCancion);

        reproducir(ruta);

    }

    protected void gridVerCanciones_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        String idCancion = gridVerCanciones.Rows[fila].Cells[3].Text;

        String ruta = modificacion.obtenerRutaCancion(idCancion);

        reproducir(ruta);
    }

    private void reproducir(String ruta)
    {
        System.Media.SoundPlayer player = new System.Media.SoundPlayer();
        player.SoundLocation = ruta;
        player.Play();
    }

    protected void btnLike_Click(object sender, ImageClickEventArgs e)
    {
        insertarFavoritoMeGusta("like");
    }

    protected void btnFav_Click(object sender, ImageClickEventArgs e)
    {
        insertarFavoritoMeGusta("favorito");
    }

    protected void favCancion_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.alert('Ya es tu favorito');</script>");
    }

    protected void likeCancion_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.alert('Ya te gusta');</script>");
    }

    private void insertarFavoritoMeGusta(String peticion)
    {
        int idAlbum = album_connect.getIdAlbum();
        String titulo = lbTituloAlbum.Text;

        Insersión insertar = new Insersión();
        try
        {
            insertar.insertarFavMeGustaAlbum(titulo, idAlbum.ToString(), peticion, usuario.getId().ToString());            
            actualizarEmoticons(idAlbum.ToString());

        }
        catch(Exception e)
        {

        }        
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void gridVerCanciones_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        int fila = e.RowIndex;
        String idCancion = gridVerCanciones.Rows[fila].Cells[3].Text;
        String nombre = gridVerCanciones.Rows[fila].Cells[4].Text;

        int idCancionSqlConvert = Convert.ToInt32(idCancion);

        int idCancionSql = modificacion.obtenerFavLikeCancion(idCancionSqlConvert.ToString(), usuario.getId().ToString(), "favorito");

        if (idCancionSql == idCancionSqlConvert)
        {
            Response.Write("<script>window.alert('Ya es tu favorito');</script>");
        }
        else
        {
            insertarFavoritoMeGustaCancion(nombre, "favorito", idCancion);            
        }

        

    }    

   

    protected void gridResultCancion_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        int fila = e.RowIndex;
        String idCancion = gridVerCanciones.Rows[fila].Cells[3].Text;
        int idCancionSqlConvert = Convert.ToInt32(idCancion);
        String nombre = gridVerCanciones.Rows[fila].Cells[4].Text;

        int idCancionSql = modificacion.obtenerFavLikeCancion(idCancionSqlConvert.ToString(), usuario.getId().ToString(), "favorito");

        if (idCancionSql == idCancionSqlConvert)
        {
            Response.Write("<script>window.alert('Ya es tu favorito');</script>");
        }
        else
        {
            insertarFavoritoMeGustaCancion(nombre, "favorito", idCancion);            
        }
    }

    protected void gridResultCancion_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int fila = e.RowIndex;
        String idCancion = gridVerCanciones.Rows[fila].Cells[3].Text;
        int idCancionSqlConvert = Convert.ToInt32(idCancion);
        String nombre = gridVerCanciones.Rows[fila].Cells[4].Text;

        int idCancionSql = modificacion.obtenerFavLikeCancion(idCancionSqlConvert.ToString(), usuario.getId().ToString(), "like");

        if (idCancionSql == idCancionSqlConvert)
        {
            Response.Write("<script>window.alert('Ya te gusta la canción');</script>");
        }
        else
        {
            insertarFavoritoMeGustaCancion(nombre, "like", idCancion);            
        }
    }

    private void insertarFavoritoMeGustaCancion(String nombre, String peticion, String idCancion)
    {
        Insersión insertar = new Insersión();
        try
        {
            insertar.insertarFavMeGustaCancion(nombre, idCancion, peticion, usuario.getId().ToString());
            Response.Write("<script>window.alert('¡Hecho!');</script>");
        }
        catch (Exception e)
        {
            Response.Write("<script>window.alert('Error: Ocurrió un problema en la acción');</script>");
        }
    }   

    protected void gridVerCanciones_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        int fila = e.RowIndex;
        String idCancion = gridVerCanciones.Rows[fila].Cells[3].Text;
        String nombre = gridVerCanciones.Rows[fila].Cells[4].Text;

        int idCancionSqlConvert = Convert.ToInt32(idCancion);

        int idCancionSql = modificacion.obtenerFavLikeCancion(idCancionSqlConvert.ToString(), usuario.getId().ToString(), "like");

        if (idCancionSql == idCancionSqlConvert)
        {
            Response.Write("<script>window.alert('Ya te gusta la canción');</script>");
        }
        else
        {
            insertarFavoritoMeGustaCancion(nombre, "like", idCancion);
        }
    }
}