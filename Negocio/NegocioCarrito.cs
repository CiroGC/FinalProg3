using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Daos;
using System.Data;

namespace Negocio
{
    public class NegocioCarrito
    {
        public DataTable obtenerTodosLosProductosDeCarrito()
        {
            DaoCarrito dao = new DaoCarrito();
            return dao.getTableCarrito();
        }

        public int finalizarCompra(int idUsuario, decimal total, int codVenta)
        {
            DaoCarrito dao = new DaoCarrito();
            return dao.finalizarCompra(idUsuario, total, codVenta);
        }

        public int finalizarCompraDetalle(int idProducto, decimal precio, int codVentaRecibido)
        {
            DaoCarrito dao = new DaoCarrito();
            return dao.finalizarCompraDetalle(idProducto, precio, codVentaRecibido);
        }

        public DataTable obtenerProductosDeUnCarritoById(string idCarrito)
        {
            DaoCarrito dao = new DaoCarrito();
            return dao.obtenerProductosDeUnCarritoById("getProdByCarritoId", Convert.ToInt32(idCarrito));
        }

        public int agregarCarrito(string idCarrito, string idCliente)
        {
            DaoCarrito dao = new DaoCarrito();
            Carrito car = new Carrito(Convert.ToInt32(idCliente), Convert.ToInt32(idCarrito));
            //car.IdCarrito = Convert.ToInt32(idCarrito);
            //car.IdCliente = Convert.ToInt32(idCliente);
            return dao.agregarCarrito(car);
        }

        public int agregarProductoAlCarrito(string idCarrito, string idProducto)
        {
            DaoCarrito dao = new DaoCarrito();
            
            return dao.agregarProductoACarrito(Convert.ToInt32(idCarrito), Convert.ToInt32(idProducto), "spAgregarCarrito");
        }

        public int eliminarProductoDelarrito(string idCarrito, string idProducto)
        {
            DaoCarrito dao = new DaoCarrito();
            return dao.eliminarProductoDelCarrito(Convert.ToInt32(idCarrito), Convert.ToInt32(idProducto), "spEliminarProductoDelCarrito");
        }


        public DataTable filtrarPorId(String id)
        {
            DaoCarrito dao = new DaoCarrito();
            return dao.filtrarPorId(id);
        }


    }
}
