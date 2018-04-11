using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Vista_Ingresar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {      
    }

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        String user = Convert.ToString(txtUsuarioIngresar.Text);
        String pass = Convert.ToString(txtContraseñaIngresar.Text);

        Consulta miConsulta = new Consulta();
        try
        {
            String contraseñaLeida = miConsulta.verificarContraseña(user);

            if (contraseñaLeida.Equals(pass)){
                System.Diagnostics.Debug.Write("Nombre de usuario y contraseña correctos");
                Response.Write("<script>window.alert('Bienvenido al Musicspot');</script>");
                Response.Redirect("/Vista/Administrador.aspx", true);

            }
            else
            {
                System.Diagnostics.Debug.Write("Nombre de usuario y contraseña incorrectos");
                Response.Write("<script>window.alert('Nombre de usuario o contraseña incorrectos');</script>");
            }


        }catch
        {
            System.Diagnostics.Debug.Write("Usuario no existe");
            Response.Write("<script>window.alert('Usuario no existe');</script>");
        }
    }
}