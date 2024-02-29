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
    public class DaoClientes
    {

        AccesoDatos ds = new AccesoDatos();

        public DataTable requestIniciarSesion(string usuario, string pass)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "requestIniciarSesion";

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@usuario";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.VarChar;
            sqlParameter.Value = usuario;
            Command.Parameters.Add(sqlParameter);

            SqlParameter sqlParameter2 = new SqlParameter();
            sqlParameter2.ParameterName = "@pass";
            sqlParameter2.Direction = ParameterDirection.Input;
            sqlParameter2.SqlDbType = SqlDbType.VarChar;
            sqlParameter2.Value = pass;
            Command.Parameters.Add(sqlParameter2);

            DataTable dt = this.ds.execDT(Command);

            return dt;
        }

        public int createNewCliente(string usuario, string pass, int idRol)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "createNewCliente";

            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter.ParameterName = "@usuario";
            sqlParameter.Direction = ParameterDirection.Input;
            sqlParameter.SqlDbType = SqlDbType.VarChar;
            sqlParameter.Value = usuario;
            Command.Parameters.Add(sqlParameter);

            SqlParameter sqlParameter2 = new SqlParameter();
            sqlParameter2.ParameterName = "@pass";
            sqlParameter2.Direction = ParameterDirection.Input;
            sqlParameter2.SqlDbType = SqlDbType.VarChar;
            sqlParameter2.Value = pass;
            Command.Parameters.Add(sqlParameter2);

            SqlParameter sqlParameter3 = new SqlParameter();
            sqlParameter3.ParameterName = "@idRol";
            sqlParameter3.Direction = ParameterDirection.Input;
            sqlParameter3.SqlDbType = SqlDbType.Int;
            sqlParameter3.Value = idRol;
            Command.Parameters.Add(sqlParameter3);

            DataTable dt = this.ds.execDT(Command);

            return 1;
        }

        public DataTable getAllRoles()
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "getAllRoles";

            DataTable dt = this.ds.execDT(Command);

            return dt;
        }

      
        public Clientes getCliente(Clientes cli)
        {
            DataTable tabla = ds.ObtenerTabla("Clientes", "");
            cli.IdCliente = Convert.ToInt32(tabla.Rows[0][0].ToString());
            cli.NombreCliente = tabla.Rows[0][2].ToString();
            cli.Direccion = tabla.Rows[0][3].ToString();
            cli.NroTelefono = tabla.Rows[0][4].ToString();
            cli.NroTarjeta = tabla.Rows[0][5].ToString();

            return cli;
        }

        public Boolean existeCliente(Clientes cli)
        {
            String consulta = "";
            return ds.existe(consulta);
        }

        public DataTable getTableCliente()
        {
            List<Clientes> lista = new List<Clientes>();
            DataTable tabla = ds.ObtenerTabla("Clientes", "Select * from clientes");
            return tabla;
        }

        public int eliminarCliente(Clientes cli)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasEliminar(ref comando, cli);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spEliminarCliente");
        }

        public int eliminarClientev2(int idCli)
        {
            SqlCommand Command = new SqlCommand();
            Command.CommandType = CommandType.StoredProcedure;
            Command.CommandText = "spEliminarCliente";

            SqlParameter sqlParameter1 = new SqlParameter();
            sqlParameter1.ParameterName = "@IDCLIENTE";
            sqlParameter1.Direction = ParameterDirection.Input;
            sqlParameter1.SqlDbType = SqlDbType.Int;
            sqlParameter1.Value = idCli;
            Command.Parameters.Add(sqlParameter1);
            DataTable dt = this.ds.execDT(Command);

            return 1;
        }

        public int getCompras(int idCli)
        {
            String consulta = "SELECT COUNT(Ventas.CodVenta_V) as CantidadCompras FROM Clientes LEFT JOIN Ventas ON Ventas.CodCliente_V = Clientes.IdCliente_Cl WHERE Clientes.IdCliente_Cl = "+ idCli  +"GROUP BY Clientes.IdCliente_Cl; ";
            return ds.ObtenerCantidad(consulta);


        }



        public int agregarCliente(Clientes cli)
        {
            cli.IdCliente = ds.ObtenerMaximo("SELECT max(idCliente) FROM Clientes") + 1;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriasAgregar(ref comando, cli);
            return ds.EjecutarProcedimientoAlmaceado(comando, "spAgregarCliente");

        }

        private void ArmarParametrosCategoriasEliminar(ref SqlCommand Comando, Clientes cli)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCARRITO", SqlDbType.Int);
            SqlParametros.Value = cli.IdCliente;
        }

        private void ArmarParametrosCategoriasAgregar(ref SqlCommand Comando, Clientes cli)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCARRITO", SqlDbType.Int);
            SqlParametros.Value = cli.IdCliente;
        }

    }
}
