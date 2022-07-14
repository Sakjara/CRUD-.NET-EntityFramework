using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
using Modelo;

namespace Web
{
    public partial class Ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            respuesta.InnerText = Registros.Personas.Count.ToString();
            if (!IsPostBack)
            {
                ddlEstado.DataSource = Enum.GetValues(typeof(EstadoCivil));
                ddlEstado.DataBind();

                ddlSexo.DataSource = Enum.GetValues(typeof(Sex));
                ddlSexo.DataBind();
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            /*
            Sex se;
            EstadoCivil ec;
            Enum.TryParse<Sex>(ddlSexo.SelectedValue, out se);
            Enum.TryParse<EstadoCivil>(ddlSexo.SelectedValue, out ec);
            Modelo.Persona pe = new Modelo.Persona()
            {
                Rut = txtRut.Text,
                Nombre = txtNombre.Text,
                FechaNacimiento = DateTime.Parse(txtFechaNac.Text),
                Sexo = se,
                Estado = ec,
                Profesion = txtProfesion.Text,
                Telefono = txtFono.Text,
                Direccion = txtDireccion.Text

            };

            Registros.Personas.Add(pe);
            */
            Sex se;
            EstadoCivil ec;
            Enum.TryParse<Sex>(ddlSexo.SelectedValue, out se);
            Enum.TryParse<EstadoCivil>(ddlEstado.SelectedValue, out ec);
            Data.PERSONA pers = new Data.PERSONA()
            {
                RUT = txtRut.Text,
                NOMBRE = txtNombre.Text,
                FECHA_NACIMIENTO = DateTime.Parse(txtFechaNac.Text),
                SEXO = se.ToString(),
                ESTADO = ec.ToString(),
                PROFESION = txtProfesion.Text,
                TELEFONO = txtFono.Text,
                DIRECCION = txtDireccion.Text,
            };

            Data.Conector.Entidades.PERSONAS.Add(pers);
            Data.Conector.Entidades.SaveChanges();

            Response.Redirect("Ingresar.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ingresar.aspx");
        }
    }
}