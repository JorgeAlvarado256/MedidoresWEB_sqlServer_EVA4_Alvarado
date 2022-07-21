
using System.Collections.Generic;

namespace MedidoresWebModel.DAL
{
    public interface IUsuariosDAL
    {
        List<Usuario> ObtenerUsuario();
        Usuario Obtener(int id_usuario);
        void AgregarUsuario(Usuario usuario);
        void EliminarUsuario(int id_usuario);
    }
}
