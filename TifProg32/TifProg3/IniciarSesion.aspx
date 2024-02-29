<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" UnobtrusiveValidationMode="None" Inherits="TifProg3.IniciarSesion" %>

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
            width: 400px;
            height: 200px;
            background: #808080;
            margin: auto;
            margin-top: 180px;
            box-shadow: 7px 13px 37px #000000;
            padding: 20px 30px;
            border-top: 4px solid #94d437;
            color: white;

        }
       
         .auto-style7 {
           margin: 0;
            text-align: center;
            height: 40px;
            margin-bottom: 30px;
            border-bottom: 1px solid;
           
            
        }
         
        .auto-style4 {  
            #BtnIngresar{width: 100%; text-align: center; height: 35px; background: #94d437; border: none; color: white; margin-bottom : 16px; }
            #btnRegistrarse{width: 100%; text-align: center; height: 35px; background: #94d437; border: none; color: white; margin-bottom : 16px;}
            border-bottom: 1px solid;
        }
        
        .auto-style8 {
            
            #TxtbNUsuario{width:100%; border: 1px solid #94d437; margin-bottom: 15px;}
            #TxtbContraseña{width:100%; border: 1px solid #94d437; margin-bottom: 15px;}
            
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="LblIniciarSesion" runat="server" Font-Bold="True" Font-Size="X-Large" Text="INICIAR SESION"></asp:Label>
                     
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Ingrese su usuario:<asp:TextBox ID="TxtbNUsuario" runat="server"></asp:TextBox>
                        

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Ingrese su contraseña:<asp:TextBox ID="TxtbContraseña" runat="server" input type="password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="BtnIngresar" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnRegistrarse" runat="server" OnClick="btn_RegistrarseClick" Text="Registrarse" />
                    </td>
                </tr>
            </table>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblIniciarSesionError" runat="server" ForeColor="#CC0000" Font-Bold="True"></asp:Label>
        </p>
    </form>
</body>
</html>
