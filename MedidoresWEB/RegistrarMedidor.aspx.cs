using MedidoresWEB;
using MedidoresWebModel;
using MedidoresWebModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidorWeb
{

    public partial class RegistrarMedidor : System.Web.UI.Page
    {
        private IUsuariosDAL usuariosDAL = new UsuarioDALDB();  
        private IMedidorDAL medidorDAL = new MedidorDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                 if (!IsPostBack)
            {
                this.rutDDL.DataSource = this.usuariosDAL.ObtenerUsuario(); ;
                this.rutDDL.DataTextField = "rut";
                this.rutDDL.DataValueField = "rut";
                this.rutDDL.DataBind();
            }
        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            Medidor medidor = new Medidor();
            medidor.numero_serie = this.numero_serieTxt.Text.Trim();
            medidor.tipo_medidor = this.tipo_medidorTxt.Text.Trim();
            medidor.id_usuario = Convert.ToInt32(this.rutDDL.Text.Trim());

            this.medidorDAL.AgregarMedidores(medidor);
            Response.Redirect("registrarLecturas.aspx");
        }
    }
}