<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modificarUsuario.aspx.cs" Inherits="Vista_Administrar_modificarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style9 {
            width: 1683px;
            height: 60px;
        }
        .auto-style11 {
            width: 1683px;
            text-align: right;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 1842px;
            text-align: center;
            height: 22px;
        }
        .auto-style18 {
            width: 1431px;
        }
        .auto-style21 {
            width: 250px;
        }
        .auto-style22 {
            width: 1683px;
            text-align: right;
            height: 22px;
        }
        .auto-style23 {
            width: 215px;
            height: 22px;
        }
        .auto-style24 {
            width: 1431px;
            height: 22px;
        }
        .auto-style25 {
            margin-top: 2;
        }
        .auto-style30 {
            width: 1431px;
            text-align: right;
        }
        .auto-style32 {
            width: 100%;
        }
        .auto-style33 {
            text-align: right;
        }
        .auto-style34 {
            width: 215px;
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
                    <li class="nivel2"><a href="buscarUsuario.aspx">Modificar usuario</a></li>                    
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
             &nbsp;</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Actualizar</td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style34">
                    &nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Nombre completo:</td>
                <td class="auto-style34">
                    <div class="auto-style12">
                        <asp:TextBox ID="txtNombre" runat="server" Width="206px" Height="16px"></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Correo:</td>
                <td class="auto-style34">
                    <div>
                        <asp:TextBox ID="txtCorreo" runat="server" Width="210px" TextMode="Email"></asp:TextBox>
                    </div>
                    
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30">Usuario:</td>
                <td class="auto-style34">
                    <div>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="210px" Height="20px"></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Contraseña:</td>
                <td class="auto-style34">
                    <div class="auto-style12">
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="210px" ></asp:TextBox>
                    </div>                    
                </td>
                
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    <asp:DropDownList ID="listEstado" runat="server">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Eliminado</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style34"></td>
                <td class="auto-style21">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style34">
                    <asp:DropDownList ID="listRol" runat="server" >
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Consulta</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style34">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style34">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style34">
                    <table class="auto-style32">
                        <tr>
                            <td>
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" Width="76px" OnClick="btnRegistrar_Click" CssClass="auto-style25" />
                            </td>
                            <td class="auto-style33">
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="76px" OnClick="btnEliminar_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style21">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style34">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style34">
                    &nbsp;</td>
                
            </tr>
            <tr>                
                <td class="auto-style11">
                    &nbsp;</td>                
            </tr>
            <tr>                
                <td class="auto-style11">
                    &nbsp;</td>                
            </tr>
            <tr>                
                <td class="auto-style9">
                    &nbsp;</td>                
            </tr>
            <tr>
                            
                <td class="auto-style9">
                    &nbsp;</td>
                
            </tr>
        </table>
    </form>

        
</body>
</html>


