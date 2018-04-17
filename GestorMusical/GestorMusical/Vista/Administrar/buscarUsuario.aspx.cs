using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Administrar_buscarUsuario : System.Web.UI.Page
{

    private Usuario actualizar = UserConnect.usuario;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {


        try
        {
            String valor = Convert.ToString(GridView1.SelectedRow.Cells[1].Text);
            int id = Convert.ToInt32(valor);
            
            actualizar.setIdUsuarioEditar(id);

            Response.Redirect("modificarUsuario.aspx", true);            


        }
        catch(Exception l)
        {
            Console.WriteLine(l.Message);
        }        
    }    
}