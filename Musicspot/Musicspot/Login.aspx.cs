using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = true;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //Guardar dato para enviar
        txtFecha.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Calendar1.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;

        }
        else
        {
            Calendar1.Visible = true;
        }
    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        String nombre = Convert.ToString(txtNombre.Text);
        String correo = Convert.ToString(txtCorreo.Text);
        String usuario = Convert.ToString(txtUsuario.Text);
        String password = Convert.ToString(txtPassword.Text);
        String fecha = Convert.ToString(txtFecha.Text);
        




    }
}