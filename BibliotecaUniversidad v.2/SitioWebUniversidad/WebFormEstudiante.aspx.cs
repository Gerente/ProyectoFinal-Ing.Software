using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioWebUniversidad
{
    public partial class WebFormEstudiante : System.Web.UI.Page
    {
        dbuniversidadEntities1 contexto = new dbuniversidadEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            ActualizarVista();
            if (!IsPostBack)
            {
                var TCarrera = from tabla in contexto.carrera select tabla;
                DropDownList1.DataTextField = "nombre";
                DropDownList1.DataValueField = "codigo";
                DropDownList1.DataSource = TCarrera;
                DropDownList1.DataBind();
            }
            btneliminar.Visible = false;
            btnmodificar.Visible = false;
        }

        public void ActualizarVista()
        {
            var TEstudiante = from tabla in contexto.estudiante select tabla;
            GridView1.DataSource = TEstudiante;
            GridView1.DataBind();
        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            estudiante objestudiante = new estudiante();

            this.cargarEstudiante(objestudiante);
            if (this.guardarestudiante(objestudiante))
            {
                //System.Windows.Forms.MessageBox.Show("Guardado Correctamente");
                this.Label1.Text = "Guardado Correctamente";
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Error en el registro de Estudiante";
            }
            Limpiar();
        }

        private bool guardarestudiante(estudiante objestudiante)
        {
            contexto.AddToestudiante(objestudiante);
            return contexto.SaveChanges() >= 1;
        }

        private void cargarEstudiante(estudiante objestudiante)
        {
            objestudiante.codigo = int.Parse(EstudianteNum1.texto2);
            objestudiante.nombre = EstudianteLetras1.texto3;
            objestudiante.paterno = EstudianteLetras2.texto3;
            objestudiante.materno = EstudianteLetras3.texto3;
            objestudiante.genero = RadioButtonList1.Text;
            objestudiante.correo = Estudiante1.texto;
            objestudiante.telefono = int.Parse(EstudianteNum2.texto2);
            objestudiante.codigoc = int.Parse(DropDownList1.SelectedValue);
        }


        protected void btneliminar_Click(object sender, EventArgs e)
        {
            int registro = int.Parse(EstudianteNum1.texto2);          

            SitioWebUniversidad.estudiante objestudiante = contexto.estudiante.FirstOrDefault
                (a => a.codigo == registro);
                 
            if (objestudiante != null)
            {
                SitioWebUniversidad.detalleEvaluacion objdetalle = contexto.detalleEvaluacion.FirstOrDefault(a => a.codigo == registro);
                if (objdetalle != null)
                {
                    contexto.DeleteObject(objdetalle);
                    contexto.SaveChanges();
                }
                
                SitioWebUniversidad.inscripcion objinscripcion = contexto.inscripcion.FirstOrDefault(a => a.codigo == registro);
                if (objinscripcion != null)
                {
                    contexto.DeleteObject(objinscripcion);
                    contexto.SaveChanges();
                }   
            
                contexto.DeleteObject(objestudiante);
                this.Label1.Text = "Elimido Correctamente";
                contexto.SaveChanges();
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Error en la eliminacion";
            }
            BtnListos();
            Limpiar();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            int registro = int.Parse(EstudianteNum1.texto2);
            SitioWebUniversidad.estudiante objestudiante = contexto.estudiante.FirstOrDefault
                (a => a.codigo == registro);
            if (objestudiante != null)
            {
                EstudianteLetras1.texto3 = objestudiante.nombre;
                EstudianteLetras2.texto3 = objestudiante.paterno;
                EstudianteLetras3.texto3 = objestudiante.materno;
                if (objestudiante.genero == "Masculino")
                {
                    RadioButtonList1.Text = "Masculino";
                }
                else
                {
                    RadioButtonList1.Text = "Femenino";
                }
                Estudiante1.texto = objestudiante.correo;
                EstudianteNum2.texto2 = objestudiante.telefono.ToString();

                DropDownList1.SelectedValue = objestudiante.codigoc.ToString();
            }
        }

        protected void btnmodificar_Click(object sender, EventArgs e)
        {
            int registro = int.Parse(EstudianteNum1.texto2);
            SitioWebUniversidad.estudiante objestudiante = contexto.estudiante.FirstOrDefault
                (a => a.codigo == registro);
            if (objestudiante != null)
            {
                objestudiante.codigo = int.Parse(EstudianteNum1.texto2);
                objestudiante.nombre = EstudianteLetras1.texto3;
                objestudiante.paterno = EstudianteLetras2.texto3;
                objestudiante.materno = EstudianteLetras3.texto3;
                objestudiante.genero = RadioButtonList1.Text;
                objestudiante.correo = Estudiante1.texto;
                objestudiante.telefono = int.Parse(EstudianteNum2.texto2);
                objestudiante.codigoc = int.Parse(DropDownList1.SelectedValue);

               this.Label1.Text = "Modificado Correctamente";
                contexto.SaveChanges();
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Modificacion Incorrecta";
            }
            BtnListos();
            Limpiar();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int fila = GridView1.SelectedIndex;

            EstudianteNum1.texto2 = GridView1.Rows[fila].Cells[0].Text;
            EstudianteLetras1.texto3 = GridView1.Rows[fila].Cells[1].Text;
            EstudianteLetras2.texto3 = GridView1.Rows[fila].Cells[2].Text;
            EstudianteLetras3.texto3 = GridView1.Rows[fila].Cells[3].Text;
            RadioButtonList1.Text = GridView1.Rows[fila].Cells[4].Text;
            Estudiante1.texto = GridView1.Rows[fila].Cells[5].Text;
            EstudianteNum2.texto2 = GridView1.Rows[fila].Cells[6].Text;

            DropDownList1.SelectedValue = GridView1.Rows[fila].Cells[7].Text;
            BtnModi();
        }
        protected void Limpiar()
        {
            EstudianteNum1.texto2 = "";
            EstudianteNum2.texto2 = "";
            EstudianteLetras1.texto3 = "";
            EstudianteLetras2.texto3 = "";
            EstudianteLetras3.texto3 = "";
            Estudiante1.texto = "";
            RadioButtonList1.Text = "";
        }
        protected void BtnModi()
        {
            btneliminar.Visible = false;
            btnmodificar.Visible = true;
            btnregistrar.Visible = false;
            Label1.Text = "";
        }
        protected void BtnListos()
        {
            btneliminar.Visible = false;
            btnmodificar.Visible = false;
            btnregistrar.Visible = true;
        }
    }
}