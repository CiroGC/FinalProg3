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
    public class DaoProductos
    {

        AccesoDatos ds = new AccesoDatos();

        public DataTable getAllProducts()
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "getAllProducts";

            DataTable dt = this.ds.execDT(Command);

            return dt;
        }

        public DataTable getProductById(int idProducto)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "getProductById";

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@idProducto";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.Int;
            sqlParameter.Value = idProducto;
            Command.Parameters.Add(sqlParameter);

            DataTable dt = this.ds.execDT(Command);

            return dt;
        }

        public int createNewProducto(string nombre, decimal precio, int stock, int categoria)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "createNewProducto";

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@nombre";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.VarChar;
            sqlParameter.Value = nombre;
            Command.Parameters.Add(sqlParameter);

            SqlParameter sqlParameter1 = new SqlParameter();
            sqlParameter1.ParameterName = "@precio";
            sqlParameter1.Direction = ParameterDirection.Input;
            sqlParameter1.SqlDbType = SqlDbType.Decimal;
            sqlParameter1.Value = precio;
            Command.Parameters.Add(sqlParameter1);

            SqlParameter sqlParameter2 = new SqlParameter();
            sqlParameter2.ParameterName = "@stock";
            sqlParameter2.Direction = ParameterDirection.Input;
            sqlParameter2.SqlDbType = SqlDbType.Int;
            sqlParameter2.Value = stock;
            Command.Parameters.Add(sqlParameter2);

            SqlParameter sqlParameter3 = new SqlParameter();
            sqlParameter3.ParameterName = "@categoria";
            sqlParameter3.Direction = ParameterDirection.Input;
            sqlParameter3.SqlDbType = SqlDbType.Int;
            sqlParameter3.Value = categoria;
            Command.Parameters.Add(sqlParameter3);

            DataTable dt = this.ds.execDT(Command);

            return 1;
        }

        public Productos getProducto(Productos prod)
        {
            DataTable tabla = ds.ObtenerTabla("Productos", "");
            prod.IdProducto = Convert.ToInt32(tabla.Rows[0][0].ToString());
            prod.Nombre = tabla.Rows[0][1].ToString();
            prod.Precio = Convert.ToInt32(tabla.Rows[0][2].ToString());
            prod.Stock = Convert.ToInt32(tabla.Rows[0][3].ToString());
            prod.Categoria = Convert.ToInt32(tabla.Rows[0][4].ToString());

            return prod;
        }

        public DataTable filtrarPorId(String id)
        {
            DataTable tabla = ds.ObtenerTabla("Productos", "SELECT idProductos, nombre, precio, stock, categoria FROM Productos WHERE idProducto = " + id);
            return tabla;
        }

        public Boolean existeProducto(Productos prod)
        {
            String consulta = "";
            return ds.existe(consulta);
        }

        public DataTable getTableProductos()
        {
            List<Productos> lista = new List<Productos>();
            DataTable tabla = ds.ObtenerTabla("Productos", "Select * from Productos");
            return tabla;
        }

        public int eliminarProducto(int idProd)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "spEliminarProducto";

            SqlParameter sqlParameter1 = new SqlParameter();
            sqlParameter1.ParameterName = "@IDProducto";
            sqlParameter1.Direction = ParameterDirection.Input;
            sqlParameter1.SqlDbType = SqlDbType.Int;
            sqlParameter1.Value = idProd;
            Command.Parameters.Add(sqlParameter1);
            DataTable dt = this.ds.execDT(Command);

            return 1;
        }

        public int agregarProductos(Productos prod)
        {
            prod.IdProducto = ds.ObtenerMaximo("SELECT max(IdProducto) FROM Productos") + 1;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasAgregar(ref comando, prod);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spAgregarProductos");

        }

        private void ArmarParametrosCategoriasEliminar(ref SqlCommand Comando, Productos prod)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDPRODUCTO", SqlDbType.Int);
            SqlParametros.Value = prod.IdProducto;
        }

        private void ArmarParametrosCategoriasAgregar(ref SqlCommand Comando, Productos prod)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDPRODUCTO", SqlDbType.Int);
            SqlParametros.Value = prod.IdProducto;
        }

    }
}
