﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REGISTRO
{
    public partial class EstudianteNum : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public string texto2
        {
            set { TextBox6.Text = value; }
            get { return TextBox6.Text; }
        }
    }
}