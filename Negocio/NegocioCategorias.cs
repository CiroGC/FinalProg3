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
    public class NegocioCategorias
    {

        public DataTable getTodasCategorias()
        {
            DaoCategorias dao = new DaoCategorias();
            return dao.getTodasCategorias();
        }

        public DataTable getCategoriaById(int idCategoria)
        {
            DaoCategorias dao = new DaoCategorias();
            return dao.getCategoriaById(idCategoria);
        }

        public int createNewCategoria(string categoria)
        {
            DaoCategorias dao = new DaoCategorias();
            return dao.createNewCategoria(categoria);
        }

        public DataTable armarTablaCategorias()
        {
            DaoCategorias dao = new DaoCategorias();
            return dao.getTableCategorias();
        }


        public DataTable filtrarPorId(String id)
        {
            DaoCategorias dao = new DaoCategorias();
            return dao.filtrarPorId(id);
        }

        public Categorias get(int id)
        {
            DaoCategorias dao = new DaoCategorias();
            Categorias cat = new Categorias();
            cat.IdCategoria = id;
            return dao.getCategoria(cat);
        }

        public int eliminarCategoria(int id)
        {
            //Validar id existente 
            DaoCategorias dao = new DaoCategorias();
            Categorias cat = new Categorias();
            cat.IdCategoria = id;
            int op = dao.eliminarCategoria(id);
            if (op == 1)
                return 1;
            else
                return 2;
        }

        public bool agregarCategoria(String Descripcion)
        {
            int cantFilas = 0;

            Categorias cat = new Categorias();
            cat.Descripcion = Descripcion;

            DaoCategorias dao = new DaoCategorias();
            if (dao.existeCategoría(cat) == false)
            {
                cantFilas = dao.agregarCategoria(cat);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }


    }
}
