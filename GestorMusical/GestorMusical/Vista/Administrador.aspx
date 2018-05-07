<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Vista_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: center;
            width: 244px;
        }
        .auto-style7 {
            width: 245px;
        }
        .auto-style8 {
            width: 244px;
        }
        .auto-style9 {
            text-align: center;
            width: 246px;
        }
        .auto-style10 {
            width: 246px;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>
</head>
<body>

    <form runat="server">

          <header>
     <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="Administrador.aspx">Inicio</a></li>
            <li class="nivel1"><a href="#">Gestionar</a>
                <ul>
                    <li class="nivel2"><a href="Administrar/crearUsuario.aspx">Crear usuario</a> </li>
                    <li class="nivel2"><a href="Administrar/buscarUsuario.aspx">Modificar usuario</a></li>                    
                    <li class="nivel2"><a href="Administrar/crearNovedad.aspx">Noticia usuario</a></li>          
                </ul>                            
            </li>                
            <li class="nivel1"><a href="#">Consultas</a>
                <ul>
                    <li class="nivel2"><a href="Administrar/consultarUsuario.aspx">Consultar usuario</a></li>
                    <li class="nivel2"><a href="Administrar/consultarAlbum.aspx">Consultar álbumes</a></li>
                    <li class="nivel2"><a href="Administrar/consultarArtista.aspx">Consultar artistas</a></li>
                </ul>   
            </li>                

            <li class="nivel1"><a href="#">Genero</a>
                <ul>
                    <li class="nivel2"><a href="Administrar/crearGenero.aspx">Crear género</a></li>
                </ul>
            </li>
            <li class ="nivel1"><a href="/Vista/Ingresar.aspx">Salir</a></li>
                            

            
            
        </ul>

    </nav>    
    </header>
        
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">Artistas influyentes:</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">Favoritos:</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">
                <div class="auto-style11">
                    <asp:GridView ID="gridArtistas" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="NombreArtista" HeaderText="NombreArtista" SortExpression="NombreArtista" />
                            <asp:BoundField DataField="Cantidad_de_MeGusta" HeaderText="Cantidad_de_MeGusta" ReadOnly="True" SortExpression="Cantidad_de_MeGusta" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="SELECT Artista.NombreArtista, COUNT(Artista.NombreArtista) AS Cantidad_de_MeGusta FROM Artista INNER JOIN Album ON Artista.IdArtista = Album.Artista_FK INNER JOIN Cancion ON Album.IdAlbum = Cancion.Album_FK INNER JOIN MeGusta ON Cancion.IdCancion = MeGusta.Cancion_FK GROUP BY Artista.NombreArtista ORDER BY Cantidad_de_MeGusta DESC"></asp:SqlDataSource>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">
                <asp:GridView ID="gridFavoritos" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                        <asp:BoundField DataField="CantidadDeFavs" HeaderText="CantidadDeFavs" ReadOnly="True" SortExpression="CantidadDeFavs" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="Select Favorito.Nombre, Favorito.Tipo, Count(Favorito.Fav) as CantidadDeFavs from Favorito 
group by Favorito.Nombre, Favorito.Tipo, Favorito.Fav order by Count(Favorito.Fav) DESC"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        
    </form>
      
</body>
</html>

