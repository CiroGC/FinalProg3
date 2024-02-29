using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class DetalleVentas
    {
        private int idVenta;
        private int codProducto;
        private float precioUnitario;
        private int cantidad;

        public DetalleVentas(int idVenta, int codProducto, float precioUnitario, int cantidad)
        {
            this.IdVenta = idVenta;
            this.CodProducto = codProducto;
            this.PrecioUnitario = precioUnitario;
            this.Cantidad = cantidad;
        }

        public int IdVenta { get => idVenta; set => idVenta = value; }
        public int CodProducto { get => codProducto; set => codProducto = value; }
        public float PrecioUnitario { get => precioUnitario; set => precioUnitario = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
    }
}
