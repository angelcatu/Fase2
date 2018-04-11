using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Musicspot.SQL;

namespace Musicspot.Vistas
    {
}
public partial class Vista_Ingresar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        String user = txtUsuarioIngresar.Text.ToString();
        String pass = txtContraseñaIngresar.Text.ToString();        
    }
}