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
    public partial class Registrarse : System.Web.UI.Page
    {
        NegocioClientes negCli = new NegocioClientes();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistrar(object sender, EventArgs e)
        {
            String usuario = txtUsuarioCreacion.Text;
            String pass = txtContraseñaCreacion.Text;

            negCli.createNewCliente(usuario, pass, 2);


            Session["NombreUsuario"] = usuario;
            Session["IdUsuario"] = usuario;
            Session["PassUsuario"] = pass;
            Session["RolUsuario"] = 2;
            Response.Redirect("Inicio.aspx");

        }

    }
}