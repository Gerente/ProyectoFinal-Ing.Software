using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioWebUniversidad
{
    public partial class WebFormInscripcionMateria : System.Web.UI.Page
    {
        dbuniversidadEntities1 contexto = new dbuniversidadEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var TMateria = from tabla in contexto.materia select tabla;
                DropDownList1.DataTextField = "nombre";
                DropDownList1.DataValueField = "sigla";
                DropDownList1.DataSource = TMateria;
                DropDownList1.DataBind();
            }

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            int codigo = int.Parse(TextBox1.Text);
            
            SitioWebUniversidad.estudiante objEstudiante = new SitioWebUniversidad.estudiante();
            objEstudiante = contexto.estudiante.FirstOrDefault(a => a.codigo == codigo);

            if (objEstudiante != null)
            {
                txtdetalle.Text = objEstudiante.nombre + " " +
                    objEstudiante.paterno +  " " +
                    objEstudiante.materno + "\n" +
                    objEstudiante.genero + "\n" +
                    objEstudiante.correo + "\n" +
                    objEstudiante.telefono;             
            }

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            inscripcion objinscripcion = new inscripcion();

            this.cargarinscripcion(objinscripcion);
            if (this.guardarestudiante(objinscripcion))
            {
                //System.Windows.Forms.MessageBox.Show("Guardado Correctamente");
                this.Label1.Text = "Guardado Correctamente";               
            }
            else
            {
                Label1.Text = "Error en el registro de Estudiante";
            }
        }
        private bool guardarestudiante(inscripcion objinscripcion)
        {
            contexto.AddToinscripcion(objinscripcion);
            return contexto.SaveChanges() >= 1;
        }

        private void cargarinscripcion(inscripcion objinscripcion)
        {
            objinscripcion.codigo = int.Parse(TextBox1.Text);
            objinscripcion.sigla = DropDownList1.SelectedValue;
            objinscripcion.fecha = DateTime.Parse(txtfecha.Text);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            this.Calendar1.Visible = true;
        }


        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            this.txtfecha.Text = this.Calendar1.SelectedDate.ToShortDateString();
            this.Calendar1.Visible = false;
        }
    }
}