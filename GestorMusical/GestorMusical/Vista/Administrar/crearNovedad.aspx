<%@ Page Language="C#" AutoEventWireup="true" CodeFile="crearNovedad.aspx.cs" Inherits="Vista_Administrar_crearNovedad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 423px;
        }
        .auto-style4 {
            width: 423px;
        }
        .auto-style5 {
            width: 477px;
        }
        .auto-style6 {
            width: 257px;
        }
        .auto-style7 {
            width: 227px;
            text-align: right;
        }
        .auto-style8 {
            width: 103%;
        }
        .auto-style9 {
            width: 477px;
            text-align: center;
        }
    </style>
    </head>
<body>
    
    <form id="form1" runat="server">
    
    <header>
     <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="/Vista/Administrador.aspx">Inicio</a></li>
            <li class="nivel1"><a href="#">Gestionar</a>
                <ul>
                    <li class="nivel2"><a href="crearUsuario.aspx">Crear usuario</a> </li>
                    <li class="nivel2"><a href="buscarUsuario.aspx">Modificar usuario</a></li>                    
                    <li class="nivel2"><a href="crearNovedad.aspx">Noticias</a></li>
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
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">Publicar noticia</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Noticia:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNoticia" runat="server" Width="485px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Contenido:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtContenido" runat="server" Height="100px" TextMode="MultiLine" Width="483px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Portada:</td>
                <td class="auto-style5">
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style6">
                                <asp:FileUpload ID="filePortada" runat="server" Width="253px" />
                            </td>
                            <td class="auto-style7">
                                <asp:Button ID="btnPortada" runat="server" Text="Cargar" OnClick="btnPortada_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Label ID="lbImagen" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Image ID="imgPortada" runat="server" Height="103px" Width="103px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btnNoticia" runat="server" OnClick="btnNoticia_Click" Text="Publicar noticia" Width="369px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        </form>
        </body>
</html>
