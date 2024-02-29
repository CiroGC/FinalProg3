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
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioProductos negProd = new NegocioProductos();
        NegocioCategorias negCat = new NegocioCategorias();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LbNombreUsuario.Text = Session["NombreUsuario"].ToString();
                DataTable dtProductos = obtenerTodosLosProductos();               
                lvProductos.DataSource = dtProductos;
                lvProductos.DataBind();

                int rolUsuario = Convert.ToInt32(Session["RolUsuario"]);
                if (rolUsuario == 1)
                {
                    divAdministrador.Visible = true;
                    divAdministrador2.Visible = true;
                    cargarDdlCategorias();
                }
            }
        }

        protected void BtnFiltrarProductos_Click(object sender, EventArgs e)
        {
            string idProducto = TxtBusquedaProductos.Text;

            DataTable producto = negProd.getProductById(Convert.ToInt32(idProducto));
            lvProductos.DataSource = producto;
            lvProductos.DataBind();
        }

        protected void BtnMostrarTodosProductos_Click(object sender, EventArgs e)
        {
            DataTable dtProductos = obtenerTodosLosProductos();

            lvProductos.DataSource = dtProductos;
            lvProductos.DataBind();
        }

        protected void cargarDdlCategorias()
        {
            DataTable dtCategorias = negCat.getTodasCategorias();

            ddlCategoria.DataSource = dtCategorias;
            ddlCategoria.DataTextField = "Nombre Categoria";
            ddlCategoria.DataValueField = "Id Categoria";
            ddlCategoria.DataBind();
        }

        protected DataTable obtenerTodosLosProductos()
        {
            DataTable dtProductos = negProd.getAllProducts();

            lvProductos.DataSource = dtProductos;
            lvProductos.DataBind();

            return dtProductos;
        }

        protected void btnCrearProducto_Click(object sender, EventArgs e)
        {
            string nombre = txbxNombre.Text;
            string precio = txbxPrecio.Text;
            string stock = txbxStock.Text;
            string categoria = ddlCategoria.SelectedValue;

            int rta = negProd.createNewProducto(nombre, Convert.ToDecimal(precio), Convert.ToInt32(stock), Convert.ToInt32(categoria));

            if(rta == 1)
            {
                DataTable dtProductos = obtenerTodosLosProductos();
                LbNombreUsuario.Text = Session["NombreUsuario"].ToString();
                string mensaje2 = "Producto creado con exito";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje2 + "');", true);
                lvProductos.DataSource = dtProductos;
                lvProductos.DataBind();
            }
            else
            {
                string mensaje = "Error al crear el producto";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje + "');", true);
            }
        }

        protected void GvProductos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnEliminarUsuario_Click(object sender, EventArgs e)
        {
            string id = txbxID.Text;

            int rta = negProd.eliminarProducto(Convert.ToInt32(id));


            if (rta == 1)
            {
                string mensaje1 = "Producto eliminado con exito";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje1 + "');", true);

            }
            else
            {
                string mensaje2 = "Error al eliminar el producto";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje2 + "');", true);
            }
        }

        protected void btnVerMas_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "eventoVerMas")
            {
                string idProducto = e.CommandArgument.ToString();

                Response.Redirect("detalleProducto.aspx?id="+ idProducto);
            }
        }
    }
}