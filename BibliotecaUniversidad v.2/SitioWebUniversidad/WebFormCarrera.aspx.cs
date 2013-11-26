using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioWebUniversidad
{
    public partial class WebFormCarrera : System.Web.UI.Page
    {
        dbuniversidadEntities1 contexto = new dbuniversidadEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            ActualizarVista();
        }

        public void ActualizarVista()
        {
            var TCarrera = from tabla in contexto.carrera select tabla;
            GridView1.DataSource = TCarrera;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            carrera objcarrera = new carrera();

            this.cargarcarrera(objcarrera);
            if (this.guardarcarrera(objcarrera))
            {
                this.Label1.Text = "Guardado Correctamente";
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Error en el registro de la carrera";
            }
        }

        private bool guardarcarrera(carrera objcarrera)
        {
            contexto.AddTocarrera(objcarrera);
            return contexto.SaveChanges() >= 1;
        }

        private void cargarcarrera(carrera objcarrera)
        {

            objcarrera.codigo = int.Parse(EstudianteNum1.texto2);
            objcarrera.nombre = EstudianteLetras1.texto3;
            objcarrera.detalle = txtdetalle.Text;
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            int codigo = int.Parse(EstudianteNum1.texto2);
            SitioWebUniversidad.carrera objCarrera = contexto.carrera.FirstOrDefault(a => a.codigo == codigo);

            if (objCarrera != null)
            {
                contexto.DeleteObject(objCarrera);
                this.Label1.Text = "Eliminado Correctamente";
                contexto.SaveChanges();
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Error en la eliminacion";
            }
        }

        protected void btnmodificar_Click(object sender, EventArgs e)
        {
            int codigo = int.Parse(EstudianteNum1.texto2);
            SitioWebUniversidad.carrera objCarrera = contexto.carrera.FirstOrDefault(a => a.codigo == codigo);
            if (objCarrera != null)
            {
                objCarrera.nombre = EstudianteLetras1.texto3;
                objCarrera.detalle = txtdetalle.Text;

                this.Label1.Text = "Modificado Correctamente";
                
                contexto.SaveChanges();
                ActualizarVista();
            }
            else
            {
                Label1.Text = "Modificacion Incorrecta";
            }   
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            int codigo = int.Parse(EstudianteNum1.texto2);
            SitioWebUniversidad.carrera objCarrera = contexto.carrera.FirstOrDefault(a => a.codigo == codigo);
            if (objCarrera != null)
            {
                EstudianteLetras1.texto3 = objCarrera.nombre;
                txtdetalle.Text = objCarrera.detalle;
            }         
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int fila = GridView1.SelectedIndex;
            EstudianteNum1.texto2 = GridView1.Rows[fila].Cells[0].Text;
            EstudianteLetras1.texto3 = GridView1.Rows[fila].Cells[1].Text;
            txtdetalle.Text = GridView1.Rows[fila].Cells[2].Text;
        }
    }
}