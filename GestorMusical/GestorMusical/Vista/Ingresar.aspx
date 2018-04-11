<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ingresar.aspx.cs" Inherits="Vista_Ingresar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Ingresar</title>
    
    <style type="text/css">
        .auto-style7 {
            text-align: center;
            font-size: large;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style10 {
            width: 629px;
            text-align: right;
        }
        .auto-style11 {
            text-align: left;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="333px">
            <div class="auto-style7" >
                Ingresar<asp:Panel ID="Panel2" runat="server" Height="309px">
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style10">Usuario:</td>
                            <td class="auto-style11">
                                <asp:TextBox ID="txtUsuarioIngresar" runat="server" Width="169px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Contraseña:</td>
                            <td class="auto-style11">
                                <asp:TextBox ID="txtContraseñaIngresar" TextMode="Password" runat="server" Width="169px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style11"><a href="#">Recordar contraseña</a></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style11">
                                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" Width="169px" OnClick="btnIngresar_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
        </asp:Panel>
    </form>
    
</body>
</html>
