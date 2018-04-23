using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Administrar_crearGenero : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {

    }

    protected void btnAgregarGenero_Click(object sender, EventArgs e)
    {
        Insersión crearGenero = new Insersión();

        if(txtNuevoGener.Text.Length > 0)
        {
            try
            {
                crearGenero.registrarGenero(txtNuevoGener.Text);
                Response.Write("<script>window.alert('Género creado');</script>");
            }
            catch(Exception error )
            {
                Response.Write("<script>window.alert('Hubo un problema para crear el género');</script>");
            }

            
        }
    }
}