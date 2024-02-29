<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" UnobtrusiveValidationMode="None" Inherits="TifProg3.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
         body{
            font-family: Arial;
            background-image: url('/Imagenes/bg.jpg'); 
        }
        .auto-style1 {
           
            border: 4px solid #94d437;
            width: 273px;
            text-align: center;
            background: #808080;
            margin-top: 180px;
            padding: 20px 30px;
            color: white;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            box-shadow: 7px 13px 37px #000000;
        }
        .auto-style11 {
           
            border-bottom: 4px solid #94d437;
        }
        .auto-style13 {
           text-align: center;
        }
        .x {
            border: 4px solid #94d437;
            text-align: center;
            background: #808080;
            margin-top: 30px;
            padding: 20px 30px;
            color: white;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            
        }
        .auto-style15 {
            width: 1144px;

        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="x ">
                    <asp:Label ID="LbNombreUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                        <asp:Label ID="LblInicio0" runat="server" Font-Bold="True" Font-Size="X-Large" Text="INICIO"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">
                        <asp:HyperLink ID="HpIniciarSesion" runat="server" Font-Underline="True" NavigateUrl="~/IniciarSesion.aspx">- Iniciar Sesion</asp:HyperLink>
                    </td>
            </tr>
            <tr>
                
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">
                        <asp:HyperLink ID="HpProductos0" runat="server" NavigateUrl="~/Productos.aspx">- Productos</asp:HyperLink>
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">
                        <asp:HyperLink ID="HpCategorias0" runat="server" Font-Underline="True" NavigateUrl="~/Categorias.aspx">- Categorias</asp:HyperLink>
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">
                        <asp:HyperLink ID="HpCliente0" runat="server" Font-Underline="True" NavigateUrl="~/Cliente.aspx">- Cliente</asp:HyperLink>
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">
                        <asp:HyperLink ID="HpVentas" runat="server" Font-Underline="True" NavigateUrl="~/Ventas.aspx">- Ventas</asp:HyperLink>
                    </td>
            </tr>
            <tr>
                <td class="auto-style13">
                        <asp:HyperLink ID="HpCarrito0" runat="server" Font-Underline="True" NavigateUrl="~/Carrito.aspx">- Carrito</asp:HyperLink>
                    </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
