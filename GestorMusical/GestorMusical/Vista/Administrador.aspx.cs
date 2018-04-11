using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Administrador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       
    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
        Response.AppendHeader("Cache-Control", "no-store");
        Response.Redirect("/Vista/Ingresar.aspx");
    }
}