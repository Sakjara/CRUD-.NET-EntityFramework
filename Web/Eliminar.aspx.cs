using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class Eliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlPersonas.DataSource = Data.Conector.Entidades.PERSONAS.ToList();
                ddlPersonas.DataBind();
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Data.PERSONA p = new Data.PERSONA();
            string valor = ddlPersonas.SelectedValue;
            foreach (Data.PERSONA per in Data.Conector.Entidades.PERSONAS)
            {
                if (per.RUT + " - " + per.NOMBRE == valor)
                {
                    p = per;
                    break;
                }
            }
            Data.Conector.Entidades.PERSONAS.Remove(p);
            Data.Conector.Entidades.SaveChanges();
            Response.Redirect("Eliminar.aspx");
        }
    }
}