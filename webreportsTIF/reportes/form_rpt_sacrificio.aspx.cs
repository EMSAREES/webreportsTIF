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


            //// Crear una instancia
           //forms.rpt_sacrificio rpts = new forms.rpt_sacrificio();

            //// rpts.Listar();
            reportes.CrystalReport1 report = new reportes.CrystalReport1();

            DataSet ds = Listar();
            report.SetDataSource(ds);
            // report.VerifyDatabasehttps://localhost:44361/reportes/form_rpt_sacrificio.aspx.cs();
            ReportParameter[] reportParameters = new ReportParameter[1];

            //reportParameters[0] = new ReportParameter("@ID_MOV", 1);
            //CrystalReport1.SetParameters(reportParameters);

            CrystalReportViewer1.ReportSource = report;
            //report.ParameterFields.Add("@ID_MOV", SqlDbType.Int);
            CrystalReportViewer1.RefreshReport();

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