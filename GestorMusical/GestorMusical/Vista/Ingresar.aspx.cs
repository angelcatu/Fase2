using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Vista_Ingresar : System.Web.UI.Page
{

    private Usuario actualizar = UserConnect.usuario;
    private List<String> listaCanciones = Usuario.listaCanciones;
    private List<String> listaArtistas = Usuario.listaDeArtista;

    protected void Page_Load(object sender, EventArgs e)
    {
        listaCanciones.Clear();
        
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

                String estado = miConsulta.verificarEstado(user);

                if (estado.Equals("Activo"))
                {

                    int idUsuario = miConsulta.verificarObtenerIdUsuario(user, pass);
                    String rol = miConsulta.verificarRolUsuario(idUsuario.ToString());

                    if (rol.Equals("Administrador"))
                    {
                        System.Diagnostics.Debug.Write("Nombre de usuario y contraseña correctos");
                        Response.Write("<script>window.alert('Bienvenido al Musicspot');</script>");
                        Response.Redirect("/Vista/Administrador.aspx", true);
                    }
                    else if (rol.Equals("Consulta"))
                    {
                        System.Diagnostics.Debug.Write("Nombre de usuario y contraseña correctos");
                        Response.Write("<script>window.alert('Bienvenido al Musicspot');</script>");

                        actualizar.setId(idUsuario);

                        Response.Redirect("/Vista/UsuarioConsulta/iniciar.aspx", true);
                    }                    
                }
                else
                {
                    System.Diagnostics.Debug.Write("El usuario está bloqueado");
                    Response.Write("<script>window.alert('Usuario bloqueado');</script>");
                }                
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