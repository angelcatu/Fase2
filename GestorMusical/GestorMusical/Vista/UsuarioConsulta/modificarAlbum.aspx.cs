using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Vista_UsuarioConsulta_modificarAlbum : System.Web.UI.Page
{

    Consulta edicion = new Consulta();
    Usuario usuario = UserConnect.usuario;
    String ruta = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            mostrarInfoAlbumArtista();            
        }
        
    }

    private void mostrarInformacionDeArtista(String titulo)
    {
        Modificacion modificacion = new Modificacion();
        Consulta consulta = new Consulta();

        int idArtista = consulta.obtenerUsuarioAsociadoAArtista(usuario.getId().ToString());
        
        txtCreacion.Text = modificacion.mostrarDatosDeAlbum(idArtista.ToString(), titulo, "creacion");        
        txtReseña.Text = modificacion.mostrarDatosDeAlbum(idArtista.ToString(), titulo, "reseña");

        imgPortada.ImageUrl = modificacion.mostrarDatosDeAlbum(idArtista.ToString(), titulo, "portada");
    }

    private void mostrarInfoAlbumArtista()

    {
        SqlConnection conexion = Conexion.conectar();

        int idArtista = edicion.obtenerUsuarioAsociadoAArtista(usuario.getId().ToString());

        String query = "SELECT Album.IdAlbum, Album.Titulo, Album.FechaCreacion, Album.Reseña from Album WHERE Album.Artista_FK =" + idArtista;


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridInfoAlbum.DataSource = dt;
        gridInfoAlbum.DataBind();
        conexion.Close();
    }
    private void actualizarGridCanciones()
    {
        SqlConnection conexion = Conexion.conectar();

        int idArtista = edicion.obtenerUsuarioAsociadoAArtista(usuario.getId().ToString());
        int idAlbum = edicion.obtenerIdAlbumDeArtista(idArtista.ToString(), txtTitulo.Text);

        String query = "SELECT Cancion.IdCancion, Cancion.Cancion, Cancion.Ruta from Cancion inner join Album on Cancion.Album_FK = Album.IdAlbum " +
            "inner join Artista on Album.Artista_FK = Artista.IdArtista where Artista.IdArtista = " + idArtista + "AND Album.IdAlbum = "+ idAlbum;


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridListaCanciones.DataSource = dt;
        gridListaCanciones.DataBind();
        conexion.Close();
    }

    protected void btnFinalizar_Click(object sender, EventArgs e)
    {
        Actualizacion actualizarAlbum = new Actualizacion();
        Consulta consulta = new Consulta();

        int idArtista = consulta.obtenerUsuarioAsociadoAArtista(usuario.getId().ToString());

        int idAlbum = consulta.obtenerIdAlbumDeArtista(idArtista.ToString(), txtTitulo.Text);
        
        actualizarAlbum.actualizarAlbum(idAlbum.ToString(), txtCreacion.Text, txtReseña.Text, lbPortada.Text);
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        
    }

    protected void btnCargarCancion_Click1(object sender, EventArgs e)
    {
        Insersión insertarNuevaCancion = new Insersión();
        Consulta consulta = new Consulta();
        int idArtista = consulta.obtenerUsuarioAsociadoAArtista(usuario.getId().ToString());
        int idAlbum = consulta.obtenerIdAlbumDeArtista(idArtista.ToString(), txtTitulo.Text);

        insertarNuevaCancion.insertarCancion(fileSong.FileName, "1", idAlbum.ToString(), "/Canciones/" + fileSong.FileName);
        actualizarGridCanciones();
    }

    protected void btnCargarPortada_Click(object sender, EventArgs e)
    {
        
            String ruta = "/Imagenes/" + fileImage.FileName;
            imgPortada.ImageUrl = ruta;

        lbPortada.Text = ruta;
        
    }

    protected void gridListaCanciones_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int fila = e.RowIndex;
        //String valor = gridListaCanciones.SelectedRow.Cells[1].ToString();
        String valor = gridListaCanciones.Rows[fila].Cells[1].Text;

        Eliminacion eliminarCancion = new Eliminacion();
        //Eliminar canción de la DB
        eliminarCancion.eliminarCancionDefinitivo(valor);
        fila = 0;

        actualizarGridCanciones();
    }

    protected void btnSeleccion_Click(object sender, EventArgs e)
    {
        try
        {
            
        }
        catch (Exception l)
        {
            Console.WriteLine(l.Message);
        }
    }    
   

    protected void gridInfoAlbum_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        //String valor = gridListaCanciones.SelectedRow.Cells[1].ToString();
        String valor = gridInfoAlbum.Rows[fila].Cells[2].Text;

        txtTitulo.Text = valor;

        mostrarInformacionDeArtista(valor);
        actualizarGridCanciones();
        
    }
}