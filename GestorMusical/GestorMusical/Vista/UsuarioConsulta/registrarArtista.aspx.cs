using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Vista_UsuarioConsulta_registrarArtista : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCrearArtista_Click(object sender, EventArgs e)
    {

        
        if (txtNombreArtista.Text.Length>0 & txtDescripcion.Text.Length>0 
            & txtFormacion.Text.Length > 0 )
        {
            String name = FileUpload1.FileName;
            txtPortada.Text = name;
        }
        else
        {
            //Mensaje de valores requeridos
        }

    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {

    }
}