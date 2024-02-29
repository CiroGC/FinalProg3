using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace TifProg3
{
    public partial class Clientes : System.Web.UI.Page
    {
        NegocioClientes negCli = new NegocioClientes();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["NombreUsuario"] != null)
                {
                    string nombreUsuario = Session["NombreUsuario"].ToString();
                    string passUsuario = Session["PassUsuario"].ToString();
                    string idUsuario = Session["IdUsuario"].ToString();
                    
                    lblUsuario.Text = "Usuario: " + nombreUsuario;
                    lblContrasenia.Text = "Contraseña: " + passUsuario;
                    lblCompras.Text = Convert.ToString( negCli.obtenerCompras(Convert.ToInt32(idUsuario)));
                }
               
                int rolUsuario = Convert.ToInt32(Session["RolUsuario"]);
                if (rolUsuario == 1)
                {
                   
                    divAdministrador.Visible = true;
                    divAdministrador2.Visible = true;
                    cargarDdlRoles();
                }
            }
        }

        protected void cargarDdlRoles()
        {
            DataTable dtCategorias = negCli.getAllRoles();

            ddlRol.DataSource = dtCategorias;
            ddlRol.DataTextField = "descripcion_RL";
            ddlRol.DataValueField = "idRol_RL";
            ddlRol.DataBind();
        }

        protected void btnCrearUsuario_Click(object sender, EventArgs e)
        {

            string usuario = txbxUsuario.Text;
            string pass = txbxContrasenia.Text;
            string idRol = ddlRol.SelectedValue;

            int rta = negCli.createNewCliente(usuario, pass, Convert.ToInt32(idRol));
            

            if (rta == 1)
            {
                string mensaje1 = "Cliente creado con exito";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje1 + "');", true);
                txbxUsuario.Text = "";
                txbxContrasenia.Text = "";
            }
            else
            {
                string mensaje2 = "Error al crear cliente";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje2 + "');", true);
            }
        }
       
        

        protected void BtnEliminarUsuario_Click(object sender, EventArgs e)
        {
            string id = txbxID.Text;

            int rta = negCli.deleteCliente(Convert.ToInt32(id));


            if (rta == 1)
            {
                string mensaje1 = "Cliente eliminado con exito";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje1 + "');", true);
                txbxID.Text = "";
                
            }
            else
            {
                string mensaje2 = "Error al eliminar cliente";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje2 + "');", true);
            }

        }
    }
   

}