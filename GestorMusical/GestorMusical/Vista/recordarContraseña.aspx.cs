using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_recordarContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRecordar_Click(object sender, EventArgs e)
    {
        if (txtNacimiento.Text.Length > 0 & txtCorreo.Text.Length > 0)
        {
            Consulta consulta = new Consulta();

            String correo = consulta.recordarContraseña(txtNacimiento.Text);

            try
            {
                if (correo.Equals(txtCorreo.Text))
                {
                    
                    String contraseña = consulta.recuperarContraseña(txtNacimiento.Text, txtCorreo.Text);

                    if (contraseña.Length > 0)
                    {
                        lbVerContraseña.Text = contraseña;
                    }

                }
            }
            catch(Exception j)
            {
                Response.Write("<script>window.alert('Uno de los datos está incorrecto.');</script>");
            }                        
        }
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ingresar.aspx", true);
    }
}