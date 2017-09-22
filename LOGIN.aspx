<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="Red_libros.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body >
    <form id="form1" runat="server">
    <div class="container">
           <table class="table table-striped">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>USUARIO</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtusuario" runat="server" class="form-control"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="lblmensajeusua" runat="server"></asp:Label>
                </td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style11">
                    <asp:RegularExpressionValidator ID="REvusu" runat="server" ControlToValidate="txtusuario" ErrorMessage="EL NOMBRE NO PUEDE PASAR DE LOS 30 CARACTERES Y TENER UN MINIMO DE 3 CARACTERES SIN USAR ESPACIOS" SetFocusOnError="True" ValidationExpression="([A-Z]|[a-z]|[0-9])([A-Z]|[a-z]|[0-9])([A-Z]|[a-z]|[0-9])+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>CONTRASEÑA</strong></td>
                <td class="auto-style3">
                    
                    <asp:TextBox ID="txtcontraseña" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="REVcont" runat="server" ControlToValidate="txtcontraseña" ErrorMessage="DEBE TENER MINIMO 4 CARACTERES Y UN MAXIMO DE 50" SetFocusOnError="True" ValidationExpression="([a-z]|[A-Z]|[0-9])([a-z]|[A-Z]|[0-9])([a-z]|[A-Z]|[0-9])([a-z]|[A-Z]|[0-9])+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="BTTiniciar" runat="server" OnClick="BTTiniciar_Click" Text="INICIAR SESION" class="btn btn-success" />
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style20"></td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">no tienes cuenta?</td>
                <td class="auto-style5">
                    
                    <asp:Button ID="BTTregistrar" runat="server" OnClick="BTTregistrar_Click" Text="REGISTRAR" class="btn btn-danger" />
                </td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    
    </div>

    </form>
</body>
</html>
