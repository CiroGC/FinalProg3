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
    public class DaoDetalleVentas
    {

        AccesoDatos ds = new AccesoDatos();

        public DetalleVentas getDetalleVentas(DetalleVentas det)
        {
            DataTable tabla = ds.ObtenerTabla("Detalle Ventas", "");
            det.IdVenta = Convert.ToInt32(tabla.Rows[0][0].ToString());
            det.CodProducto = Convert.ToInt32(tabla.Rows[0][1].ToString());
            det.PrecioUnitario = Convert.ToInt32(tabla.Rows[0][2].ToString());
            det.Cantidad = Convert.ToInt32(tabla.Rows[0][3].ToString());

            return det;
        }

        public Boolean existeDetalleVenta(DetalleVentas det)
        {
            String consulta = "";
            return ds.existe(consulta);
        }

        public DataTable getTableDetalleVenta()
        {
            List<DetalleVentas> lista = new List<DetalleVentas>();
            DataTable tabla = ds.ObtenerTabla("Detalle Ventas", "Select * from Detalle Ventas");
            return tabla;
        }

        public int eliminarDetalleVenta(DetalleVentas det)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasEliminar(ref comando, det);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spEliminarDetalleVentas");
        }

        public int agregarDetalleVenta(DetalleVentas det)
        {
            det.IdVenta = ds.ObtenerMaximo("SELECT max(idVenta) FROM Detalle Ventas") + 1;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasAgregar(ref comando, det);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spAgregarDetalleVentas");

        }

        private void ArmarParametrosCategoriasEliminar(ref SqlCommand Comando, DetalleVentas det)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDVENTAS", SqlDbType.Int);
            SqlParametros.Value = det.IdVenta;
        }

        private void ArmarParametrosCategoriasAgregar(ref SqlCommand Comando, DetalleVentas det)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDVENTAS", SqlDbType.Int);
            SqlParametros.Value = det.IdVenta;
        }

    }
}
