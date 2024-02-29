using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Productos
    {
        private int idProducto;
        private String nombre;
        private decimal precio;
        private int stock;
        private int categoria;


        public Productos()
        {
            
        }

        public Productos(int idProducto, string nombre, decimal precio, int stock, int categoria)
        {
            this.IdProducto = idProducto;
            this.Nombre = nombre;
            this.Precio = precio;
            this.Stock = stock;
            this.Categoria = categoria;
        }

        public int IdProducto { get => idProducto; set => idProducto = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public decimal Precio { get => precio; set => precio = value; }
        public int Stock { get => stock; set => stock = value; }
        public int Categoria { get => categoria; set => categoria = value; }
    }
}
