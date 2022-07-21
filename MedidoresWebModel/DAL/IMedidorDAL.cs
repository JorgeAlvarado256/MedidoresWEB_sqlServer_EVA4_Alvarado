
using System.Collections.Generic;

namespace MedidoresWebModel.DAL
{
    public interface IMedidorDAL
    {
        List<Medidor> ObtenerMedidores();
        void AgregarMedidores(Medidor medidor);
        List<Medidor> Filtrar_numMedidor(string num_medidor);
        List<Medidor> Filtrar_tipoMedidor(string tipo_medidor);

    }
}
