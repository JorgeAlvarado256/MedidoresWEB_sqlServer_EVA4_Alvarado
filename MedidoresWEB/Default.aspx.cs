using MedidoresWebModel.DAL;
using MedidoresWEB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MedidoresWebModel;

namespace MedidorWeb
{
    public partial class Default : System.Web.UI.Page
    {
        private IUsuariosDAL usuariosDAL = new UsuarioDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario.rut = this.rutTxt.Text.Trim();
            usuario.nombre = this.nombreTxt.Text.Trim();
            usuario.correo = this.correoTxt.Text.Trim();
            usuario.contrasenia =this.contraseniaTxt.Text.Trim();
            

            this.usuariosDAL.AgregarUsuario(usuario);
            Response.Redirect("RegistrarMedidor.aspx");


        }
    }
}