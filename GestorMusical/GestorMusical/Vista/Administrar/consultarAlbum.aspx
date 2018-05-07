<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consultarAlbum.aspx.cs" Inherits="Vista_Administrar_consultarAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 445px;
        }
        .auto-style4 {
            width: 351px;
        }
        .auto-style5 {
            width: 445px;
            height: 21px;
        }
        .auto-style6 {
            width: 351px;
            height: 21px;
        }
        .auto-style7 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form runat="server">
    <header>
     <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="/Vista/Administrador.aspx">Inicio</a></li>
            <li class="nivel1"><a href="#">Gestionar</a>
                <ul>
                    <li class="nivel2"><a href="crearUsuario.aspx">Crear usuario</a> </li>
                    <li class="nivel2"><a href="buscarUsuario.aspx">Modificar usuario</a></li>              
                    <li class="nivel2"><a href="crearNovedad.aspx">Noticia</a></li>      
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
        
    <p class="auto-style1">
        Albumes eliminados</p>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" Width="349px">
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:GridView ID="gridCanciones" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="348px">
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
    </table>
        

        </form>
</body>
</html>


