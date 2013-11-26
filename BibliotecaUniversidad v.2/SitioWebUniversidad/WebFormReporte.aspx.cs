using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SitioWebUniversidad
{
    public partial class WebFormReporte : System.Web.UI.Page
    {
          
        
        protected void Page_Load(object sender, EventArgs e)
        {


                     
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //DataSet1TableAdapters.DataTable1TableAdapter ta = new DataSet1TableAdapters.DataTable1TableAdapter();

            //ReportViewer1.LocalReport.DataSources.Clear();

            //ReportViewer1.LocalReport.Refresh();

            ReportViewer3.LocalReport.Refresh();
            ReportViewer4.LocalReport.Refresh();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}