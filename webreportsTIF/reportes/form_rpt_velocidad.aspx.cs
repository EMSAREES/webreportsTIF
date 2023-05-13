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
using Microsoft.Reporting.WebForms.Internal.Soap.ReportingServices2005.Execution;

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
                string sql = "SELECT E.ID_ESC, D.ID_CTE, D.ID_PROD, D.PIEZAS, D.PESO, D.CONSECUTIVO_DIA, D.CONSECUTIVO_LOTE, Subquery.FECHA_INICIAL, Subquery.FECHA_FINAL, CONVERT(VARCHAR(8), DATEADD(SECOND, DATEDIFF(SECOND, (SELECT d.hora AS FECHA_INICIAL FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_ESC WHERE ID_MOV IN (1) AND E.FECHA >= '" + Session["FechaISac"] + "' AND E.FECHA <= '" + Session["FechaFSac"] + "' AND consecutivo_dia = '" + Session["ConsecutivoDiaSac"] + "'), (SELECT TOP 1 d.hora AS FECHA_FINAL FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_ESC WHERE ID_MOV IN (2) AND E.FECHA >= '" + Session["FechaISac"] + "' AND E.FECHA <= '" + Session["FechaFSac"] + "' AND consecutivo_dia = '" + Session["ConsecutivoDiaSac"] + "')), 0), 108) AS DIFERENCIA_HORAS FROM ENTSAL E INNER JOIN ENTSAL_DET D ON E.ID_ESC = D.ID_ESC CROSS APPLY (SELECT (SELECT d.hora AS FECHA_INICIAL FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_ESC WHERE ID_MOV IN (1) AND E.FECHA >= '" + Session["FechaISac"] + "' AND E.FECHA <= '" + Session["FechaFSac"] + "' AND consecutivo_dia = '" + Session["ConsecutivoDiaSac"] + "') AS FECHA_INICIAL, (SELECT TOP 1 d.hora AS FECHA_FINAL FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_ESC WHERE ID_MOV IN (2) AND E.FECHA >= '" + Session["FechaISac"] + "' AND E.FECHA <= '" + Session["FechaFSac"] + "' AND consecutivo_dia = '" + Session["ConsecutivoDiaSac"] + "') AS FECHA_FINAL ) Subquery WHERE ID_MOV IN (1) AND E.FECHA >= '" + Session["FechaISac"] + "' AND E.FECHA <= '" + Session["FechaFSac"] + "' AND consecutivo_dia = '" + Session["ConsecutivoDiaSac"] + "'";
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;
            }
        }
    }
}