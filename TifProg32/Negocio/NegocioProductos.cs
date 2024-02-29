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
    public class NegocioProductos
    {

        public DataTable getAllProducts()
        {
            DaoProductos dao = new DaoProductos();
            return dao.getAllProducts();
        }

        public int createNewProducto(string nombre, decimal precio, int stock, int categoria)
        {
            DaoProductos dao = new DaoProductos();
            return dao.createNewProducto(nombre, precio, stock, categoria);
        }

        public DataTable getProductById(int idProducto)
        {
            DaoProductos dao = new DaoProductos();
            return dao.getProductById(idProducto);
        }

        public DataTable armarTablaProductos()
        {
            DaoProductos dao = new DaoProductos();
            return dao.getTableProductos();
        }


        public DataTable filtrarPorId(String id)
        {
            DaoProductos dao = new DaoProductos();
            return dao.filtrarPorId(id);
        }

        public Productos get(int id)
        {
            DaoProductos dao = new DaoProductos();
            Productos prod = new Productos();
            prod.IdProducto = id;
            return dao.getProducto(prod);
        }

        public int eliminarProducto(int id)
        {
            //Validar id existente 
            DaoProductos dao = new DaoProductos();
           
            int op = dao.eliminarProducto(id);
            if (op == 1)
                return 1;
            else
                return 2;
        }

        public bool agregarSucursal(String nombre, int categoria, decimal precio, int stock)
        {
            int cantFilas = 0;

            Productos prod = new Productos();
            prod.Nombre = nombre;
            prod.Categoria = categoria;
            prod.Precio = precio;
            prod.Stock = stock;


            DaoProductos dao = new DaoProductos();
            if (dao.existeProducto(prod) == false)
            {
                cantFilas = dao.agregarProductos(prod);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }






    }
}
