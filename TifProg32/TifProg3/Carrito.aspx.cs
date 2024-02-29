using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;
using System.Drawing;
using System.Windows;

namespace TifProg3
{
    public partial class Carrito : System.Web.UI.Page
    {
        NegocioCarrito negCarrito = new NegocioCarrito();
        NegocioProductos negProd = new NegocioProductos();
        protected void Page_Load(object sender, EventArgs e)
        {

            LbNombreUsuario.Text = Session["NombreUsuario"].ToString();

            if(!IsPostBack)
            {

                DataTable dtCarrito = obtenerProd();
                GridViewProductosCarrito.DataSource = dtCarrito;
                GridViewProductosCarrito.DataBind();
                Decimal tot=sumarTotal();
                LblTotal.Text = Convert.ToString(tot);
                
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnFinalizarCompra_Click(object sender, EventArgs e)
        {
            DataTable dtCarrito = obtenerProd();

            int cant = 0;

            string idUsuario = Session["IdUsuario"].ToString();
            Decimal total = sumarTotal();

            int codVenta = 0;
            int codVentaRecibido = negCarrito.finalizarCompra(Convert.ToInt32(idUsuario), total, codVenta);

            foreach (DataRow row in dtCarrito.Rows)
            {
                int idProducto = (int)row["Id Producto"];
                decimal precio = (decimal)row["Precio"];

                int rta = negCarrito.finalizarCompraDetalle(idProducto, precio, codVentaRecibido);

                if(rta > 0)
                {
                    cant = cant++;
                }
            }

            if(cant > 0)
            {
                lblCompraFinalizada.Text = "Compra Realizada con exito!";
                lblCompraFinalizada.ForeColor = Color.Green;
            }

            else
            {
                lblCompraFinalizada.Text = "Hubo un error al procesar la compra.";
                lblCompraFinalizada.ForeColor = Color.Red;
            }
        }

        protected DataTable obtenerProd()
        {
            string idCarrito = Session["CodCarritoUsuario"].ToString();
            DataTable dtCarrito = negCarrito.filtrarPorId(idCarrito);

            GridViewProductosCarrito.DataSource = dtCarrito;
            GridViewProductosCarrito.DataBind();

            return dtCarrito;



        }


        private Decimal sumarTotal()
        {
            Decimal total=0;

          foreach(GridViewRow row in GridViewProductosCarrito.Rows)
            {

                string valorColumna2= row.Cells[2].Text;



                Decimal cantidad=Decimal.Parse(valorColumna2);
              
                
                    // Suma la cantidad
                    total += cantidad;
                


            }

            return total;

        }

    }
}