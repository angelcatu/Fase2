using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_UsuarioConsulta_registrarAlbum : System.Web.UI.Page
{
    private String ruta ;    
    private Usuario usuarioArtista = UserConnect.usuario;
    private List<String> listaCanciones = Usuario.listaCanciones;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnCargarPortada_Click(object sender, EventArgs e)
    {

        String fileName = fileImage.FileName;
        ruta = "/Imagenes/" + fileName;
        imgPortada.ImageUrl = ruta;
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Vista/UsuarioConsulta/iniciar.aspx", true);
    }

    protected void btnFinalizar_Click(object sender, EventArgs e)
    {
        Consulta consulta = new Consulta();
        int idUsuario = usuarioArtista.getId();
        int idArtista = consulta.obtenerUsuarioAsociadoAArtista(idUsuario.ToString());

        String titulo = txtTitulo.Text;
        String fecha = txtCreacion.Text;
        String reseña = txtReseña.Text;
        String portada = ruta;

        if(titulo.Length>0 & fecha.Length>0 & listaCanciones.Count >=1) 
        {
            Insersión insertarAlbum = new Insersión();
            insertarAlbum.registrarAlbumDeArtista(titulo, fecha, reseña, portada, idArtista.ToString(), "1");

            int idAlbum = consulta.obtenerIdAlbumDeArtista(idArtista.ToString(), titulo);

            foreach (String item in listaCanciones)
            {
                insertarAlbum.insertarCancion(item, "1", idAlbum.ToString(), "/Canciones/" + item);
            }


            listaCanciones.Clear();

        }
        else
        {
            Response.Write("<script>window.alert('El formulario no está completo');</script>");
        }

    }

    protected void btnCargarCancion_Click(object sender, EventArgs e)
    {
        String archivoCancion = fileSong.FileName;                
    }


    protected void btnCargarCancion_Click1(object sender, EventArgs e)
    {
        
        listaCanciones.Add(fileSong.FileName);
        //cargarGrid();
    }

    protected void gridCanciones_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
               
    }


    private void cargarGrid()
    {
        gridCanciones.DataSource = listaCanciones;
        gridCanciones.DataBind();
    }
}