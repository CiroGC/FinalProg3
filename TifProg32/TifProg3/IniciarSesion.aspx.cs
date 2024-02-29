using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;

namespace TifProg3
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        NegocioClientes negCli = new NegocioClientes();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            String usuario = TxtbNUsuario.Text;
            String pass = TxtbContraseña.Text;

            DataTable dtCliente = negCli.requestIniciarSesion(usuario, pass);
            
            
            if ((dtCliente.Rows.Count > 0)&&(!string.IsNullOrWhiteSpace(TxtbNUsuario.Text)))
            {
                string nombreUsuario = dtCliente.Rows[0]["Usuraio_Cl"].ToString();
                string passUsuario = dtCliente.Rows[0]["Contrasenia_Cl"].ToString();
                int idUsuario = Convert.ToInt32(dtCliente.Rows[0]["IdCliente_Cl"]);
                int rolUsuario = Convert.ToInt32(dtCliente.Rows[0]["idRol_Cl"]);
                int idCarrito = Convert.ToInt32(dtCliente.Rows[0]["CodCarrito_Cl"]);
                Session["NombreUsuario"] = nombreUsuario;
                Session["IdUsuario"] = idUsuario;
                Session["PassUsuario"] = passUsuario;
                Session["RolUsuario"] = rolUsuario;
                Session["CodCarritoUsuario"] = idCarrito;
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                lblIniciarSesionError.Text = "Usuario y/o contraseña incorrectas.";
            }
        }

        protected void btn_RegistrarseClick(object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }
    }
}