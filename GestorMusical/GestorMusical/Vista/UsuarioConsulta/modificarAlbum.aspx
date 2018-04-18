<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modificarAlbum.aspx.cs" Inherits="Vista_UsuarioConsulta_modificarAlbum" %>

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
            width: 425px;
        }
        .auto-style4 {
            width: 425px;
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
            width: 425px;
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
            width: 425px;
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
            Actualizar álbum</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:GridView ID="gridInfoAlbum" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="gridInfoAlbum_RowDeleting" Width="397px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Editar" />
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="btnSeleccion" runat="server" OnClick="btnSeleccion_Click" Text="Seleccionar" Width="260px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Título:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTitulo" runat="server" Width="307px" ReadOnly="True"></asp:TextBox>
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
                                <asp:Label ID="lbPortada" runat="server"></asp:Label>
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
                <td class="auto-style6">&nbsp;</td>
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
                    <asp:GridView ID="gridListaCanciones" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="309px" OnRowDeleting="gridListaCanciones_RowDeleting">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Eliminar" />
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
                                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" Width="110px" BackColor="#33CC33" Height="35px" OnClick="btnFinalizar_Click" />
                            </td>
                            <td class="auto-style7">
                                <asp:Button ID="btnEliminar" runat="server" BackColor="#CC3300" Text="Eliminar" Width="110px" Height="35px" OnClick="btnCancelar_Click" />
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
