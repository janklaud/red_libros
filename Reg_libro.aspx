<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg_libro.aspx.cs" Inherits="Red_libros.Reg_libro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 37px;
        }
        .auto-style4 {
            height: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
        <table class="table table-striped">
            <tr>
                <td class="auto-style10">CODIGO DE LIBRO</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtcodlibro" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcodlibro" ErrorMessage="UNICAMENTE VALORES NUMERICOS QUE NO PASE DE 10 CARACTERES" SetFocusOnError="True" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style12">
                    
                    <asp:Button ID="bttregresar" runat="server" OnClick="bttregresar_Click" Text="REGRESAR" class="btn btn-success" />
                </td>
            </tr>
            <tr>
                <td>DESCRIPCION</td>
                <td>
                    <asp:TextBox ID="txtdescripcion" runat="server" Height="68px" Width="242px" MaxLength="50"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style13">GENERO</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtgenero" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">AUTOR</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtautor" runat="server" MaxLength="20"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style16">NOMBRE DEL LIBRO</td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtnombrelibro" runat="server" MaxLength="30"></asp:TextBox>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style4">FOTO LIBRO</td>
                <td class="auto-style9">
                    <asp:Image ID="pcbfoto" runat="server" Height="126px" Width="124px" />
                    <asp:FileUpload ID="tufoto" runat="server" CssClass="mb-0" />
                    
                    <asp:Button ID="bttsubirfoto" runat="server" OnClick="bttsubirfoto_Click" Text="SUBIR"  class="btn btn-danger" />

                </td>
                <td class="auto-style2">
                    
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">PDF LIBRO</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    
                    <asp:Button ID="bttsubirpdf" runat="server" Text="SUBIR"   class="btn btn-danger" />
                </td>
                <td class="auto-style3">
                    
                    
                    <asp:Button ID="BTAGREGAR" runat="server" OnClick="BTAGREGAR_Click" Text="AGREGAR LIBRO" class="btn btn-success" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style2">
                    
                    
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
