using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

using System.Configuration;

using System.Web.UI.HtmlControls;

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

// Importar el namespace donde se encuentra
using webreportsTIF.forms;
using Microsoft.Reporting.WebForms.Internal.Soap.ReportingServices2005.Execution;

namespace webreportsTIF.reportes
{
    public partial class form_rpt_sacrificio : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
              rpt_sacrificio rpts = new rpt_sacrificio();
              reportes.cr_rpt_sacrificio report = new reportes.cr_rpt_sacrificio();

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
                //fechaInicioStr = fechaInicio.Value;
                //fechaFinalStr = fechaFinal.Value;
                //loteStr = lote.Value;
                string sql = "EXEC SP_CONS_ENTSAL_ENCDET_RENDIMIENTO_GANADO_EN_PIE 1, '" + Session["FechaISac"] + "', '" + Session["FechaFSac"]  + "', '" + Session["LoteSac"] + "', '1'";
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;

            }

        }
    }
}