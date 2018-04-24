<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrarAlbum.aspx.cs" Inherits="Vista_UsuarioConsulta_registrarAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <link href="../Estilo/estiloConsulta.css" rel="stylesheet" />
    <title>Album</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 502px;
        }
        .auto-style4 {
            width: 502px;
        }
        .auto-style5 {
            width: 311px;
        }
        .auto-style6 {
            width: 311px;
            text-align: center;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: left;
            width: 247px;
        }
        .auto-style9 {
            text-align: left;
            width: 265px;
        }
        .auto-style10 {
            width: 267px;
        }
        .auto-style11 {
            text-align: left;
            width: 156px;
        }
        .auto-style12 {
            width: 502px;
            height: 28px;
        }
        .auto-style13 {
            width: 311px;
            text-align: center;
            height: 28px;
        }
        .auto-style14 {
            height: 28px;
        }
        .auto-style15 {
            text-align: right;
            width: 502px;
            height: 32px;
        }
        .auto-style16 {
            width: 311px;
            text-align: center;
            height: 32px;
        }
        .auto-style17 {
            height: 32px;
        }
    </style>
    </head>
<body>
    
    <form id="form1" runat="server">
    
    <header>
        <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="iniciar.aspx">Inicio</a></li>
            
            <li class="nivel1"><a href="#">Registros</a>
                <ul>
                    <li class="nivel2">
                        <a href="registrarArtista.aspx">Registrar artista</a>
                    </li>

                    <li class="nivel2">
                        <a href="registrarAlbum.aspx">Registrar Álbum</a>
                    </li>
                </ul>                                                    
            </li>
            <li class="nivel1"><a href="#">Modificaciones</a>
                <ul>
                    <li class="nivel2">
                        <a href="modificarArtista.aspx">Modificar artista</a>
                    </li>

                    <li class="nivel2">
                        <a href="modificarAlbum.aspx">Modificar álbum</a>
                    </li>
                </ul>
            </li>
            <li class="nivel1"><a href="#">Listas</a>
                
                <ul>
                    <li class="nivel2">
                        <a href="crearLista.aspx">Crear listas</a>
                    </li>

                    <li class="nivel2">
                        <a href="verListas.aspx">Ver listas</a>
                    </li>
                </ul>

            </li>                         
            <li class="nivel1">
                <a href="/Vista/Ingresar.aspx">Salir</a>
            </li>            
        </ul>
    </nav>    
        </header>
        <p class="auto-style1">
            Publicar álbum</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Título</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTitulo" runat="server" Width="307px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Fecha creación:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCreacion" runat="server" TextMode="Date" Width="308px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Reseña:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtReseña" runat="server" Height="55px" TextMode="MultiLine" Width="305px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Portada:</td>
                <td class="auto-style6">
                    <asp:Image ID="imgPortada" runat="server" Width="101px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style9">
                                <asp:FileUpload ID="fileImage" runat="server" Width="260px" />
                            </td>
                            <td class="auto-style7">
                    <asp:Button ID="btnCargarPortada" runat="server" Text="OK" Width="35px" OnClick="btnCargarPortada_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="lbPortada" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">Agregar canción</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Canción:</td>
                <td class="auto-style16">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style10">
                    <asp:FileUpload ID="fileSong" runat="server" Width="252px" />
                            </td>
                            <td class="auto-style7">
                    <asp:Button ID="btnCargarCancion" runat="server" Text="OK" Width="35px" OnClick="btnCargarCancion_Click1" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style17">
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:GridView ID="gridCanciones" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="310px" OnRowDeleting="gridCanciones_RowDeleting"  >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Borrar" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="SELECT [Cancion], [IdCancion] FROM [Cancion]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style14"></td>
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
                            <td class="auto-style8">
                                <asp:Button ID="btnFinalizar" runat="server" Text="Agregar album" Width="110px" BackColor="#33CC33" Height="35px" OnClick="btnFinalizar_Click" />
                            </td>
                            <td class="auto-style7">
                                <asp:Button ID="btnCancelar" runat="server" BackColor="#CC3300" Text="Cancelar" Width="110px" Height="35px" OnClick="btnCancelar_Click" />
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
