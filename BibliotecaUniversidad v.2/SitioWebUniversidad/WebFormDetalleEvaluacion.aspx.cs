using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitioWebUniversidad
{
    public partial class WebFormDetalleEvaluacion : System.Web.UI.Page
    {
        dbuniversidadEntities1 contexto = new dbuniversidadEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                                     
                //var TEstudiantes = from es in contexto.estudiante
                //                       join i in contexto.inscripcion on es.codigo equals i.codigo
                //                       join m in contexto.materia on i.sigla equals m.sigla 
                //                       select new{
                //                       es.codigo,
                //                       es.nombre,
                //                       es.paterno,
                //                       es.materno,
                //                       es.genero                                      
                //                       };

                ////var TEstudiantes = from tabla in contexto.estudiante select tabla; 

                //GridView1.DataSource = TEstudiantes;
                //GridView1.DataBind();
            }
        }

        protected void btnBuscarMateria_Click(object sender, EventArgs e)
        {
            //long siglaa;
            //if (long.TryParse(this.txtcodmateria.Text, out siglaa) == true)
            //{
            //    var objmateria = from es in contexto.estudiante
            //                           join i in contexto.inscripcion on es.codigo equals i.codigo
            //                           join m in contexto.materia on i.sigla equals m.sigla 
            //                           where es.codigo.Equals(i.sigla)
            //                     //where i.sigla.Equals(siglaa)
            //                           select new
            //                           {                                     
            //                               Codigo = es.codigo,
            //                               Nombre = es.nombre,

            //                               Paterno = es.paterno,
            //                               Materno = es.materno,
            //                               Genero = es.genero,                                                                            
            //                           };

            //this.GridView2.DataSource = objmateria;
            //this.GridView2.DataBind();  
            //}
            //}

            string sigla = txtcodmateria.Text;
            // SitioWebUniversidad.materia objmateria = contexto.materia.FirstOrDefault(a => a.sigla == sigla);        
            SitioWebUniversidad.materia objMateria = new SitioWebUniversidad.materia();
            objMateria = contexto.materia.FirstOrDefault(a => a.sigla == sigla);

            if (objMateria != null)
            {
                txtdetallemateria.Text = objMateria.nombre + "\n" + objMateria.detalle;
                mostrarEstudiantes();
            }
        }

        private void mostrarEstudiantes()
        {
            var TEstudiantes = from es in contexto.estudiante
                               join i in contexto.inscripcion on es.codigo equals i.codigo
                               join m in contexto.materia on i.sigla equals m.sigla
                               where i.sigla.Contains(txtcodmateria.Text)                              
                               select new 
                               {
                                   es.codigo,
                                   es.nombre,
                                   es.paterno,
                                   es.materno,
                                   es.genero
                               };

            //var TEstudiantes = from tabla in contexto.estudiante select tabla; 

            GridView1.DataSource = TEstudiantes;
            GridView1.DataBind();
        }

        protected void btnguardarnotas_Click(object sender, EventArgs e)
        {
            evaluacion objEvaluacion = new evaluacion();

            objEvaluacion.sigla = txtcodmateria.Text;

            objEvaluacion.numero = int.Parse(txtnumero.Text);
            objEvaluacion.nombre = txtnombre.Text;
            objEvaluacion.puntaje = int.Parse(txtpuntaje.Text);
            objEvaluacion.detalle = txtdetalle.Text;

            contexto.evaluacion.AddObject(objEvaluacion);
            contexto.SaveChanges();

            int filas = GridView1.Rows.Count;
            for (int i = 0; i < filas; i++)
            {
                if ((GridView1.Rows[i].Cells[5].FindControl("txtnota") as TextBox).Text != "")

                {
                    this.Label1.Text = "Guardado Correctamente";
                    SitioWebUniversidad.detalleEvaluacion objdetalle = new SitioWebUniversidad.detalleEvaluacion();

                    objdetalle.codigo = int.Parse(GridView1.Rows[i].Cells[0].Text);
                    objdetalle.numero = int.Parse(txtnumero.Text);

                    objdetalle.nota = int.Parse((GridView1.Rows[i].Cells[5].FindControl("txtnota") as TextBox).Text);

                    contexto.detalleEvaluacion.AddObject(objdetalle);
                    contexto.SaveChanges();
                }
                else
                {
                    Label1.Text = "Error en el registro de evaluacion";
                }
            }
        }
    }
}