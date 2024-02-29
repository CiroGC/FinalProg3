using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Daos
{
    class AccesoDatos
    {
        string rutaBD = "Data Source=DESKTOP-G56454C;Initial Catalog=eCommerceProg3;Integrated Security=True";

        public AccesoDatos()
        {

        }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(rutaBD);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        private SqlDataAdapter ObtenerAdaptador(String consultaSql, SqlConnection cn)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(consultaSql, cn);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(String NombreTabla, String sql)
        {
            DataSet ds = new DataSet();
            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(sql, Conexion);
            adp.Fill(ds, NombreTabla);
            Conexion.Close();
            return ds.Tables[NombreTabla];
        }

        public DataTable EjecutarSelectProcedimientoAlmacenadoConUnParamentro(String NombreSP, int parametro)
        {
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = NombreSP;

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@"+parametro;
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.Int;
            sqlParameter.Value = parametro;
            Command.Parameters.Add(sqlParameter);

            //SqlDataAdapter adp = ObtenerAdaptador(Command, Conexion);

            DataTable dt = new DataTable();

            using (SqlDataAdapter adapter = new SqlDataAdapter(Command))
            {
                adapter.Fill(dt);
            }

            return dt;
        }

        public int EjecutarProcedimientoAlmaceado(SqlCommand Comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = Comando;
            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }

        public Boolean existe(String consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();

            if (datos.Read())
            {
                estado = true;
            }
            return estado;
        }

        public int ObtenerMaximo(String consulta)
        {
            int max = 0;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();

            if (datos.Read())
            {
                max = Convert.ToInt32(datos[0].ToString());
            }
            return max;
        }

        public int ObtenerCantidad(String consulta)
        {
            int cant = 0;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();

            if (datos.Read())
            {
                cant = Convert.ToInt32(datos[0].ToString());
            }
            return cant;
        }



        public DataTable execDT(SqlCommand Command)
        {
            Command.Connection = new SqlConnection(rutaBD);
            // SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter da = new SqlDataAdapter(Command);

            DataTable dt = new DataTable();
            da.Fill(dt);

            return dt;
        }

    }

}
