
using System.Collections.Generic;

namespace MedidoresWebModel.DAL
{
    public interface ILecturaDAL
    {
        List<Lectura> ObtenerLecturas();
        void AgregarLecturas(Lectura lectura);
        List<Lectura> Filtrar_numMedidor(string num_medidor);
    }
}

