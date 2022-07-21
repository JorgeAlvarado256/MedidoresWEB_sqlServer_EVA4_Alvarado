using System;
using System.Collections.Generic;
using System.Linq;

namespace MedidoresWebModel.DAL
{
    public class LecturaDALDB : ILecturaDAL
    {
        private MedidoresDBEntities MedidoresDB = new MedidoresDBEntities();
        public void AgregarLecturas(Lectura lectura)

        {
            this.MedidoresDB.Lecturas.Add(lectura);
            this.MedidoresDB.SaveChanges();
        }

        public List<Lectura> Filtrar_numMedidor(string num_medidor)
        {
            throw new NotImplementedException();
        }

        public List<Lectura> ObtenerLecturas()
        {
            return this.MedidoresDB.Lecturas.ToList();
        }

    }
}
