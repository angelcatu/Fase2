<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buscarUsuario.aspx.cs" Inherits="Vista_Administrar_buscarUsuario" %>

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
    </style>
    </head>
<body>
    
    <form id="form1" runat="server">
    
    <header>
     <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="#">Inicio</a></li>
            <li class="nivel1"><a href="#">Gestionar</a>
                <ul>
                    <li class="nivel2"><a href="crearUsuario.aspx">Crear usuario</a> </li>
                    <li class="nivel2"><a href="modificarUsuario.aspx">Modificar usuario</a></li>                    
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
        
        <div id="grid" class="auto-style1">
        
        <div class="auto-style5">
            <div class="auto-style6">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" Width="600px" DataKeyNames="IdUsuario" >
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="IdUsuario" HeaderText="Id" SortExpression="IdUsuario" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="NombreCompleto" HeaderText="Nombre" SortExpression="NombreCompleto" />
            <asp:BoundField DataField="CorreoElectronico" HeaderText="Correo" SortExpression="CorreoElectronico" />
            <asp:BoundField DataField="FechaNacimiento" HeaderText="Creacion" SortExpression="FechaNacimiento" />
            <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
            <asp:BoundField DataField="Username" HeaderText="Usuario" SortExpression="Username" />
            <asp:BoundField DataField="Descripcion" HeaderText="Estado" SortExpression="Descripcion" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fase2-ProyectoConnectionString %>" SelectCommand="SELECT Usuario.IdUsuario, Usuario.NombreCompleto, Usuario.CorreoElectronico, Usuario.FechaNacimiento, Usuario.Rol, Usuario.Username, Estado.Descripcion FROM Usuario INNER JOIN Estado ON Usuario.Estado_FK = Estado.IdEstado WHERE (Usuario.IdUsuario &lt;&gt; 1) GROUP BY Usuario.IdUsuario, Usuario.NombreCompleto, Usuario.CorreoElectronico, Usuario.FechaNacimiento, Usuario.Rol, Usuario.Username, Estado.Descripcion"></asp:SqlDataSource>
            </div>
            <br />
            <br />
        </div>

            <asp:Button runat="server" Text="Actualizar" OnClick="Unnamed1_Click" />
    
    </div>

        

        
    </form>
</body>
</html>
