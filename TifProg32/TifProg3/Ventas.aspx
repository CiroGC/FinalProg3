<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs"  UnobtrusiveValidationMode="None" Inherits="TifProg3.Ventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          body{
            font-family: Arial;
            background-image: url('/Imagenes/bg.jpg'); 
            text-align: center;

        }
        .auto-style1 {
             border: 4px solid #94d437;
            width: 300px;
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
            border: 4px solid #94d437;
            width: 210px;
            height: 41px;
        }
        .auto-style3 {
            width: 210px;
            height: 18px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style8 {
           
        }
        .auto-style9 {
            width: 436px;
            height: 34px;
        }
        .auto-style10 {
            height: 34px;
        }
        .auto-style11 {
            width: 436px;
            height: 18px;
        }
        .auto-style12 {
            height: 18px;
        }
        .auto-style13 {
            border: 4px solid #94d437;
            width: 402px;
            #HpInicio{text-decoration: none;}
        }
        .auto-style14 {
             border: 4px solid #94d437;
            text-align: center;
            background: #808080;
            margin-top: 30px;
            padding: 20px 30px;
            color: white;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            width: 100px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="VENTAS"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:HyperLink ID="HLInicio" runat="server" NavigateUrl="~/Inicio.aspx" Font-Bold="True" ForeColor="White">Ir a Inicio</asp:HyperLink>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="LbNombreUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:CompareValidator ID="validacion1" runat="server" ControlToValidate="TxtBusquedaVentas" ErrorMessage="CompareValidator" Font-Bold="True" ForeColor="#FF3300" Operator="GreaterThan" Type="Integer" ValueToCompare="0" TabIndex="1" ValidationGroup="1">INGRESE UN ENTERO MAYOR A 0</asp:CompareValidator>
                        </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="validacion2" runat="server" ControlToValidate="TxtBusquedaVentas" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="1">INGRESE UN VALOR</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:TextBox ID="TxtBusquedaVentas" runat="server" CssClass="auto-style5" Width="192px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="BtnFiltrarVentas" runat="server" Text="Filtrar" Width="83px" OnClick="BtnFiltrarVentas_Click" ValidationGroup="1" />
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="BtnMostrarTodasVentas" runat="server" Text="Mostrar Todos" OnClick="BtnMostrarTodasVentas_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22" colspan="3">
                        <asp:GridView ID="GvVentas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Horizontal" Width="532px">
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
            </table>
        </div>
    </form>
</body>
</html>
