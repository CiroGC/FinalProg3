using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Ventas
    {
        private int idVenta;
        private int idCliente;
        private DateTime fechaVenta;
        private float total;

        public Ventas(int idVenta, int idCliente, DateTime fechaVenta, float total)
        {
            this.IdVenta = idVenta;
            this.IdCliente = idCliente;
            this.FechaVenta = fechaVenta;
            this.Total = total;
        }

        public int IdVenta { get => idVenta; set => idVenta = value; }
        public int IdCliente { get => idCliente; set => idCliente = value; }
        public DateTime FechaVenta { get => fechaVenta; set => fechaVenta = value; }
        public float Total { get => total; set => total = value; }
    }
}
