<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarArtista.aspx.cs" Inherits="Vista_UsuarioConsulta_registrarArtista" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <link href="../Estilo/estiloConsulta.css" rel="stylesheet" />
    <title>Inicio</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 500px;
        }
        .auto-style4 {
            width: 500px;
        }
        .auto-style5 {
            margin-top: 81;
        }
        .auto-style6 {
            width: 386px;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
    </head>
<body>
    
    <form id="form1" runat="server">
    
    <header>
        <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="#">Inicio</a></li>
            
            <li class="nivel1"><a href="#">Registros</a>
                <ul>
                    <li class="nivel2">
                        <a href="#">Registrar artista</a>
                    </li>

                    <li class="nivel2">
                        <a href="#">Registrar Álbum</a>
                    </li>
                </ul>                                                    
            </li>
            <li class="nivel1"><a href="#">Modificaciones</a>
                <ul>
                    <li class="nivel2">
                        <a href="#">Modificar artista</a>
                    </li>

                    <li class="nivel2">
                        <a href="#">Modificar álbum</a>
                    </li>
                </ul>
            </li>
            <li class="nivel1"><a href="#">Listas</a>
                
                <ul>
                    <li class="nivel2">
                        <a href="#">Crear listas</a>
                    </li>

                    <li class="nivel2">
                        <a href="#">Ver listas</a>
                    </li>
                </ul>

            </li>                         
            <li class="nivel1">
                <a href="/Vista/Ingresar.aspx">Salir</a>
            </li>


            
        </ul>

    </nav>    
    </header>    

        <div id ="busqueda">
        </div>
        

        <p class="auto-style1">
            Crear artista</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Nombre del artista:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtNombreArtista" runat="server" Width="375px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Año formacion:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtFormacion" runat="server" TextMode="Date" Width="374px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Nacionalidad:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="listNacionalidad" runat="server" DataSourceID="SqlDataSource1" DataTextField="Pais" DataValueField="Pais" Width="233px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="SELECT [IdNacionalidad], [Pais] FROM [Nacionalidad]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Descripción:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="auto-style5" Height="130px" MaxLength="240" TextMode="MultiLine" Width="377px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Género:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="listGenero" runat="server" DataSourceID="SqlDataSource2" DataTextField="Tipo" DataValueField="IdGenero" Height="22px" Width="233px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="SELECT [IdGenero], [Tipo] FROM [Genero]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Portada:</td>
                <td class="auto-style6">
                    <table class="auto-style2">
                        <tr>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="182px" />
                                <asp:TextBox ID="txtPortada" runat="server" Width="187px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Facebook:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtFacebook" runat="server" Width="377px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Twitter:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtTwitter" runat="server" Width="378px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Youtube:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtYoutube" runat="server" Width="379px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">
                    <table class="auto-style2">
                        <tr>
                            <td>
                                <asp:Button ID="btnCrearArtista" runat="server" OnClick="btnCrearArtista_Click" Text="Crear" Width="118px" />
                            </td>
                            <td class="auto-style7">
                                <asp:Button ID="btnCancelar" runat="server" BackColor="#CC3300" OnClick="btnCancelar_Click" Text="Cancelar" Width="118px" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        

        </form>

    </body>

    </html>
