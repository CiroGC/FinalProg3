using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Carrito
    {
        private int idCliente;
        private int idCarrito;

        public Carrito(int idCliente, int idCarrito)
        {
            this.IdCliente = idCliente;
            this.IdCarrito = idCarrito;
        }

        public int IdCliente { get => idCliente; set => idCliente = value; }
        public int IdCarrito { get => idCarrito; set => idCarrito = value; }
    }
}
