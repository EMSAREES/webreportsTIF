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
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace webreportsTIF.forms
{
    public partial class rpt_velocidad : System.Web.UI.Page
    {
        string fechaInicioStr;
        string fechaFinalStr;
        string consecutivoDiaStr;
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
                fechaInicioStr = fechaInicio.Value;
                fechaFinalStr = fechaFinal.Value;
                consecutivoDiaStr = dia.Value;
                string sql = "SELECT E.ID_ESC, D.ID_CTE, D.ID_PROD, D.PIEZAS, D.PESO, D.CONSECUTIVO_DIA, D.CONSECUTIVO_LOTE, Subquery.FECHA_INICIAL, Subquery.FECHA_FINAL, CONVERT(VARCHAR(8), DATEADD(SECOND, DATEDIFF(SECOND, (SELECT d.hora AS FECHA_INICIAL FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_ESC WHERE ID_MOV IN (1) AND E.FECHA >= '" + fechaInicioStr +"' AND E.FECHA <= '"+ fechaFinalStr +"' AND consecutivo_dia = '"+ consecutivoDiaStr +"'), (SELECT TOP 1 d.hora AS FECHA_FINAL FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_ESC WHERE ID_MOV IN (2) AND E.FECHA >= '"+ fechaInicioStr +"' AND E.FECHA <= '"+ fechaFinalStr +"' AND consecutivo_dia = '"+ consecutivoDiaStr +"')), 0), 108) AS DIFERENCIA_HORAS FROM ENTSAL E INNER JOIN ENTSAL_DET D ON E.ID_ESC = D.ID_ESC CROSS APPLY (SELECT (SELECT d.hora AS FECHA_INICIAL FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_ESC WHERE ID_MOV IN (1) AND E.FECHA >= '"+ fechaInicioStr +"' AND E.FECHA <= '"+ fechaFinalStr +"' AND consecutivo_dia = '"+ consecutivoDiaStr +"') AS FECHA_INICIAL, (SELECT TOP 1 d.hora AS FECHA_FINAL FROM ENTSAL_DET D INNER JOIN ENTSAL E ON E.ID_ESC = D.ID_ESC WHERE ID_MOV IN (2) AND E.FECHA >= '"+ fechaInicioStr +"' AND E.FECHA <= '"+ fechaFinalStr +"' AND consecutivo_dia = '"+ consecutivoDiaStr +"') AS FECHA_FINAL ) Subquery WHERE ID_MOV IN (1) AND E.FECHA >= '"+ fechaInicioStr +"' AND E.FECHA <= '"+ fechaFinalStr +"' AND consecutivo_dia = '"+ consecutivoDiaStr +"'";
                Session["FechaISac"] = fechaInicioStr;
                Session["FechaFSac"] = fechaFinalStr;
                Session["ConsecutivoDiaSac"] = consecutivoDiaStr;
                DataSet ds = new DataSet();
                adapter = new SqlDataAdapter(sql, conn);
                adapter.Fill(ds, "tbl");
                return ds;
            }
        }

        protected void btnimprimir_Click(object sender, EventArgs e)
        {
            Response.Redirect("/reportes/form_rpt_velocidad.aspx");
        }
    }
}