﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }    
    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        String nombre = Convert.ToString(txtNombre.Text);
        String correo = Convert.ToString(txtCorreo.Text);
        String fechaCreacion = Convert.ToString(txtFecha.Text);        
        String usuario = Convert.ToString(txtUsuario.Text);
        String password = Convert.ToString(txtPassword.Text);
        String password2 = Convert.ToString(txtPassword2.Text);

        Consulta consulta = new Consulta();
        Insersión insersión = new Insersión();

        if (password.Equals(password2)){

            try
            {
                insersión.registrarUsuario(nombre, fechaCreacion, correo, usuario, password, "1");

                Response.Write("<script>window.alert('Artista registrado');</script>");

                Response.Redirect("/Vista/Ingresar.aspx", true);

            }
            catch(Exception error)
            {
                Response.Write("<script>window.alert('Hubo un problema con el registro');</script>");
            }                        
        }
        else
        {
            Response.Write("<script>window.alert('Las contraseñas no coinciden');</script>");
        }

        



    }    
}