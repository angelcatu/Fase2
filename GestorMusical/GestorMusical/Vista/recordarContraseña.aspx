<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recordarContraseña.aspx.cs" Inherits="Vista_recordarContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="Estilo/estilo1.css" rel="stylesheet" />
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
        .auto-style10 {
            width: 549px;
            text-align: right;
            height: 19px;
        }
        .auto-style11 {
            width: 194px;
            height: 19px;
        }
        .auto-style12 {
            height: 19px;
        }
        .auto-style13 {
            width: 194px;
            height: 19px;
            text-align: center;
        }
        .auto-style14 {
            width: 194px;
            text-align: center;
        }
    </style>
</head>
<body>

           <form id="form1" runat="server">
        <p class="auto-style1">
            Recordar</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Fecha nacimiento:</td>
                <td class="auto-style4">
                    <div>
                        <asp:TextBox ID="txtNacimiento" runat="server" Width="210px" TextMode="Date"></asp:TextBox>
                    </div>                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Correo:</td>
                <td class="auto-style4">
                    <div>
                        <asp:TextBox ID="txtCorreo" runat="server" Width="210px" TextMode="Email"></asp:TextBox>
                    </div>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <div>
                    </div>                    
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <div>
                    <asp:Button ID="btnRecordar" runat="server" Text="Recordar" Width="220px" OnClick="btnRecordar_Click"  />
                    </div>                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    <div>
                    </div>                    
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lbVerContraseña" runat="server"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>                
                <td class="auto-style14">

                    <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" Width="218px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>        
       
    
</body>
</html>


