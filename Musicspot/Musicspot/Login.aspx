<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="Estilos/estilo1.css" rel="stylesheet" />
    <title>Registro</title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 549px;
        }
        .auto-style4 {
            width: 194px;
        }
        .auto-style5 {
            width: 549px;
            text-align: right;
        }
        .auto-style6 {
            width: 549px;
            height: 23px;
            text-align: right;
        }
        .auto-style7 {
            width: 194px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 194px;
            text-align: center;
        }
    </style>
</head>
<body>

           <form id="form1" runat="server">
        <p class="auto-style1">
            <strong>Bienvenido</strong></p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Nombre completo:</td>
                <td class="auto-style4">
                    <div>
                        <asp:TextBox ID="txtNombre" runat="server" Width="210px"></asp:TextBox>
                    </div>                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Correo:</td>
                <td class="auto-style4">
                    <div>
                        <asp:TextBox ID="txtCorreo" runat="server" Width="210px"></asp:TextBox>
                    </div>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Usuario:</td>
                <td class="auto-style7">
                    <div>
                        <asp:TextBox ID="txtUsuario" runat="server" Width="210px" Height="20px"></asp:TextBox>
                    </div>                    
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">Contraseña:</td>
                <td class="auto-style4">
                    <div>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="210px" ></asp:TextBox>
                    </div>                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Re-Contraseña</td>
                <td class="auto-style4">
                    <div>
                        <asp:TextBox ID="txtPassword2" TextMode="Password" runat="server" Width="210px"></asp:TextBox>
                    </div>                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Fecha de nacimiento" />
                    
                    
                </td>
                <td class="auto-style4">
                    <asp:Calendar ID="Calendar1" runat="server" Height="117px" OnSelectionChanged="Calendar1_SelectionChanged" Width="175px"></asp:Calendar>
                </td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server" Width="131px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" Width="220px" OnClick="btnRegistrar_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>                
                <td class="auto-style9">

                    <a href="Vista/Ingresar.aspx">Ingresar</a>                    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>        
       
    
</body>
</html>
