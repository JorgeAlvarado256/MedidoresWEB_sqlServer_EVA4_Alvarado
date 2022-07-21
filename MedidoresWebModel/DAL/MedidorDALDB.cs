
using System;
using System.Collections.Generic;
using System.Linq;

namespace MedidoresWebModel.DAL
{

    public class MedidorDALDB : IMedidorDAL
    {
        private MedidoresDBEntities MedidoresDB = new MedidoresDBEntities();
        public void AgregarMedidores(Medidor medidor)
        {

            this.MedidoresDB.Medidors.Add(medidor);
            this.MedidoresDB.SaveChanges();
        }

        public List<Medidor> Filtrar_numMedidor(string num_medidor)
        {
            throw new NotImplementedException();
        }

        public List<Medidor> Filtrar_tipoMedidor(string tipo_medidor)
        {
            throw new NotImplementedException();
        }

        public List<Medidor> ObtenerMedidores(string numero_serie)
        {
            var query = from m in this.MedidoresDB.Medidors
                        where m.numero_serie == numero_serie
                        select m;
   
            return query.ToList();
        }

        public List<Medidor> ObtenerMedidores()
        {
            return this.MedidoresDB.Medidors.ToList();
        }
    }
}
