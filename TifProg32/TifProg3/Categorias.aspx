<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" UnobtrusiveValidationMode="None" Inherits="TifProg3.Categorias" %>

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
        .GvCategorias{
            text-align:center  ;
        }
        .auto-style1 {
            border: 4px solid #94d437;
            width: 554px;
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
            text-align: center;
            background: #808080;
            margin-top: 30px;
            padding: 20px 30px;
            color: white;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            width: 201px;
        }
        .auto-style4 {
           border: 4px solid #94d437;
            width: 214px;
            }
        .auto-style6 {
             text-align:center;
            margin-left: 0px;
           
        }
        .auto-style9 {
               border: 4px solid #94d437;
            width: 402px;
            #HpInicio{text-decoration: none;}
        }
        .auto-style10 {
            height: 51px;
            width: 402px;
        }
        .auto-style11 {
            height: 23px;
            width: 402px;
        }
        .auto-style16 {
             border: 4px solid #94d437;
            width: 215px;
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
        .auto-style30 {
             text-align: center;
        }
        .auto-style18 {
            height: 38px;
        }
        .auto-style19 {
            width: 89%;
            height: 406px;
            margin-right: 0px;
        }
        .auto-style20 {
            width: 426px;
        }
        .auto-style22 {
            height: 23px;
            width: 201px;
        }
        .auto-style23 {
            width: 927px;
        }
        .auto-style31 {
            text-align: center;
            margin-left: 0px;
            width: 214px;
        }
        .auto-style32 {
            height: 51px;
            width: 214px;
        }
        .auto-style33 {
            height: 51px;
            width: 201px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style0" runat="server" id="divCategorias" visible="true">
            <table class="auto-style19">
                <tr>
                    <td class="auto-style20">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LblCategorias" runat="server" Font-Bold="True" Font-Size="X-Large" Text="CATEGORIAS"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HpInicio" runat="server" NavigateUrl="~/Inicio.aspx" Font-Bold="True" ForeColor="White">Ir a Inicio</asp:HyperLink>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="LbNombreUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        <asp:CompareValidator ID="validacion1" runat="server" ControlToValidate="txtFiltroCategoria" ErrorMessage="CompareValidator" Font-Bold="True" ForeColor="#FF3300" Operator="GreaterThan" Type="Integer" ValueToCompare="0" TabIndex="1" ValidationGroup="1">INGRESE UN ENTERO MAYOR A 0</asp:CompareValidator>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="validacion2" runat="server" ControlToValidate="txtFiltroCategoria" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="1">INGRESE UN VALOR</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtFiltroCategoria" placeholder="Ingrese el ID de una Categoria" runat="server" Width="222px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="BtnFiltrarCategorias" runat="server" Text="Filtrar" OnClick="BtnFiltrarCategorias_Click" ValidationGroup="1" />
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="BtnMostrarTodasCategorias" runat="server" Text="Mostrar Todos" OnClick="BtnMostrarTodasCategorias_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="3">
                        <asp:GridView ID="GvCategorias" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Horizontal" Width="532px">
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
                    </td>
                    <td class="auto-style23">
        <div class="auto-style16" runat="server" id="divAdministrador" visible="false">
            <br />
            <br />
                        <asp:Label ID="LblCategoriasadmin" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ADMINISTRADOR DE CATEGORIAS"></asp:Label>
            <br />
            <table class="auto-style30">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="validacion3" runat="server" ControlToValidate="txbxCategoria" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="2">INGRESE UN VALOR</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">Categoria:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txbxCategoria" runat="server" Width="113px" ValidationGroup="2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCrearCategoria" runat="server" OnClick="btnCrearCategoria_Click" Text="Crear Categoria" ValidationGroup="2" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
                    </td>
                    <td class="auto-style23">
        <div class="auto-style16" runat="server" id="divAdministrador2" visible="false">
            <br />
            <br />
                        <asp:Label ID="LblCategoriasadmin0" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ADMINISTRADOR DE CATEGORIAS"></asp:Label>
            <br />
            <table class="auto-style30">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="validacion4" runat="server" ControlToValidate="txbxCategoriaBaja" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="3">INGRESE UN VALOR</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">idCategoria:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txbxCategoriaBaja" runat="server" Width="113px" ValidationGroup="3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:CompareValidator ID="validacion5" runat="server" ControlToValidate="txbxCategoriaBaja" ErrorMessage="CompareValidator" Font-Bold="True" ForeColor="#FF3300" Operator="GreaterThan" Type="Integer" ValidationGroup="3" ValueToCompare="0">INGRESE UN ENTERO MAYOR A 0</asp:CompareValidator>
                    </td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnEliminarCategoria" runat="server" OnClick="BtnEliminarCategoria_Click" Text="EliminarCategoria" ValidationGroup="3" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
