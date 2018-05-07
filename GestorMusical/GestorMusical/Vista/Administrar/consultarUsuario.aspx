<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consultarUsuario.aspx.cs" Inherits="Vista_Administrar_consultarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 633px;
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
                 <a href="../Ingresar.aspx">Salir</a>
            </li>

            <!-- <a href="/Vista/Ingresar.aspx">Salir</a> -->
            
        </ul>

    </nav>    
    </header>

        <table class="auto-style6">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="601px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                            <asp:BoundField DataField="Creacion" HeaderText="Creacion" SortExpression="Creacion" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="SELECT  Usuario.NombreCompleto AS Nombre,  Usuario.Username AS Usuario, Usuario.FechaNacimiento AS Creacion
FROM Usuario inner join Estado on Usuario.Estado_FK = Estado.IdEstado WHERE Usuario.IdUsuario != 1
group by Usuario.NombreCompleto, Usuario.Username,  Usuario.FechaNacimiento "></asp:SqlDataSource>
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" Width="640px">
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="SELECT  Usuario.NombreCompleto AS Nombre,  Usuario.Username AS Usuario, Estado.Descripcion
FROM Usuario inner join Estado on Usuario.Estado_FK = Estado.IdEstado WHERE Usuario.IdUsuario != 1
group by Usuario.NombreCompleto, Usuario.Username, Estado.Descripcion"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
        
</body>
</html>


