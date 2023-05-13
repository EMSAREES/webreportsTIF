using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webreportsTIF.reportes
{
    public partial class frm_rpt_merma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            reportes.cr_rpt_mermagh report = new reportes.cr_rpt_mermagh();

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
              
                string sql = "EXEC SP_CONS_MERMAGH '" +  Session["FechaInicioStr"] + "', '" + Session["FechafinalStr"] + "'" ;
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;

            }
        }

    }
}