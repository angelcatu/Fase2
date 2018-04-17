using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Vista_UsuarioConsulta_registrarArtista : System.Web.UI.Page
{
    private Usuario actualizar = UserConnect.usuario;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCrearArtista_Click(object sender, EventArgs e)
    {
        String name = FileUpload1.FileName;        
        txtPortada.Text = name;

        if (txtNombreArtista.Text.Length>0 & txtDescripcion.Text.Length>0 
            & txtFormacion.Text.Length > 0 )
        {

            String nombre = txtNombreArtista.Text;
            String formacion = txtFormacion.Text;
            String nacionalidad = listNacionalidad.SelectedValue;
            String descripcion = txtDescripcion.Text;
            String genero = listGenero.SelectedValue;
            String ruta = "/Imagenes/" + name;
            String facebook = txtFacebook.Text;
            String twitter = txtTwitter.Text;
            String youtube = txtYoutube.Text;
            String usuario = actualizar.getId().ToString();
            
            Insersión crearArtista = new Insersión();
            crearArtista.registrarArtista(nombre, formacion, descripcion, ruta, facebook, twitter, youtube, nacionalidad, usuario, "1");

            Consulta miConsulta = new Consulta();
            String artista = miConsulta.obtenerUsuarioAsociadoAArtista(usuario.ToString()).ToString();
                
            crearArtista.registrarGeneroAArtistas(artista, genero);

            Response.Redirect("/Vista/UsuarioConsulta/iniciar.aspx", true);


        }
        else
        {
            //Mensaje de valores requeridos
        }

    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Vista/UsuarioConsulta/iniciar.aspx", true);
    }
}