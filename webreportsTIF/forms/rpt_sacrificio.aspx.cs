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

namespace webreportsTIF.forms
{
    public partial class rpt_sacrificio : System.Web.UI.Page
    {
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
                string fechaInicioStr = fechaInicio.Value;
                string fechaFinalStr = fechaFinal.Value;
                string loteStr = lote.Value;
                string sql = "EXEC SP_CONS_ENTSAL_ENCDET_RENDIMIENTO_GANADO_EN_PIE 1, '" + fechaInicioStr + "', '" + fechaFinalStr + "', '"+ loteStr + "', '1'";
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
    }
}
