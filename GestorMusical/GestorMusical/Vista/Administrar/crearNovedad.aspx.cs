using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Administrar_crearNovedad : System.Web.UI.Page
{

    Usuario usuario = UserConnect.usuario;
    Insersión insertarNoticia = new Insersión();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnNoticia_Click(object sender, EventArgs e)
    {
        if(txtContenido.Text.Length > 0 & txtNoticia.Text.Length > 0 & !imgPortada.ImageUrl.Equals(""))
        {
            try
            {
                insertarNoticia.publicarNoticia(txtNoticia.Text, txtContenido.Text, lbImagen.Text, usuario.getId().ToString());
                Response.Write("<script>window.alert('Noticia publicada');</script>");

                txtNoticia.Text = "";
                txtContenido.Text = "";
                imgPortada.ImageUrl = "";

            } catch (Exception err)
            {
                Response.Write("<script>window.alert('Error: no se pudo publicar la noticia');</script>");
            }
            
        }
    }

    protected void btnPortada_Click(object sender, EventArgs e)
    {
        String ruta = "/Imagenes/" + filePortada.FileName;
        lbImagen.Text = ruta;
        imgPortada.ImageUrl = ruta;
    }
}