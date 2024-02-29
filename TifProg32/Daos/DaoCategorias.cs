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
    public class DaoCategorias
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable getTodasCategorias()
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "getTodasCategorias";

            DataTable dt = this.ds.execDT(Command);

            return dt;
        }

        public DataTable getCategoriaById(int idCategoria)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "getCategoriaById";

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@idCategoria";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.Int;
            sqlParameter.Value = idCategoria;
            Command.Parameters.Add(sqlParameter);

            DataTable dt = this.ds.execDT(Command);

            return dt;
        }

        public int createNewCategoria(string categoria)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "createNewCategoria";

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@categoria";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.VarChar;
            sqlParameter.Value = categoria;
            Command.Parameters.Add(sqlParameter);

            DataTable dt = this.ds.execDT(Command);

            return 1;
        }

        public Categorias getCategoria(Categorias cat)
        {
            DataTable tabla = ds.ObtenerTabla("Categorias", "");
            cat.IdCategoria = Convert.ToInt32(tabla.Rows[0][0].ToString());
            cat.Descripcion = tabla.Rows[0][2].ToString();

            return cat;
        }

        public DataTable filtrarPorId(String id)
        {
            DataTable tabla = ds.ObtenerTabla("Categorias", "SELECT IdCategoria, Descripcion FROM Descripcion WHERE IdCategoria = " + id);
            return tabla;
        }

        public Boolean existeCategoría(Categorias cat)
        {
            String consulta = "";
            return ds.existe(consulta);
        }
        public DataTable getTableCategorias()
        {
            List<Categorias> lista = new List<Categorias>();
            DataTable tabla = ds.ObtenerTabla("Categorias", "Select * from categorías");
            return tabla;
        }

        public int eliminarCategoria(int idCat)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "spEliminarCategoria";

            SqlParameter sqlParameter1 = new SqlParameter();
            sqlParameter1.ParameterName = "@IDCATEGORIA";
            sqlParameter1.Direction = ParameterDirection.Input;
            sqlParameter1.SqlDbType = SqlDbType.Int;
            sqlParameter1.Value = idCat;
            Command.Parameters.Add(sqlParameter1);
            DataTable dt = this.ds.execDT(Command);

            return 1;
        }

        public int agregarCategoria(Categorias cat)
        {
            cat.IdCategoria = ds.ObtenerMaximo("SELECT max(idCategoría) FROM Categorías") + 1;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasAgregar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spAgregarCategoría");

        }

        private void ArmarParametrosCategoriasEliminar(ref SqlCommand Comando, Categorias cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = cat.IdCategoria;
        }

        private void ArmarParametrosCategoriasAgregar(ref SqlCommand Comando, Categorias cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = cat.IdCategoria;
            SqlParametros = Comando.Parameters.Add("@NOMBRECAT", SqlDbType.VarChar);
            SqlParametros.Value = cat.Descripcion;
        }
        
    }
}
