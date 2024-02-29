using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Categorias
    {
        private int idCategoria;
        private String descripcion;


        public Categorias()
        {
           
        }

        public Categorias(int idCategoria, string descripcion)
        {
            this.IdCategoria = idCategoria;
            this.Descripcion = descripcion;
        }

        public int IdCategoria { get => idCategoria; set => idCategoria = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
    }
}
