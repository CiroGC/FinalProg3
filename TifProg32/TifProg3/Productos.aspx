<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs"  UnobtrusiveValidationMode="None" Inherits="TifProg3.WebForm1" %>

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
            width: 236px;
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
        .cuadroProductos {
            width: 236px;
            border-right: 4px solid #94d437;
            border-top: 4px solid #94d437;
            border-left:4px solid #94d437;
            border-bottom: 4px solid #94d437;
            

        }
        
        .cuadroHiperLink {
            width: 100px;
            #HLInicio{text-decoration:none;}

           

        }
        
        .auto-style8 {
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
       
        .auto-style7 {
            height: 49px;
            text-align: center;
        }
        .cuadroGridView {
            text-align:center;
            margin-left: 0px;
            box-shadow: 7px 13px 37px #000000;
        }
        .auto-style9 {
            width: 159px;
        }
        .auto-style11 {
            width: 203px;
        }
        .auto-style13 {
            width: 159px;
            border-right: 4px solid #94d437;
            border-top: 4px solid #94d437;
            border-left:4px solid #94d437;
            border-bottom: 4px solid #94d437;
            #HLInicio{text-decoration: none;}

        }
        .auto-style14 {
            height: 310px;
               border: 4px solid #94d437;
            width: 237px;
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
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 111px;
        }
        .auto-style17 {
            width: 111px;
            height: 26px;
        }
        .auto-style18 {
            height: 26px;
        }
        .auto-style21 {
            width: 271px;
        }
        .auto-style22 {
            width: 94%;
            height: 633px;
        }
        .auto-style23 {
            width: 102px;
        }
        .auto-style30 {
            text-align:center;
            width: 245px;
        }
        .auto-style35 {
            width: 206px;
        }
        .auto-style37 {
            height: 209px;
            border: 4px solid #94d437;
            width: 236px;
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
        .auto-style38 {
            width: 106px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style22">
                <tr>
                    <td class="auto-style21">
            <table class="auto-style1">
                <tr>
                    <td class="cuadroProductos">
                        <asp:Label ID="lblProductos" runat="server" Font-Bold="True" Font-Size="X-Large" Text="PRODUCTOS"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:HyperLink ID="HLInicio" runat="server" NavigateUrl="~/Inicio.aspx" BorderColor="#CC99FF" Font-Bold="True" placeholder="Ingrese ID a Buscar" ForeColor="White" Width="75px">Ir a Inicio</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="LbNombreUsuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                
                    <td class="auto-style6">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtBusquedaProductos" ErrorMessage="CompareValidator" Operator="GreaterThan" Type="Integer" ValidationGroup="1" ValueToCompare="0">Ingrese un numero valido</asp:CompareValidator>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="requiredfiltro" runat="server" ControlToValidate="TxtBusquedaProductos" ErrorMessage="RequiredFieldValidator" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TxtBusquedaProductos" runat="server" placeholder="Ingrese el ID de un Producto" CssClass="auto-style5" Width="182px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="BtnFiltrarProductos" runat="server" Text="Filtrar" OnClick="BtnFiltrarProductos_Click" Width="52px" CssClass="auto-style5" ValidationGroup="1" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="BtnMostrarTodosProductos" runat="server" Text="Mostrar Todos" OnClick="BtnMostrarTodosProductos_Click" Width="103px" />
                    </td>
                </tr>
                <tr>
                    <td class="cuadroGridview" colspan="3">
                        <asp:ListView ID="lvProductos" runat="server" DataKeyNames="Id Producto" GroupItemCount="3">
                            
                            
                            
                            <EditItemTemplate>
                                <td runat="server" style="background-color: #999999;">Id Producto:
                                    <asp:Label ID="Id_ProductoLabel1" runat="server" Text='<%# Eval("[Id Producto]") %>' />
                                    <br />Nombre:
                                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                                    <br />Precio:
                                    <asp:TextBox ID="PrecioTextBox" runat="server" Text='<%# Bind("Precio") %>' />
                                    <br />Stock:
                                    <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                                    <br />Categoria:
                                    <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                    <br /></td>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>No se han devuelto datos.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
<td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <InsertItemTemplate>
                                <td runat="server" style="">Nombre:
                                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                                    <br />Precio:
                                    <asp:TextBox ID="PrecioTextBox" runat="server" Text='<%# Bind("Precio") %>' />
                                    <br />Stock:
                                    <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                                    <br />Categoria:
                                    <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                    <br /></td>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <td runat="server" style="background-color: #808080; color: #333333;">
                                    <%--<asp:Image ID="Image2" runat="server" ImageUrl= '~/Imagenes/<%# Bind("[Id Producto]") %>.jpg' Width="50px" Height="50px" />--%>
                                    <%--<asp:ImageButton ID="Image2" runat="server" ImageUrl='~/Imagenes/<%= Bind("rutaImagen") %>.jpg' Width="50px" Height="50px" />--%>
                                    <asp:ImageButton ID="ImagenProducto" runat="server" Height="70px" ImageUrl='<%# Bind("rutaImagen") %>' Width="70px" />
                                    <%--'~/Imagenes/<%# Eval("[Id Producto]") != DBNull.Value ? Eval("[Id Producto]") : "bg" %>.jpg'--%>
                                    <br />
                                    Id:
                                    <asp:Label ID="Id_ProductoLabel" runat="server" Text='<%# Eval("[Id Producto]") %>' />
                                    <br />&nbsp;<asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                    <br />
                                    $
                                    <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
                                    <br />Stock:
                                    <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                                    <br />Categoria:
                                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                                    <asp:Button ID="btnVerMas" runat="server" CommandArgument='<%# Bind("[Id Producto]")%>' CommandName="eventoVerMas" OnCommand="btnVerMas_Command" text="Ver Mas"/>
                                    <br /></td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #94d437;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    <asp:NumericPagerField />
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">Id Producto:
                                    <asp:Label ID="Id_ProductoLabel" runat="server" Text='<%# Eval("[Id Producto]") %>' />
                                    <br />Nombre:
                                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                    <br />Precio:
                                    <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
                                    <br />Stock:
                                    <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                                    <br />Categoria:
                                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                                    <br /></td>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="DataSourceProd" runat="server" ConnectionString="<%$ ConnectionStrings:eCommerceProg3ConnectionString %>" SelectCommand="getAllProducts" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                       
                    </td>
                </tr>
            </table>
                    </td>
                    <td class="auto-style23">
        <div class="auto-style14" runat="server" id="divAdministrador" visible="false">
            <br />
&nbsp;
            <br />
&nbsp;<asp:Label ID="lblTituloAdm" runat="server" Text="ADMINISTRADOR DE PRODUCTOS" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style15" id="tablaAdministrador">
                <tr>
                    <td class="auto-style17">Nombre:</td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="validadornombreprod" runat="server" ControlToValidate="txbxNombre" ErrorMessage="Ingresar Nombre" ValidationGroup="2">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txbxNombre" runat="server" ValidationGroup="2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Precio: </td>
                    <td class="auto-style16">
                        <asp:CompareValidator ID="validadorPrecio" runat="server" ControlToValidate="txbxPrecio" ErrorMessage="Ingresar Precio Valido" Operator="GreaterThan" Type="Double" ValidationGroup="2" ValueToCompare="0">*</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="requiredPrecio" runat="server" ControlToValidate="txbxPrecio" ErrorMessage="RequiredFieldValidator" ValidationGroup="2">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox  ID="txbxPrecio" runat="server" ValidationGroup="2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Stock:</td>
                    <td class="auto-style16">
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txbxStock" ErrorMessage="Ingresar Stock Valido" Operator="GreaterThan" Type="Integer" ValidationGroup="2" ValueToCompare="0">*</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="requiredStock" runat="server" ControlToValidate="txbxStock" ErrorMessage="RequiredFieldValidator" ValidationGroup="2"> *</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txbxStock" runat="server" ValidationGroup="2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Categoria</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="ddlCategoria" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCrearProducto" runat="server" Text="Crear Producto" OnClick="btnCrearProducto_Click" ValidationGroup="2" />
        </div>
                    </td>
                    <td class="auto-style38">
        <div class="auto-style37" runat="server" id="divAdministrador2" visible="false">
            <br />
                        <asp:Label ID="lblProducto2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ADMINISTRADOR DE PRODUCTOS"></asp:Label>
            <br />
            <table class="auto-style30">
                <tr>
                    <td class="auto-style15">idProducto:</td>
                    <td class="auto-style35">
                        <asp:TextBox ID="txbxID" runat="server" Width="139px"></asp:TextBox>
                    </td>
                    <td class="auto-style35">
                        <asp:CompareValidator ID="validadorid" runat="server" ControlToValidate="txbxID" ErrorMessage="Ingresar ID Valido" Operator="GreaterThan" Type="Integer" ValidationGroup="3" ValueToCompare="0">*</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="requiredID" runat="server" ControlToValidate="txbxID" ErrorMessage="RequiredFieldValidator" ValidationGroup="3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="LblValidacion2" runat="server"></asp:Label>
                    </td>
                </tr>
                </table>
            <asp:Button ID="BtnEliminarProducto" runat="server" OnClick="BtnEliminarUsuario_Click" Text="Eliminar Producto" ValidationGroup="3" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style23">
                        <asp:ValidationSummary ID="sumarioValidaciones1" runat="server" ValidationGroup="2" Width="321px" />
                    </td>
                    <td class="auto-style38">
                        <asp:ValidationSummary ID="sumarioValidaciones2" runat="server" ValidationGroup="3" Width="232px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
