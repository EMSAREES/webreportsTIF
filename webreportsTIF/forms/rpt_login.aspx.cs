﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

using System.Configuration;

namespace webreportsTIF.forms
{
    public partial class rpt_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SA"].ConnectionString))
            {
                cn.Open();

                string query = "SELECT COUNT(*) FROM USUARIOS WHERE NOMBRE = @NOMBRE";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.Parameters.AddWithValue("@NOMBRE", Usuario.Text);
                //cm.Parameters.AddWithValue("@PASSWORD", Contraseña.Text);

                //Si existe un usuario con los datos retorna true, caso contrario false
                bool correcto = Convert.ToInt32(cm.ExecuteScalar()) > 0;

                if (correcto)
                {
                //Si existe, Bienvenido...
                Response.Redirect("~/forms/rpt_sacrificio.aspx");
                }
                else
                {
                Label1.Text = "Su usuario o contraseña son incorrectos";
                Usuario.Text = "";
                Contraseña.Text = "";
                Usuario.Focus();
                }

                cn.Close();

            }
        }
    }
}