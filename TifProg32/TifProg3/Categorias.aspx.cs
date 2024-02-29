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
    public partial class Categorias : System.Web.UI.Page
    {
        NegocioCategorias negCat = new NegocioCategorias();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtCategorias = obtenerTodosLasCategorias();
                LbNombreUsuario.Text = Session["NombreUsuario"].ToString();
                GvCategorias.DataSource = dtCategorias;
                GvCategorias.DataBind();

                int rolUsuario = Convert.ToInt32(Session["RolUsuario"]);
                if (rolUsuario == 1)
                {
                    divAdministrador.Visible = true;
                    divAdministrador2.Visible = true;
                }
            }
        }

        protected void BtnFiltrarCategorias_Click(object sender, EventArgs e)
        {
            string idCategoria = txtFiltroCategoria.Text;

            DataTable categoria = negCat.getCategoriaById(Convert.ToInt32(idCategoria));

            GvCategorias.DataSource = categoria;
            GvCategorias.DataBind();
            txtFiltroCategoria.Text = "";
        }

        protected void BtnMostrarTodasCategorias_Click(object sender, EventArgs e)
        {
            DataTable dtCategorias = obtenerTodosLasCategorias();

            GvCategorias.DataSource = dtCategorias;
            GvCategorias.DataBind();
            txtFiltroCategoria.Text = "";
        }

        protected DataTable obtenerTodosLasCategorias()
        {
            DataTable dtCategorias = negCat.getTodasCategorias();

            GvCategorias.DataSource = dtCategorias;
            GvCategorias.DataBind();

            return dtCategorias;
        }

        protected void btnCrearCategoria_Click(object sender, EventArgs e)
        {
            string categoria = txbxCategoria.Text;

            int rta = negCat.createNewCategoria(categoria);

            if (rta == 1)
            {
                DataTable dtCategorias = obtenerTodosLasCategorias();
                GvCategorias.DataSource = dtCategorias;
                GvCategorias.DataBind();
                string mensaje1 = "Categoria creada con exito";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje1 + "');", true);
            }
            else
            {
                string mensaje2 = "Error al crear la categoria";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje2 + "');", true);
            }
        }

        protected void BtnEliminarCategoria_Click(object sender, EventArgs e)
        {
            string id = txbxCategoriaBaja.Text;

            int rta = negCat.eliminarCategoria(Convert.ToInt32(id));


            if (rta == 1)
            {
                string mensaje1 = "Categoria eliminada con exito";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje1 + "');", true);
                txbxCategoriaBaja.Text = "";

            }
            else
            {
                string mensaje2 = "Error al eliminar la categoria";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje2 + "');", true);
            }
        }
    }
}