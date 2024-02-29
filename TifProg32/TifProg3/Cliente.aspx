<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" UnobtrusiveValidationMode="None" Inherits="TifProg3.Clientes" %>

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
            width: 298px;
        }
        .auto-style3 {
            width: 298px;
            height: 49px;
            border-bottom: 4px solid #94d437;
            border-top:  4px solid #94d437;
        }
        .auto-style10 {
            width: 298px;
            height: 181px;
        }
        .auto-style14 {
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
        .auto-style15 {
            width: 92px;
        }
        .auto-style30 {
            text-align:center;
            width: 308px;
        }
        .auto-style31 {
            width: 92px;
            height: 26px;
        }
        .auto-style32 {
            height: 26px;
            width: 206px;
        }
        .auto-style33 {
            width: 84px;
        }
        .auto-style34 {
            width: 1129px;
        }
        .auto-style35 {
            width: 206px;
        }
        .auto-style36 {
            width: 106px;
        }
        .auto-style37 {
            width: 298px;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style18" runat="server" id="divCliente" visible="true">
            <table class="auto-style34">
                <tr>
                    <td>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HLInicio" runat="server" NavigateUrl="~/Inicio.aspx" Font-Bold="True" ForeColor="White">Ir a Inicio</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblCliente" runat="server" Font-Bold="True" Font-Size="X-Large" Text="INFORMACION CLIENTE"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario: "></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblContrasenia" runat="server" Text="Contraseña: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">
                        Cantidad Compras:
                        <asp:Label ID="lblCompras" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;<asp:Button ID="btnEditarInfo" runat="server" Text="Editar Informacion" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
                    </td>
                    <td class="auto-style36">
        <div class="auto-style14" runat="server" id="divAdministrador" visible="false">
            <br />
                        <asp:Label ID="lblCliente0" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ADMINISTRADOR DE CLIENTES"></asp:Label>
            <br />
            <table class="auto-style30">
                <tr>
                    <td class="auto-style15">Usuario:</td>
                    <td class="auto-style35">
                        <asp:TextBox ID="txbxUsuario" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="auto-style35">
                        <asp:RequiredFieldValidator ID="validacionAdminNombre" runat="server" ControlToValidate="txbxUsuario" ErrorMessage="INGRESAR VALOR EN USUARIO" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31">Contraseña:</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="txbxContrasenia" runat="server" Width="162px"></asp:TextBox>
                    </td>
                    <td class="auto-style32">
                        <asp:RequiredFieldValidator ID="validacionAdminNombre0" runat="server" ControlToValidate="txbxContrasenia" ErrorMessage="INGRESAR VALOR EN CONTRASEÑA" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Rol:</td>
                    <td class="auto-style35">
                        <asp:DropDownList ID="ddlRol" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style35">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style35">
                        &nbsp;</td>
                    <td class="auto-style35">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" OnClick="btnCrearUsuario_Click" ValidationGroup="1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
                        <br />
                    </td>
                    <td class="auto-style33">
        <div class="auto-style14" runat="server" id="divAdministrador2" visible="false">
            <br />
                        <asp:Label ID="lblCliente2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ADMINISTRADOR DE CLIENTES"></asp:Label>
            <br />
            <table class="auto-style30">
                <tr>
                    <td class="auto-style15">idUsuario:</td>
                    <td class="auto-style35">
                        <asp:TextBox ID="txbxID" runat="server" Width="160px" ValidationGroup="2"></asp:TextBox>
                    </td>
                    <td class="auto-style35">
                        <asp:RequiredFieldValidator ID="requiredid" runat="server" ControlToValidate="txbxID" ErrorMessage="RequiredFieldValidator" ValidationGroup="2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:CompareValidator ID="compareid" runat="server" ControlToValidate="txbxID" ErrorMessage="CompareValidator" Font-Bold="True" Operator="GreaterThan" Type="Integer" ValidationGroup="2" ValueToCompare="0">INGRESE UN ENTERO MAYOR A 0</asp:CompareValidator>
                    </td>
                </tr>
                </table>
            <asp:Button ID="BtnEliminarUsuario" runat="server" OnClick="BtnEliminarUsuario_Click" Text="Eliminar Usuario" ValidationGroup="2" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style36">
                        &nbsp;</td>
                    <td class="auto-style33">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
