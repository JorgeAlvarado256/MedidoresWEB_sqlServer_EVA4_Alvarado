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
    public partial class registrarLecturas : System.Web.UI.Page
    {
        private IUsuariosDAL usuariosDAL = new UsuarioDALDB();
        private IMedidorDAL medidoresDAL = new MedidorDALDB();
        private ILecturaDAL lecturaDAL = new LecturaDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.nMedidorDDL.DataSource = this.medidoresDAL.ObtenerMedidores();
                this.nMedidorDDL.DataTextField = "numero_serie";
                this.nMedidorDDL.DataValueField = "numero_serie";
                this.nMedidorDDL.DataBind();
            }
        }


        protected void ingresarBtn_Click(object sender, EventArgs e)
        {

            Lectura lectura = new Lectura();
            lectura.numero_serie = this.nMedidorDDL.Text.Trim();
            lectura.fecha_lectura = Convert.ToDateTime(this.txtFecha.Text.Trim());
            //lectura.hora_lectura = Convert.ToDateTime(this.txtHora.Text.Trim());
            lectura.valor_consumo= Convert.ToInt32(this.valorConsumoTxt.Text.Trim());
            


            this.lecturaDAL.AgregarLecturas(lectura);
            Response.Redirect("MostrarDatos.aspx");

        }


    }


}   
