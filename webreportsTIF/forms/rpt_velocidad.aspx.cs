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

        //public void LlenarGV()
        //{
        //    GridView1.DataSource = Listar();
        //    GridView1.DataBind();
        //}

        //public DataSet Listar()
        //{
        //    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SA"].ConnectionString))
        //    {
        //        conn.Open();

        //        SqlDataAdapter adapter;
        //        string fechaInicioStr;
        //        string fechaFinalStr;
        //        string sql = "SELECT * FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_eSC WHERE ID_MOV IN (1,2)";
        //        DataSet ds = new DataSet();
        //        adapter = new SqlDataAdapter(sql, conn);
        //        adapter.Fill(ds, "tbl");
        //        return ds;
        //    }
        //}

        //protected void btbuscar_Cick(object sender, EventArgs e)
        //{
        //    LlenarGV();
        //}
    }
}