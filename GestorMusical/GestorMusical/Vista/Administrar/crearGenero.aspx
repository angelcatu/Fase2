<%@ Page Language="C#" AutoEventWireup="true" CodeFile="crearGenero.aspx.cs" Inherits="Vista_Administrar_crearGenero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 533px;
        }
        .auto-style4 {
            width: 306px;
        }
        .auto-style5 {
            width: 306px;
            text-align: center;
        }
        .auto-style6 {
            margin-left: 0;
        }
    </style>
</head>
<body>
    
    <form runat="server">

        
    <header>
     <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="/Vista/Administrador.aspx">Inicio</a></li>
            <li class="nivel1"><a href="#">Gestionar</a>
                <ul>
                    <li class="nivel2"><a href="crearUsuario.aspx">Crear usuario</a> </li>
                    <li class="nivel2"><a href="buscarUsuario.aspx">Modificar usuario</a></li>         
                    <li class="nivel2"><a href="crearNovedad.aspx">Noticia</a></li>          
                </ul>                            
            </li>                
            <li class="nivel1"><a href="#">Consultas</a>
                <ul>
                    <li class="nivel2"><a href="consultarUsuario.aspx">Consultar usuario</a></li>
                    <li class="nivel2"><a href="consultarAlbum.aspx">Consultar álbumes</a></li>
                    <li class="nivel2"><a href="consultarArtista.aspx">Consultar artistas</a></li>
                </ul>   
            </li>                

            <li class="nivel1"><a href="#">Genero</a>
                <ul>
                    <li class="nivel2"><a href="crearGenero.aspx">Crear género</a></li>
                </ul>
            </li>
            <li class="nivel1"><a href="/Vista/Ingresar.aspx">Salir</a></li>                            

            
            
        </ul>

    </nav>    
    </header>
        
    <p class="auto-style1">
        Crear género</p>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtNuevoGener" runat="server" Width="307px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnAgregarGenero" runat="server" Text="Agregar" OnClick="btnAgregarGenero_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:DropDownList ID="listGeneros" runat="server" CssClass="auto-style6" DataSourceID="SqlDataSource1" DataTextField="Tipo" DataValueField="Tipo">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="SELECT IdGenero, Tipo FROM Genero"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>



    </form>        

</body>
</html>


