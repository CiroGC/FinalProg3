using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Daos
{
    public class DaoVentas
    {

        AccesoDatos ds = new AccesoDatos();

        public DataTable getAllVentas()
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "getAllVentas";

            DataTable dt = this.ds.execDT(Command);

            return dt;
        }

        public DataTable getVentaById(int idVenta)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "getVentaById";

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@idVenta";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.Int;
            sqlParameter.Value = idVenta;
            Command.Parameters.Add(sqlParameter);

            DataTable dt = this.ds.execDT(Command);

            return dt;
        }

        public Ventas getVenta(Ventas venta)
        {
            DataTable tabla = ds.ObtenerTabla("Ventas", "");
            venta.IdVenta = Convert.ToInt32(tabla.Rows[0][0].ToString());
            venta.IdCliente = Convert.ToInt32(tabla.Rows[0][1].ToString());

            return venta;
        }

        public Boolean existeVenta(Ventas venta)
        {
            String consulta = "";
            return ds.existe(consulta);
        }

        public DataTable getTableVenta()
        {
            List<Ventas> lista = new List<Ventas>();
            DataTable tabla = ds.ObtenerTabla("Ventas", "Select * from Ventas");
            return tabla;
        }

        public int eliminarVenta(Ventas venta)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasEliminar(ref comando, venta);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spEliminarVenta");
        }

        public int agregarVenta(Ventas venta)
        {
            venta.IdVenta = ds.ObtenerMaximo("SELECT max(IdProducto) FROM Productos") + 1;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasAgregar(ref comando, venta);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spAgregarVenta");

        }

        private void ArmarParametrosCategoriasEliminar(ref SqlCommand Comando, Ventas venta)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDVENTA", SqlDbType.Int);
            SqlParametros.Value = venta.IdVenta;
        }

        private void ArmarParametrosCategoriasAgregar(ref SqlCommand Comando, Ventas venta)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDVENTA", SqlDbType.Int);
            SqlParametros.Value = venta.IdVenta;
        }

    }
}
