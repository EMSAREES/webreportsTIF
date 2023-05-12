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
    public partial class rpt_mermas : System.Web.UI.Page
    {

        string fechaInicioStr;
        string fechaFinalStr;
 
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public void LlenarGV()
        {
            GVMermas.DataSource = Listar();         
            GVMermas.DataBind();
        }

        public DataSet Listar()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SA"].ConnectionString))
            {
                conn.Open();

                SqlDataAdapter adapter;
                fechaInicioStr = fechaInicio.Value;
                fechaFinalStr = fechaFinal.Value;
                string sql = "EXEC SP_CONS_MERMAGH '" + fechaInicioStr + "', '" + fechaFinalStr + "'" ;
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            LlenarGV();
        }
    }
}