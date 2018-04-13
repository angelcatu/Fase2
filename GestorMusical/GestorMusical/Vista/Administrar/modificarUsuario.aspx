<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modificarUsuario.aspx.cs" Inherits="Vista_Administrar_modificarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style9 {
            width: 2039px;
            height: 60px;
        }
        .auto-style11 {
            width: 2039px;
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
            width: 1248px;
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
             &nbsp;</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Actualizar</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Nombre completo:</td>
                <td class="auto-style21">
                    <div class="auto-style12">
                        <asp:TextBox ID="txtNombre" runat="server" Width="210px" Height="16px"></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style11">Correo:</td>
                <td class="auto-style21">
                    <div>
                        <asp:TextBox ID="txtCorreo" runat="server" Width="210px" TextMode="Email"></asp:TextBox>
                    </div>
                    
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style11">Usuario:</td>
                <td class="auto-style21">
                    <div>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="210px" Height="20px"></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style11">Contraseña:</td>
                <td class="auto-style21">
                    <div class="auto-style12">
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="210px" ></asp:TextBox>
                    </div>                    
                </td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style21">
                    <asp:DropDownList ID="listEstado" runat="server">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Eliminado</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style21">
                    <asp:DropDownList ID="listRol" runat="server">
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Consulta</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" Width="211px" OnClick="btnRegistrar_Click" />
                </td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="209px" />
                </td>
                
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


