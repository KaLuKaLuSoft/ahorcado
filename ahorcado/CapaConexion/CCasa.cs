using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaConexion
{
    public class CCasa
    {
        public int id { get; set; }
        public string cosascasas{ get; set; }

        SqlConnection SqlCon = new SqlConnection();
        public DataTable MostrarSucursal()
        {
            try
            {
                SqlCon.ConnectionString = Conexion.Cn;
                SqlCon.Open();
                SqlCommand cmd = new SqlCommand("sp_listarcasas", SqlCon);
                SqlDataReader LeerFilas;
                DataTable Tabla = new DataTable();
                cmd.CommandType = CommandType.StoredProcedure;
                LeerFilas = cmd.ExecuteReader();
                Tabla.Load(LeerFilas);
                LeerFilas.Close();
                return Tabla;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (SqlCon.State == ConnectionState.Open) SqlCon.Close();
            }
        }
    }
}
