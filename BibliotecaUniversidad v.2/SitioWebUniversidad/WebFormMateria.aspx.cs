using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioWebUniversidad
{
    public partial class WebFormMateria : System.Web.UI.Page
    {
        dbuniversidadEntities1 contexto = new dbuniversidadEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualizarVista();
            btneliminar.Visible = false;
            btnmodificar.Visible = false;
        }
        public void ActualizarVista()
        {
            var TMateria = from tabla in contexto.materia select tabla;
            GridView1.DataSource = TMateria;
            GridView1.DataBind();
        }
        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            materia objmateria = new materia();

            this.cargarmateria(objmateria);
            if (this.guardarmateria(objmateria))
            {
                this.Label1.Text = "Guardado Correctamente";
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Error en el registro de Estudiante...";
            }
            limpiar();
        }

        private bool guardarmateria(materia objmateria)
        {
            contexto.AddTomateria(objmateria);
            return contexto.SaveChanges() >= 1;
        }

        private void cargarmateria(materia objmateria)
        {
            objmateria.sigla = txtsigla.Text;
            objmateria.nombre = EstudianteLetras1.texto3;
            objmateria.detalle = txtdetalle.Text;
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
            string sigla = txtsigla.Text;
            SitioWebUniversidad.materia objmateria = contexto.materia.FirstOrDefault(a => a.sigla == sigla);

            if (objmateria != null)
            {
                contexto.DeleteObject(objmateria);
                this.Label1.Text = "Eliminado Correctamente";
                contexto.SaveChanges();
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Error en la eliminacion";
            }
            BtnListos();
            limpiar();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            string sigla = txtsigla.Text;
            SitioWebUniversidad.materia objmateria = contexto.materia.FirstOrDefault(a => a.sigla == sigla);

            if (objmateria != null)
            {
                EstudianteLetras1.texto3 = objmateria.nombre;
                txtdetalle.Text = objmateria.detalle;
            } 
        }

        protected void btnmodificar_Click(object sender, EventArgs e)
        {
            string sigla = txtsigla.Text;
            SitioWebUniversidad.materia objmateria = contexto.materia.FirstOrDefault(a => a.sigla == sigla);

            if (objmateria != null)
            {
                objmateria.nombre = EstudianteLetras1.texto3;
                objmateria.detalle = txtdetalle.Text;

                this.Label1.Text = "Modificado Correctamente";
                contexto.SaveChanges();
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Modificacion Incorrecta";
            }
            BtnListos();
            limpiar();
        }
        protected void limpiar()
        {
            txtsigla.Text = "";
            txtdetalle.Text = "";
            EstudianteLetras1.texto3 = "";
            
        }
        protected void BtnModi()
        {
            btneliminar.Visible = true;
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
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int fila = GridView1.SelectedIndex;
            txtsigla.Text = GridView1.Rows[fila].Cells[0].Text;
            EstudianteLetras1.texto3 = GridView1.Rows[fila].Cells[1].Text;
            txtdetalle.Text = GridView1.Rows[fila].Cells[2].Text;
            
            BtnModi();
        }

    }
}