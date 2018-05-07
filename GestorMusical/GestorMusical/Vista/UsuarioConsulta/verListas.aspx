<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verListas.aspx.cs" Inherits="Vista_UsuarioConsulta_verListas" %>

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
            width: 406px;
        }
        .auto-style4 {
            width: 465px;
        }
        .auto-style5 {
            text-align: center;
            width: 465px;
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

        <p class="auto-style1">
            Tus listas</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:GridView ID="gridTusListas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="467px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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