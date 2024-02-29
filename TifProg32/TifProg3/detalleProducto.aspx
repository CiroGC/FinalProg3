<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalleProducto.aspx.cs" UnobtrusiveValidationMode="None" Inherits="TifProg3.detalleProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        body{
            font-family: Arial;
            background-image: url('/Imagenes/bg.jpg'); 
        }
        .auto-style1 {
            border: 4px solid #94d437;
            width: 759px;
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
        .auto-style2 {
             
            border-right: 4px solid #94d437;
            border-top: 4px solid #94d437;
            border-left:4px solid #94d437;
            border-bottom: 4px solid #94d437;
        }
        .auto-style6 {
          
            border-right: 4px solid #94d437;
            border-top: 4px solid #94d437;
            border-left:4px solid #94d437;
            border-bottom: 4px solid #94d437;
            #HLInicio{text-decoration: none;}
        }
        .auto-style3 {
            width: 223px;
            height: 20px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style10 {
            width: 223px;
            height: 15px;
        }
        .auto-style14 {
            width: 223px;
            height: 246px;
        }
        .auto-style15 {
            height: 246px;
            margin-top:40px;
            text-align:center;
        }
        .auto-style18 {
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
        .auto-style19 {
            height: 1px;
        }
        .auto-style20 {
            height: 20px;
            width: 416px;
        }
        .auto-style21 {
            height: 20px;
            width: 440px;
        }
        .auto-style22 {
            height: 15px;
            width: 416px;
        }
        .auto-style23 {
            height: 15px;
            width: 440px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblDetalleProd" runat="server" Font-Bold="True" Font-Size="X-Large" Height="35px" Text="DETALLES PRODUCTO" Width="391px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:HyperLink ID="HLInicio" runat="server" NavigateUrl="~/Inicio.aspx" Font-Bold="True" ForeColor="White">Ir a Inicio</asp:HyperLink>
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="LbNombreUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        </td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style22" aria-multiline="True">
                        &nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style23">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Image ID="ImagenProducto" runat="server" Height="300px" Width="417px" />
                    </td>
                    <td class="auto-style15" colspan="2">
                        <asp:Label ID="lblTituloProducto" runat="server" Font-Bold="True" Font-Size="17pt" ></asp:Label>
                        <asp:BulletedList ID="BulletedList1" runat="server" Height="21px" Width="150px">
                        </asp:BulletedList>
            <asp:Button ID="btnAgregarACarrito" runat="server" Text="Agregar al Carrito" Font-Bold="True" Height="39px" Width="167px" OnClick="btnAgregarACarrito_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="3">
                    </td>
                </tr>
            </table>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
    </form>
</body>
</html>
