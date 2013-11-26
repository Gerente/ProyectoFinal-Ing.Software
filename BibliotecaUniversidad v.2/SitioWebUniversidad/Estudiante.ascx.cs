using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REGISTRO
{
    public partial class Estudiante : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       public string texto
        {         
            set { TextBox1.Text = value; }
            get { return TextBox1.Text; }
        }
    }
}