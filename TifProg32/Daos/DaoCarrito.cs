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
    public class DaoCarrito
    {

        AccesoDatos ds = new AccesoDatos();

        public Carrito getCarrito(Carrito car)
        {
            DataTable tabla = ds.ObtenerTabla("Carrito", "");
            car.IdCarrito = Convert.ToInt32(tabla.Rows[0][0].ToString());
            car.IdCliente = Convert.ToInt32(tabla.Rows[0][1].ToString());

            return car;
        }

        public DataTable obtenerProductosDeUnCarritoById(String procedimientoA, int idCarrito)
        {
            SqlCommand Command = new SqlCommand();

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@IDCARRITO";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.Int;
            sqlParameter.Value = idCarrito;
            Command.Parameters.Add(sqlParameter);
            DataTable tabla = ds.EjecutarSelectProcedimientoAlmacenadoConUnParamentro(procedimientoA,idCarrito);
        

            return tabla;
        }

        public int finalizarCompra(int idUsuario, decimal total, int codVenta)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "finalizarCompra";

            SqlParameter sqlParameter3 = new SqlParameter();
            sqlParameter3.ParameterName = "@idUsuario";
            sqlParameter3.Direction = ParameterDirection.Input;
            sqlParameter3.SqlDbType = SqlDbType.Int;
            sqlParameter3.Value = idUsuario;
            Command.Parameters.Add(sqlParameter3);

            SqlParameter sqlParameter4 = new SqlParameter();
            sqlParameter4.ParameterName = "@total";
            sqlParameter4.Direction = ParameterDirection.Input;
            sqlParameter4.SqlDbType = SqlDbType.Decimal;
            sqlParameter4.Value = total;
            Command.Parameters.Add(sqlParameter4);

            SqlParameter sqlParameter5 = new SqlParameter();
            sqlParameter5.ParameterName = "@codVenta";
            sqlParameter5.Direction = ParameterDirection.Output;
            sqlParameter5.SqlDbType = SqlDbType.Int;
            sqlParameter5.Value = codVenta;
            Command.Parameters.Add(sqlParameter5);

            DataTable dt = this.ds.execDT(Command);

            int codVentaResultante = (int)sqlParameter5.Value;

            return codVentaResultante;

  
        }

        public int finalizarCompraDetalle(int producto, decimal precio, int codVentaRecibido)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "finalizarCompraDetalle";

            SqlParameter sqlParameter1 = new SqlParameter();
            sqlParameter1.ParameterName = "@producto";
            sqlParameter1.Direction = ParameterDirection.Input;
            sqlParameter1.SqlDbType = SqlDbType.Int;
            sqlParameter1.Value = producto;
            Command.Parameters.Add(sqlParameter1);

            SqlParameter sqlParameter2 = new SqlParameter();
            sqlParameter2.ParameterName = "@precio";
            sqlParameter2.Direction = ParameterDirection.Input;
            sqlParameter2.SqlDbType = SqlDbType.Decimal;
            sqlParameter2.Value = precio;
            Command.Parameters.Add(sqlParameter2);

            SqlParameter sqlParameter3 = new SqlParameter();
            sqlParameter3.ParameterName = "@codVentaRecibido";
            sqlParameter3.Direction = ParameterDirection.Input;
            sqlParameter3.SqlDbType = SqlDbType.Int;
            sqlParameter3.Value = codVentaRecibido;
            Command.Parameters.Add(sqlParameter3);

            DataTable dt = this.ds.execDT(Command);

            return 1;
        }

        public DataTable filtrarPorId(String id)
        {
            DataTable tabla = ds.ObtenerTabla("PRODUCTOSxCARRITO", "SELECT idProducto_PC [Id Producto],  Nombre_Pr [Nombre], Precio_Pr [Precio] FROM Productos INNER JOIN PRODUCTOSxCARRITO ON idProducto_Pr = idProducto_PC WHERE PRODUCTOSxCARRITO.CodCarrito_PC = " + id);
            return tabla;
        }


        public Boolean existeCarrito(Carrito car)
        {
            String consulta = "";
            return ds.existe(consulta);
        }

        public DataTable getTableCarrito()
        {
            List<Carrito> lista = new List<Carrito>();
            DataTable tabla = ds.ObtenerTabla("Carrito", "Select * from carritos");
            return tabla;
        }

        public int eliminarCarrito(Carrito car)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasEliminar(ref comando, car);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spEliminarCarrito");
        }

        public int agregarCarrito(Carrito car)
        {
            car.IdCarrito = ds.ObtenerMaximo("SELECT max(idCarrito) FROM Carritos") + 1;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasAgregar(ref comando, car);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spAgregarCarrito");

        }

        public int agregarProductoACarrito(int idCarrito, int idProducto, String nombreSP)
        {
            SqlCommand Command = new SqlCommand();

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@CODCARRITO";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.Int;
            sqlParameter.Value = idCarrito;
            Command.Parameters.Add(sqlParameter);

            SqlParameter sqlParameter1 = new SqlParameter();
            sqlParameter1.ParameterName = "@IDPRODUCTO";
            sqlParameter1.Direction = ParameterDirection.Input;
            sqlParameter1.SqlDbType = SqlDbType.Int;
            sqlParameter1.Value = idProducto;
            Command.Parameters.Add(sqlParameter1);


            return ds.EjecutarProcedimientoAlmaceado(Command, nombreSP);
        }

        public int eliminarProductoDelCarrito(int idCarrito, int idProducto, String nombreSP)
        {
            SqlCommand Command = new SqlCommand();

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@idCarrito";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.Int;
            sqlParameter.Value = idCarrito;
            Command.Parameters.Add(sqlParameter);

            SqlParameter sqlParameter1 = new SqlParameter();
            sqlParameter1.ParameterName = "@idProducto";
            sqlParameter1.Direction = ParameterDirection.Input;
            sqlParameter1.SqlDbType = SqlDbType.Int;
            sqlParameter1.Value = idProducto;
            Command.Parameters.Add(sqlParameter1);

            return ds.EjecutarProcedimientoAlmaceado(Command, nombreSP);
        }

        private void ArmarParametrosCategoriasEliminar(ref SqlCommand Comando, Carrito car)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCARRITO", SqlDbType.Int);
            SqlParametros.Value = car.IdCarrito;
        }

        private void ArmarParametrosCategoriasAgregar(ref SqlCommand Comando, Carrito car)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCARRITO", SqlDbType.Int);
            SqlParametros.Value = car.IdCarrito;
            SqlParametros = Comando.Parameters.Add("@IDCLIENTE", SqlDbType.VarChar);
            SqlParametros.Value = car.IdCliente;
        }

    }
}
