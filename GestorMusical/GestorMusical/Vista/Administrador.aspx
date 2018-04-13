<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Vista_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
    <style type="text/css">
        .auto-style3 {
            float: left;
            text-align: center;
            line-height: 50px;
            border: 4px solid white;
        }
    </style>
</head>
<body>
    
    <header>
     <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="#">Inicio</a></li>
            <li class="nivel1"><a href="#">Gestionar</a>
                <ul>
                    <li class="nivel2"><a href="Administrar/crearUsuario.aspx">Crear usuario</a> </li>
                    <li class="nivel2"><a href="Administrar/buscarUsuario.aspx">Modificar usuario</a></li>                    
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
            <li>
                <form runat ="server">
                    <asp:Button runat="server" Text="Salir" ID="btnSalir" CssClass="nivel1" Height="57px" OnClick="btnSalir_Click" Width="195px" BackColor="#33CCCC" Font-Size="Medium" />
                </form>                
            </li>

            <!-- <a href="/Vista/Ingresar.aspx">Salir</a> -->
            
        </ul>

    </nav>    
    </header>
        
</body>
</html>

