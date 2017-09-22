<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGINADMIN.aspx.cs" Inherits="Red_libros.LOGINADMIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            width: 306px;
        }
        .auto-style2 {
            width: 276px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
        <table class="table table-striped">
            <tr>
                <td class="auto-style1">USUARIO (ADMINISTRADOR)</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtadmin" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">CONTRASEÑA</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INGRESAR" class="btn btn-success" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    
                    <asp:Button ID="Button2" runat="server" Text="VOLVER" class="btn btn-danger" OnClick="Button2_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
