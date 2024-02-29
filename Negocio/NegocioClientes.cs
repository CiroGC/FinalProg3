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
    public class NegocioClientes
    {
        public DataTable requestIniciarSesion(string usuario, string pass)
        {
            DaoClientes dao = new DaoClientes();
            return dao.requestIniciarSesion(usuario, pass);
        }

        public DataTable getAllRoles()
        {
            DaoClientes dao = new DaoClientes();
            return dao.getAllRoles();
        }

        public int createNewCliente(string usuario, string pass, int idRol)
        {
            DaoClientes dao = new DaoClientes();
            return dao.createNewCliente(usuario, pass, idRol);
        }

        public int obtenerCompras(int idCli)
        {

            DaoClientes dao = new DaoClientes();
            return dao.getCompras(idCli);
        }

        public int deleteCliente(int idCli)
        {
            DaoClientes dao = new DaoClientes();
            int op= dao.eliminarClientev2(idCli);

            if (op == 1)
            {
                return 1;
            }
            else
            {
                return 2;
            }
        }
    }
}
