using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_UsuarioConsulta_modificarArtista : System.Web.UI.Page
{
    private Usuario usuario = UserConnect.usuario;
    private Modificacion actualizarArtista = new Modificacion();
    private List<String> listaArtista = Usuario.listaDeArtista;
        

    protected void Page_Load(object sender, EventArgs e)
    {
        int  idUsuario = usuario.getId();

        if (!Page.IsPostBack)
        {
            
                txtNombreArtista.Text = actualizarArtista.mostrarDatosArtista(idUsuario.ToString(), "nombre");
                txtFormacion.Text = actualizarArtista.mostrarDatosArtista(idUsuario.ToString(), "debut");

            try
            {
                String value = Convert.ToString(actualizarArtista.mostrarNacionalidadGenero(idUsuario.ToString(), "nacionalidad"));

                if (!value.Equals("0"))
                {
                    listNacionalidad.SelectedValue = value;
                }
            }
            catch
            {
                Response.Write("<script>window.alert('El usuario no tiene artista ');</script>");
            }                                
                txtDescripcion.Text = actualizarArtista.mostrarDatosArtista(idUsuario.ToString(), "descripcion");
                imgPortada.ImageUrl = actualizarArtista.mostrarDatosArtista(idUsuario.ToString(), "portada");
            try
            {
                String value = Convert.ToString(actualizarArtista.mostrarNacionalidadGenero(idUsuario.ToString(), "genero"));

                if (!value.Equals("0"))
                {
                    listGenero.SelectedValue = value;
                }
            }
            catch
            {
                Response.Write("<script>window.alert('El usuario no tiene artista ');</script>");
            }                
                txtFacebook.Text = actualizarArtista.mostrarDatosArtista(idUsuario.ToString(), "facebook");
                txtTwitter.Text = actualizarArtista.mostrarDatosArtista(idUsuario.ToString(), "twitter");
                txtYoutube.Text = actualizarArtista.mostrarDatosArtista(idUsuario.ToString(), "youtube");                                 
        }

    }
    
    protected void btnCrearArtista_Click(object sender, EventArgs e)
    {

        int idUsuario = usuario.getId();
        String nuevoNombre = txtNombreArtista.Text;
        String nuevaFormacion = txtFormacion.Text;
        String nuevaNacionalidad = listNacionalidad.SelectedValue;
        String nuevaDescripcion = txtDescripcion.Text;
        String nuevaPortada = lbImage.Text;
        String nuevoGenero = listGenero.SelectedValue;
        String nuevoFacebook = txtFacebook.Text;
        String nuevoTwitter = txtTwitter.Text;
        String nuevoYoutube = txtYoutube.Text;
        


        Actualizacion actualizarArtista = new Actualizacion();
        Consulta consulta = new Consulta();

        try
        {

            int idArtista = consulta.obtenerUsuarioAsociadoAArtista(idUsuario.ToString());

            actualizarArtista.actualizarArtista(idArtista.ToString(), nuevoNombre, nuevaFormacion, nuevaDescripcion, nuevaPortada, nuevoFacebook, nuevoTwitter, nuevoYoutube, nuevaNacionalidad.ToString(), idUsuario.ToString(), "1");

            actualizarArtista.actualizarGeneroArtista(idArtista.ToString(), nuevoGenero.ToString());

            Response.Write("<script>window.alert('Artista actualizado');</script>");
            Response.Redirect("iniciar.aspx", true);

        }
        catch(Exception error)
        {
            Response.Write("<script>window.alert('Hubo un problema con la actualización del artista');</script>");
        }        
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Eliminacion eliminarArtista = new Eliminacion();
        Consulta consultarArtista = new Consulta();
        int idUsuario = usuario.getId();
       
        String nuevoNombre = txtNombreArtista.Text;

        try
        {

            DateTime today = DateTime.Today;



            int idArtista = consultarArtista.obtenerUsuarioAsociadoAArtista(idUsuario.ToString());

            int idAlbum = consultarArtista.obtenerIdAlbumModificarArtista(idArtista.ToString(), nuevoNombre);

            eliminarArtista.eliminarArtista(idUsuario.ToString(), idArtista.ToString(), idAlbum.ToString(), nuevoNombre, today.ToString("d"));

            Response.Write("<script>window.alert('Artista eliminado');</script>");
            
            Response.Redirect("iniciar.aspx", true);


        }
        catch(Exception error)
        {
            Response.Write("<script>window.alert('Hubo un errro para eliminar al artista');</script>");
        }        
    }

    protected void btnActualizarImagen_Click(object sender, EventArgs e)
    {
        String raiz = "/Imagenes/";
        String ruta = raiz + fileImage.FileName;

        imgPortada.ImageUrl = ruta;

        lbImage.Text = ruta;       
    }
}