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
    public class NegocioVentas
    {
        public DataTable getAllVentas()
        {
            DaoVentas dao = new DaoVentas();
            return dao.getAllVentas();
        }

        public DataTable filtrarPorId(String id)
        {
            DaoProductos dao = new DaoProductos();
            return dao.filtrarPorId(id);
        }
        public DataTable getVentaById(int idVenta)
        {
            DaoVentas dao = new DaoVentas();
            return dao.getVentaById(idVenta);
        }
    }
}
