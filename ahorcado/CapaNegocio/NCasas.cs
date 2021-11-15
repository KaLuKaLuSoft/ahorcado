using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaConexion;

namespace CapaNegocio
{
    public class NCasas
    {
        public static DataTable Mostrar()
        {
            return new CCasa().MostrarSucursal();
        }
    }
}
