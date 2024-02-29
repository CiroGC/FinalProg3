<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" UnobtrusiveValidationMode="None" Inherits="TifProg3.Carrito" %>

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
            margin-left: 40px;
        }
        .auto-style2 {
             border: 4px solid #94d437;
            width: 552px;
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
        .auto-style3 {
            height: 23px;
            border: 4px solid #94d437;
        }
        .auto-style4 {
            margin-bottom: 0px;
        }
        .auto-style5 {
            width: 144px;
            border: 4px solid #94d437;
        }
        .auto-style7 {
            width: 160px;
            border: 4px solid #94d437;
        }
        .auto-style9 {
            height: 22px;
        }
        .auto-style10 {
            height: 23px;
            text-align: center;
        }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="35px" Text="CARRITO"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HLInicio" runat="server" NavigateUrl="~/Inicio.aspx" Font-Bold="True" ForeColor="White">Ir a Inicio</asp:HyperLink>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="LbNombreUsuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="3">
            <asp:GridView ID="GridViewProductosCarrito" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="269px">
                             <AlternatingRowStyle BackColor="#BC82D8" />
                            <EditRowStyle BackColor="#94d437" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#94d437" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#BC82D8" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />


            </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblTextototal" runat="server" Font-Bold="False" Font-Size="16pt" Text="Total: $"></asp:Label>
            <asp:Label ID="LblTotal" runat="server" Font-Size="16pt"></asp:Label>
                    </td>
                    <td class="auto-style11">
            <asp:Button ID="btnFinalizarCompra" runat="server" Text="Finalizar Compra" CssClass="auto-style4" OnClick="btnFinalizarCompra_Click" Width="116px" />
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
            </table>
                    <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCompraFinalizada" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
