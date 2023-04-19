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

namespace webreportsTIF.forms
{
    public partial class rpt_velocidad : System.Web.UI.Page
    {
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
                //string fechaInicioStr;
                //string fechaFinalStr;
                string sql = "SELECT * FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_eSC WHERE ID_MOV IN (1,2) AND E.FECHA >= '2021-12-01 00:00' AND E.FECHA <= '2021-12-01 23:59'";
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;
            }
        }
    }
}