<%@ Page Language="C#" AutoEventWireup="true" CodeFile="favoritos.aspx.cs" Inherits="Vista_UsuarioConsulta_favoritos" %>

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
            text-align: center;
            width: 441px;
        }
        .auto-style3 {
            width: 381px;
        }
        .auto-style4 {
            width: 441px;
        }
        .auto-style5 {
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
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">Tus favoritos:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <div class="auto-style5">
                        <asp:GridView ID="gridFavoritos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="443px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        </form>

    </body>
</html>
