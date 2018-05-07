<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tendencias.aspx.cs" Inherits="Vista_UsuarioConsulta_tendencias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <link href="../Estilo/estiloConsulta.css" rel="stylesheet" />
    <title>Inicio</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 311px;
        }
        .auto-style4 {
            text-align: center;
            width: 311px;
        }
        .auto-style5 {
            width: 315px;
        }
        .auto-style6 {
            text-align: center;
            width: 315px;
        }
        .auto-style7 {
            width: 221px;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
    </head>
<body>
    
    <form id="form1" runat="server">
    
    <header>
        <nav id="menuTop">
        <ul>
           <li class="nivel1"><a href="iniciar.aspx">Explorar</a>                
                        <ul>
                            <li class ="nivel2"><a href="generosMusicales.aspx">Generos</a></li>                            
                            <li class ="nivel2"><a href="listasDeReproduccion.aspx">Listas de reproducción</a></li>
                            <li class ="nivel2"><a href="novedades.aspx">Novedades</a></li>                            
                            <li class ="nivel2"><a href="tendencias.aspx">Tendencias</a></li>
                            <li class ="nivel2"><a href="favoritos.aspx">Favoritos</a></li>                                     
                        </ul>                                                                                                    
            </li>
            
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

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">Artista influyente</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">Albumes populares</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:ImageButton ID="btnArtistaInfluyente" runat="server" Height="91px" ImageUrl="~/Imagenes/artistaInfluyente.png" OnClick="btnArtistaInfluyente_Click" Width="91px" />
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">
                    <asp:ImageButton ID="btnAlbumPopular" runat="server" Height="91px" ImageUrl="~/Imagenes/albumPopular.png" Width="91px" OnClick="btnAlbumPopular_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:GridView ID="gridArtistaInf" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdArtista" ForeColor="#333333" GridLines="None" OnRowDeleting="gridArtistaInf_RowDeleting" Visible="False" Width="307px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Ver" />
                            <asp:BoundField DataField="IdArtista" InsertVisible="False" ReadOnly="True" SortExpression="IdArtista" />
                            <asp:BoundField DataField="NombreArtista" HeaderText="NombreArtista" SortExpression="NombreArtista" />
                            <asp:BoundField DataField="Cantidad_de_MeGusta" HeaderText="Cantidad_de_MeGusta" ReadOnly="True" SortExpression="Cantidad_de_MeGusta" Visible="False" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">
                    <div class="auto-style8">
                    <asp:GridView ID="gridAlbumesPop" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="138px" Width="312px" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                            <asp:BoundField DataField="MeGustaPorAlbum" HeaderText="MeGustaPorAlbum" ReadOnly="True" SortExpression="MeGustaPorAlbum" Visible="False" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:GridView ID="gridTopCanciones" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="302px" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Cancion" HeaderText="Cancion" SortExpression="Cancion" />
                            <asp:BoundField DataField="me_gusta" HeaderText="me_gusta" ReadOnly="True" SortExpression="me_gusta" Visible="False" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        </form>
    </body>
</html>
