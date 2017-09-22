﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Red_libros.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <table class="table table-striped">
            <tr>
                <td class="auto-style9">
                    
                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CERRAR SESION"  class="btn btn-danger" />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style7">
                    
                   <asp:Button ID="BTTagregar" runat="server" OnClick="BTTagregar_Click" Text="AGREGAR LIBRO"  class="btn btn-danger" />
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style14">
                    </td>
                <td class="auto-style12"></td>
                <td class="auto-style7"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style11">NOMBRE DE LIBRO A BUSCAR</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style1">
                    
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="BUSCAR LIBRO" class="btn btn-success" />
                    
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style1">
                    
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="HACER CAMBIOS DE ADMINISTRADOR"  class="btn btn-success" />
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Image ID="pcbfoto" runat="server" Height="109px" Width="141px" />
                </td>
                <td class="auto-style5">
                    </td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style11">CODIGO DE LIBRO</td>
                <td class="auto-style15">
                    <asp:Label ID="lblcodigo" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Comprar" />
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">NOMBRE DE LIBRO</td>
                <td class="auto-style15">
                    <asp:Label ID="lblnombre" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    
                    AUTOR</td>
                <td class="auto-style14">
                    
                    <asp:Label ID="lblautor" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    
                    GENERO</td>
                <td class="auto-style14">
                    
                    <asp:Label ID="lblgenero" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    
                    DESCRIPCION</td>
                <td class="auto-style13">
                    
                    <asp:Label ID="lbldescripcion" runat="server"></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style16">
                    
                    &nbsp;</td>
                <td class="auto-style17">
                    
                    &nbsp;</td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    
                    &nbsp;</td>
                <td class="auto-style13">
                    
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    
                    &nbsp;</td>
                <td class="auto-style14">
                    
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    
                    &nbsp;</td>
                <td class="auto-style14">
                    
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    
                    &nbsp;</td>
                <td class="auto-style14">
                    
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div>
    </form>
</body>
</html>
