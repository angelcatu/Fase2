<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iniciar.aspx.cs" Inherits="Vista_UsuarioConsulta_iniciar" %>

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
        .auto-style2 {
            width: 594px;
        }
        .auto-style3 {
            margin-left: 176px;
        }
        .auto-style4 {
            text-align: center;
            width: 589px;
        }
        .auto-style6 {
            margin-left: 179;
        }
        .auto-style7 {
            text-align: center;
            width: 409px;
        }
        .auto-style8 {
            margin-left: 110;
        }
        .auto-style9 {
            width: 405px;
        }
        .auto-style10 {
            width: 594px;
            text-align: right;
        }
        .auto-style11 {
            text-align: left;
            width: 195px;
        }
        .auto-style12 {
            width: 195px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            width: 594px;
            height: 155px;
        }
        .auto-style15 {
            width: 195px;
            height: 155px;
            text-align: center;
        }
        .auto-style16 {
            height: 155px;
        }
        .auto-style17 {
            text-align: center;
            width: 594px;
        }
        .auto-style18 {
            width: 109px;
        }
        .auto-style20 {
            width: 195px;
            height: 155px;
        }
        .auto-style21 {
            width: 39px;
        }
    </style>
    </head>
<body>
    
    <form id="form1" runat="server">
    
    <header>
        <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="#">Explorar</a>                
                        <ul>
                            <li class ="nivel2"><a href="generosMusicales.aspx">Generos</a></li>                            
                            <li class ="nivel2"><a href="listasDeReproduccion.aspx">Listas de reproducción</a></li>
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

        <div id ="busqueda">
        </div>
        

        <table class="auto-style1">
            <tr>
                <td class="auto-style10">
            <asp:TextBox ID="txtBusqueda" runat="server" Width="456px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lbArtista" runat="server" Text="Artistas:" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style4">&nbsp;
                                <asp:GridView ID="gridResultArtista" runat="server" CellPadding="4" CssClass="auto-style3" ForeColor="#333333" GridLines="None" OnRowDeleting="gridResultArtista_RowDeleting" Width="376px">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Ver" />
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
                        </tr>
                    </table>
                </td>
                <td class="auto-style12">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:GridView ID="gridVerAlbum" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="gridVerAlbum_RowDeleting" Width="465px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Ver" />
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
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lbAlbumes" runat="server" Text="Albumes" Visible="False"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style7">
                                <asp:GridView ID="gridResultAlbum" runat="server" CellPadding="4" CssClass="auto-style6" ForeColor="#333333" GridLines="None" OnRowDeleting="gridResultAlbum_RowDeleting" Width="372px">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Ver" ImageUrl="~/Imagenes/2.png" />
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
                        </tr>
                    </table>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style16">
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="lbTituloAlbum" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style21">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                    <asp:Image ID="imgPortada" runat="server" Height="93px" Width="93px" />
                            </td>
                            <td class="auto-style21">
                                <asp:ImageButton ID="btnLike" runat="server" Height="38px" ImageUrl="~/Imagenes/like_vacio.png" OnClick="btnLike_Click" Visible="False" Width="42px" />
                            </td>
                            <td>
                                <asp:ImageButton ID="btnFav" runat="server" Height="44px" ImageUrl="~/Imagenes/estrella_vacio.png" OnClick="btnFav_Click" Visible="False" Width="44px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lbCanciones" runat="server" Text="Canciones:" Visible="False"></asp:Label>                    
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style9">
                                <asp:GridView ID="gridResultCancion" runat="server" CellPadding="4" CssClass="auto-style8" ForeColor="#333333" GridLines="None" OnRowDeleting="gridResultCancion_RowDeleting" Width="368px" OnRowCancelingEdit="gridResultCancion_RowCancelingEdit" OnRowUpdating="gridResultCancion_RowUpdating">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Reproducir" />
                                        <asp:ButtonField ButtonType="Button" CommandName="Cancel" Text="Favorito" />
                                        <asp:ButtonField ButtonType="Button" CommandName="Update" Text="Me gusta" />
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
                        </tr>
                    </table>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style16">
                                <asp:GridView ID="gridVerCanciones" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="gridVerCanciones_RowDeleting" Width="356px" OnRowCancelingEdit="gridVerCanciones_RowCancelingEdit" OnRowUpdating="gridVerCanciones_RowUpdating1" >
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Reproducir" />                                                                                
                                        <asp:ButtonField ButtonType="Button" CommandName="Cancel" ImageUrl="~/Imagenes/estrella.png" Text="Favorito" />
                                        <asp:ButtonField ButtonType="Button" CommandName="Update" Text="Me gusta" />
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
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        

        </form>

    </body>

    </html>


