using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;
using webreportsTIF.forms;

namespace webreportsTIF.reportes
{
    public partial class form_rpt_velocidad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            reportes.cr_rpt_velocidad report = new reportes.cr_rpt_velocidad();
            DataSet ds = Listar();
            report.SetDataSource(ds.Tables[0]);
            CrystalReportViewer1.ReportSource = report;
        }

        public DataSet Listar()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SA"].ConnectionString))
            {
                conn.Open();

                SqlDataAdapter adapter;
                string sql = "SELECT * FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_eSC WHERE ID_MOV IN (1,2) AND E.FECHA >= '"+ Session["FechaISac"] +"' AND E.FECHA <= '"+ Session["FechaFSac"] +"'";
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;
            }
        }
    }
}