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
    public partial class detalleProducto : System.Web.UI.Page
    {
        NegocioProductos negProd = new NegocioProductos();
        NegocioCarrito negCarrito = new NegocioCarrito();
        protected void Page_Load(object sender, EventArgs e)
        {         
            LbNombreUsuario.Text = Session["NombreUsuario"].ToString();
            if (!IsPostBack)
            {
                cargarDatosProducto();
            }
        }

        protected void cargarDatosProducto()
        {
            string idValor = Request.QueryString["id"];
            DataTable dtProducto = negProd.getProductById(Convert.ToInt32(idValor));

            DataRow fila = dtProducto.Rows[0];

            int id = Convert.ToInt32(fila["Id Producto"]);
            string nombre = fila["Nombre"].ToString();
            decimal precio = Convert.ToDecimal(fila["Precio"]);
            int stock = Convert.ToInt32(fila["Stock"]);
            string categoria = fila["Categoria"].ToString();
            string precioString = precio.ToString();
            string stockString = stock.ToString();

            lblTituloProducto.Text = nombre;

            BulletedList1.Items.Add(new ListItem("Categoria: "+ categoria, "1"));
            BulletedList1.Items.Add(new ListItem("Precio: $" + precioString, "2"));
            BulletedList1.Items.Add(new ListItem("Stock: " + stockString, "3"));

            ImagenProducto.ImageUrl = "~/Imagenes/" + idValor + ".jpg";
        }

        protected void btnAgregarACarrito_Click(object sender, EventArgs e)
        {
            string idCarrito = Session["CodCarritoUsuario"].ToString();
            string idProd = Request.QueryString["id"];

            negCarrito.agregarProductoAlCarrito(idCarrito, idProd);


        }
    }
}