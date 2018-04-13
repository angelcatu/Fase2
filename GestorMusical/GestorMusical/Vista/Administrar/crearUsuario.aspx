<%@ Page Language="C#" AutoEventWireup="true" CodeFile="crearUsuario.aspx.cs" Inherits="Vista_Administrar_crearUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style3 {
            float: left;
            text-align: center;
            line-height: 50px;
            border: 4px solid white;
            width: 607px;
        }
        .auto-style8 {
            width: 557px;
        }
        .auto-style9 {
            width: 209px;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            text-align: right;
            width: 607px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style15 {
            width: 557px;
            text-align: center;
        }
        .auto-style16 {
            width: 209px;
            text-align: center;
        }
        .auto-style17 {
            margin-left: 0;
        }
        </style>
</head>
<body>
    
    <header>
     <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="#">Inicio</a></li>
            <li class="nivel1"><a href="#">Gestionar</a>
                <ul>
                    <li class="nivel2"><a href="crearUsuario.aspx">Crear usuario</a> </li>
                    <li class="nivel2"><a href="modificarUsuario.aspx">Modificar usuario</a></li>                    
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
            <li class="nivel1">
                <a href="/Vista/Ingresar.aspx">Salir</a>
            </li>


            
        </ul>

    </nav>    
    </header>

    <form runat="server">
         <p class="auto-style13">
            <strong>Bienvenido</strong></p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">Nombre completo:</td>
                <td class="auto-style9">
                    <div class="auto-style10">
                        <asp:TextBox ID="txtNombre" runat="server" Width="210px" CssClass="auto-style17"></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Correo:</td>
                <td class="auto-style9">
                    <div>
                        <asp:TextBox ID="txtCorreo" runat="server" Width="210px" TextMode="Email"></asp:TextBox>
                    </div>
                    
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Usuario:</td>
                <td class="auto-style9">
                    <div>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="210px" Height="20px"></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style11">Contraseña:</td>
                <td class="auto-style16">
                    <div class="auto-style10">
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="210px" ></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Re-Contraseña</td>
                <td class="auto-style9">
                    <div>
                        <asp:TextBox ID="txtPassword2" TextMode="Password" runat="server" Width="210px"></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtFecha" runat="server" Width="209px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Consulta</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>                
                <td class="auto-style9">

                    <asp:Button ID="btnCrearNuevo" runat="server" Text="Crear" Width="220px" OnClick="btnRegistrar_Click" />
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>
    </form>
        
</body>
</html>


