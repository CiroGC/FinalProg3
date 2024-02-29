<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" UnobtrusiveValidationMode="None" Inherits="TifProg3.Registrarse" %>

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
              
            height: 200px;
            background: #808080;
            margin-top: 180px;
            box-shadow: 7px 13px 37px #000000;
            padding: 20px 30px;
            border-top: 4px solid #94d437;
            color: white;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            width: 420px;
        }
       
         .auto-style7 {
           text-align: center;
            height: 40px;
            margin-bottom: 30px;
            width: 70px;
            border-bottom-style: solid;
            border-bottom-color: inherit;
            border-bottom-width: 1px;
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
        }
         
        .auto-style4 {  
            #btnRegistrarse{width: 100%;
            width: 70px;
        }
        .auto-style8 {
            width: 70px;
        }
        .auto-style10 {
            width: 934px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="LblRegistro" runat="server" Font-Bold="True" Font-Size="X-Large" Text="REGISTRARSE"></asp:Label>
                     
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">Ingrese su usuario:<asp:TextBox ID="txtUsuarioCreacion" runat="server"></asp:TextBox>
                        

                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuarioCreacion" ErrorMessage="RequiredFieldValidator" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Ingrese su contraseña:<asp:TextBox ID="txtContraseñaCreacion" runat="server" input type="password" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContraseñaCreacion" ErrorMessage="RequiredFieldValidator" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Ingrese su contraseña nuevamente:<asp:TextBox ID="txtContraseñaCreacion0" runat="server" input type="password" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContraseñaCreacion0" ErrorMessage="RequiredFieldValidator" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" OnClick="btnRegistrar" ValidationGroup="1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtContraseñaCreacion" ControlToValidate="txtContraseñaCreacion0" ErrorMessage="CompareValidator" Font-Bold="True" ForeColor="White" ValidationGroup="1">LAS CONTRASEÑAS NO SON IGUALES</asp:CompareValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
