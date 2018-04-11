<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Vista_Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="Estilo/estiloNav.css" rel="stylesheet" />
    <title>Administrador</title>
</head>
<body>
    
    <header>
     <nav id="menuTop">
        <ul>
            <li class="nivel1"><a href="#">Inicio</a></li>
            <li class="nivel1"><a href="#">Gestionar</a>
                <ul>
                    <li class="nivel2"><a href="#">Crear usuario</a> </li>
                    <li class="nivel2"><a href="#">Modificar usuario</a></li>
                    <li class="nivel2"><a href="#">Eliminar usuario</a></li>
                </ul>                            
            </li>                
            <li class="nivel1"><a href="#">Consultas</a>
                <ul>
                    <li class="nivel2"><a href="#">Consultar usuario</a></li>
                    <li class="nivel2"><a href="#">Consultar álbumes</a></li>
                    <li class="nivel2"><a href="#">Consultar artistas</a></li>
                </ul>   
            </li>                

            <li class="nivel1"><a href="#">Genero</a></li>
            <li class="nivel1"><a href="#">Salir</a></li>
        </ul>

    </nav>    
    </header>
        
</body>
</html>

