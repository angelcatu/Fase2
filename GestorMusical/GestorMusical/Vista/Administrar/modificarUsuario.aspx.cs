using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Administrar_modificarUsuario : System.Web.UI.Page
{

    private Usuario actualizar = UserConnect.usuario;
    private int idUsuario;

    protected void Page_Load(object sender, EventArgs e)
    {
        idUsuario = actualizar.getIdUsuarioEditar();

        if (!Page.IsPostBack)
        {            
            Modificacion modificacion = new Modificacion();

            txtNombre.Text = modificacion.mostrarNombre(idUsuario.ToString());
            txtCorreo.Text = modificacion.mostrarCorreo(idUsuario.ToString());
            txtUsuario.Text = modificacion.mostrarUsuario(idUsuario.ToString());

            listRol.SelectedValue = modificacion.mostrarRol(idUsuario.ToString());
            int estado = modificacion.mostrarEstado(idUsuario.ToString());

            if (estado == 1)
            {
                listEstado.SelectedValue = "Activo";
            }
            else if (estado == 2)
            {
                listEstado.SelectedValue = "Eliminado";
            }
            
        }        
    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {

    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        
        String nombre = txtNombre.Text;
        String correo = Convert.ToString(txtCorreo.Text);
        String password = Convert.ToString(txtPassword.Text);
        String user = Convert.ToString(txtUsuario.Text);
        String rol = listRol.SelectedValue;
        String estado = listEstado.SelectedValue;


        Actualizacion actualizacion = new Actualizacion();

        if (estado.Equals("Activo"))
        {
            actualizacion.actualizarUsuario(idUsuario.ToString(), nombre, correo, user, password, rol, "1");
        }
        else
        {
            actualizacion.actualizarUsuario(idUsuario.ToString(), nombre, correo, user, password, rol, "2");
        }     
    }


    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        Eliminacion eliminacion = new Eliminacion();

        eliminacion.eliminarUsuario(idUsuario.ToString());
    }   
}