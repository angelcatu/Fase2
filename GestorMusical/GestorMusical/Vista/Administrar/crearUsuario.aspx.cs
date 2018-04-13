using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Administrar_crearUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {

    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        String nombre = Convert.ToString(txtNombre.Text);
        String correo = Convert.ToString(txtCorreo.Text);
        String fechaCreacion = Convert.ToString(txtFecha.Text);
        String rol = DropDownList1.SelectedValue;
        String usuario = Convert.ToString(txtUsuario.Text);
        String password = Convert.ToString(txtPassword.Text);
        String password2 = Convert.ToString(txtPassword2.Text);
        
        Insersión insersión = new Insersión();

        if (password.Equals(password2))
        {
            insersión.registarUsuarioAdmin(nombre, fechaCreacion, correo, rol, usuario, password, "1");
        }
        else
        {
            Response.Write("<script>window.alert('Las contraseñas no coinciden');</script>");
        }


    }
}