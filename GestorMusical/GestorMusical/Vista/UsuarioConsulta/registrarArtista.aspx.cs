using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Vista_UsuarioConsulta_registrarArtista : System.Web.UI.Page
{
    private Usuario actualizar = UserConnect.usuario;
    private List<String> listaArtista = Usuario.listaDeArtista;
    private Consulta consulta = new Consulta();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        int numArtista = consulta.obtenerCantidadDeArtistasDeUsuario(actualizar.getId().ToString());

        if(numArtista == 1)
        {
            btnCrearArtista.Visible = false;
            btnCancelar.Visible = false;

            Response.Write("<script>window.alert('Ya posee un artista creado. Solamente se puede ver uno.');</script>");

            Response.Redirect("modificarArtista.aspx", true);

        }
        else if(numArtista == 0)
        {
            btnCrearArtista.Visible = true;
            btnCancelar.Visible = true;
        }

    }

    protected void btnCrearArtista_Click(object sender, EventArgs e)
    {
                                       
            if (txtNombreArtista.Text.Length > 0 & txtDescripcion.Text.Length > 0
                & txtFormacion.Text.Length > 0)
            {

                String nombre = txtNombreArtista.Text;
                String formacion = txtFormacion.Text;
                String nacionalidad = listNacionalidad.SelectedValue;
                String descripcion = txtDescripcion.Text;
                String genero = listGenero.SelectedValue;
                String ruta = lbImagen.Text;
                String facebook = txtFacebook.Text;
                String twitter = txtTwitter.Text;
                String youtube = txtYoutube.Text;
                String usuario = actualizar.getId().ToString();

                Insersión crearArtista = new Insersión();

                try
                {

                    crearArtista.registrarArtista(nombre, formacion, descripcion, ruta, facebook, twitter, youtube, nacionalidad, usuario, "1");

                    Consulta miConsulta = new Consulta();
                    String artista = miConsulta.obtenerUsuarioAsociadoAArtista(usuario.ToString()).ToString();

                    crearArtista.registrarGeneroAArtistas(artista, genero);

                    Response.Write("<script>window.alert('Artista registrado');</script>");

                    listaArtista.Add("Artista creado");

                    Response.Redirect("iniciar.aspx", true);


                }
                catch (Exception error)
                {
                    Response.Write("<script>window.alert('Hubo un error con el registro del artista');</script>");
                }
            }
            else
            {
                //Mensaje de valores requeridos
                Response.Write("<script>window.alert('El formulario no está completo');</script>");
            }
        }

    protected void btnCargarImagen_Click(object sender, EventArgs e)
    {
        String raiz = "/Imagenes/";
        String ruta = raiz + fileImagen.FileName;

        imgImagen.ImageUrl = ruta;

        lbImagen.Text = ruta;
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Vista/UsuarioConsulta/iniciar.aspx", true);
    } 
}