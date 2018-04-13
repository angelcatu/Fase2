using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Administrar_modificarUsuario : System.Web.UI.Page
{

    private Usuario actualizar = UserConnect.usuario;

    protected void Page_Load(object sender, EventArgs e)
    {        
        int idUsuario = actualizar.getId();
        Modificacion modificacion = new Modificacion();


        txtNombre.Text = modificacion.mostrarNombre(idUsuario.ToString());        
        txtCorreo.Text = modificacion.mostrarCorreo(idUsuario.ToString());
        txtUsuario.Text = modificacion.mostrarUsuario(idUsuario.ToString());
        txtPassword.Text = modificacion.mostrarContraseña(idUsuario.ToString());

        listEstado.SelectedValue = modificacion.mostrarEstado(idUsuario.ToString());
        listRol.SelectedValue = modificacion.mostrarRol(idUsuario.ToString());

    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {

    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        
    }
}