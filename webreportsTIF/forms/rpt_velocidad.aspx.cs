using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace webreportsTIF.forms
{
    public partial class rpt_velocidad : System.Web.UI.Page
    {
        string fechaInicioStr;
        string fechaFinalStr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            LlenarGV();
        }

        public void LlenarGV()
        {
            GVvelocidad.DataSource = Listar();
            GVvelocidad.DataBind();
        }

        public DataSet Listar()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SA"].ConnectionString))
            {
                conn.Open();

                SqlDataAdapter adapter;
                fechaInicioStr = fechaInicio.Value;
                fechaFinalStr = fechaFinal.Value;
                string sql = "SELECT * FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_eSC WHERE ID_MOV IN (1,2) AND E.FECHA >= '"+ fechaInicioStr +"' AND E.FECHA <= '"+ fechaFinalStr +"'";
                Session["FechaISac"] = fechaInicioStr;
                Session["FechaFSac"] = fechaFinalStr;
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;
            }
        }

        protected void btnimprimir_Click(object sender, EventArgs e)
        {
            Response.Redirect("/reportes/form_rpt_velocidad.aspx");
        }
    }
}