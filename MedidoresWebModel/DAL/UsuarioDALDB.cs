using System.Collections.Generic;
using System.Linq;

namespace MedidoresWebModel.DAL
{

    public class UsuarioDALDB : IUsuariosDAL
    {
        private MedidoresDBEntities MedidoresDB = new MedidoresDBEntities();
        
        public void AgregarUsuario(Usuario usuario)
        {            
            this.MedidoresDB.Usuarios.Add(usuario);
            this.MedidoresDB.SaveChanges();
        }

        public void EliminarUsuario(int id_usuario)
        {
            Usuario usuario = this.MedidoresDB.Usuarios.Find(id_usuario);
            //destruir el asistente
            this.MedidoresDB.Usuarios.Remove(usuario);
            this.MedidoresDB.SaveChanges();
        }

        public Usuario Obtener(int id_usuario)
        {
            return this.MedidoresDB.Usuarios.Find(id_usuario);
        }

        public List<Usuario> ObtenerUsuario()
        {
            return this.MedidoresDB.Usuarios.ToList();
        }

        public List<Usuario> ObtenerUsuario(string rut)
        {
            //LINQ
            var query = from a in this.MedidoresDB.Usuarios
                        where a.rut == rut
                        select a;
            return query.ToList();
        }
        public void Actualizar(Usuario u)
        {
            Usuario uOriginal = this.MedidoresDB.Usuarios.Find(u.id_usuario);
            uOriginal.rut = u.rut;
            uOriginal.nombre = u.nombre;
            uOriginal.correo = u.correo;
            uOriginal.contrasenia = u.contrasenia;
            //todos los atributos
            this.MedidoresDB.SaveChanges();
        }
    }
}