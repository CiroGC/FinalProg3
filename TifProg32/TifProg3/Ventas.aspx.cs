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
    public partial class Ventas : System.Web.UI.Page
    {
        NegocioVentas negVen = new NegocioVentas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LbNombreUsuario.Text = Session["NombreUsuario"].ToString();
                DataTable dtVentas = obtenerTodasLasVentas();
                GvVentas.DataSource = dtVentas;
                GvVentas.DataBind();
            }
            
        }

        protected void BtnFiltrarVentas_Click(object sender, EventArgs e)
        {
            string idVenta = TxtBusquedaVentas.Text;

            DataTable venta = negVen.getVentaById(Convert.ToInt32(idVenta));
            GvVentas.DataSource = venta;
            GvVentas.DataBind();

            TxtBusquedaVentas.Text = "";
        }

        protected void BtnMostrarTodasVentas_Click(object sender, EventArgs e)
        {
            DataTable dtVentas = obtenerTodasLasVentas();
            GvVentas.DataSource = dtVentas;
            GvVentas.DataBind();
        }

        protected DataTable obtenerTodasLasVentas()
        {
            DataTable dtVentas = negVen.getAllVentas();

            GvVentas.DataSource = dtVentas;
            GvVentas.DataBind();

            return dtVentas;
        }
    }
}