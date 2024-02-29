using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Clientes
    {
        private int idCliente;
        private String nombreCliente;
        private String direccion;
        private String nroTelefono;
        private String nroTarjeta;

        public Clientes(int idCliente, string nombreCliente, string direccion, string nroTelefono, string nroTarjeta)
        {
            this.IdCliente = idCliente;
            this.NombreCliente = nombreCliente;
            this.Direccion = direccion;
            this.NroTelefono = nroTelefono;
            this.NroTarjeta = nroTarjeta;
        }

        public int IdCliente { get => idCliente; set => idCliente = value; }
        public string NombreCliente { get => nombreCliente; set => nombreCliente = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string NroTelefono { get => nroTelefono; set => nroTelefono = value; }
        public string NroTarjeta { get => nroTarjeta; set => nroTarjeta = value; }
    }
}
