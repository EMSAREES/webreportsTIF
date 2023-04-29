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


namespace webreportsTIF.forms
{
    public partial class rpt_sacrificio : System.Web.UI.Page
    {

        string fechaInicioStr;
        string fechaFinalStr;
        string loteStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            //LlenarGV();


        }

        public void LlenarGV()
        {
            //if (!IsPostBack)
            //{
            GVSacrificio.DataSource = Listar();
            GVSacrificio.DataBind();
            //}
        }




        public DataSet Listar()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SA"].ConnectionString))
            {
                conn.Open();

                SqlDataAdapter adapter;
                fechaInicioStr = fechaInicio.Value;
                fechaFinalStr = fechaFinal.Value;
                loteStr = lote.Value;
                string sql = "EXEC SP_CONS_ENTSAL_ENCDET_RENDIMIENTO_GANADO_EN_PIE 1, '" + fechaInicioStr + "', '" + fechaFinalStr + "', '" + loteStr + "', '1'";
                Session["FechaISac"] = fechaInicioStr;
                Session["FechaFSac"] = fechaFinalStr;
                Session["LoteSac"] = loteStr;
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;
             
            }
        }

        protected void btbuscar_Click(object sender, EventArgs e)
        {
            LlenarGV();
        }

        /*------------------------------------------------------------------------------------------------------------------*/

       /* public void imprimir()
        {
        https://localhost:44361/forms/rpt_sacrificio.aspx.cs
            reportes.cr_rpt_sacrificio report = new reportes.cr_rpt_sacrificio();
            DataSet ds = Listar();
            //report.SetDataSource(Listar());
            report.SetDataSource(ds);
            //report.VerifyDatabase();
            CrystalReportViewer1.ReportSource = report;
            CrystalReportViewer1.RefreshReport();
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
         
            Response.Redirect("~/reportes/form_rpt_sacrificio.aspx");
        }

    }    
}
