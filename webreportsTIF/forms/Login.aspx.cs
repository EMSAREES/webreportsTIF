using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace webreportsTIF.forms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Iniciar.Style["background-color"] = "#bfc0c0";
            Iniciar.Style["color"] = "#000";
            Iniciar.Style["padding"] = "10px";
            Iniciar.Style["border"] = "none";
            Iniciar.Style["border-radius"] = "5px";
            Iniciar.Style["font-size"] = "16px";
            Iniciar.Style["margin-top"] = "20px";
            Iniciar.Style["cursor"] = "pointer";
            Iniciar.Style["transition"] = "background-color 0.3s";
        }

        protected void Iniciar_Click(object sender, EventArgs e)
        {
            SqlParameter param = new SqlParameter();
            Int32 res = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SA"].ConnectionString);
            SqlCommand comando = new SqlCommand("", con);
            comando.CommandText = "Sp_LoginUsuario";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@Nombre", usuario.Text);
            comando.Parameters.AddWithValue("@pass", contraseña.Text);
            comando.Parameters.AddWithValue("@result", SqlDbType.Bit);
            comando.Parameters["@result"].Direction = ParameterDirection.Output;
            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                res = Convert.ToInt32(comando.Parameters["@result"].Value);
                if (res == 1)
                {
                    Response.Redirect("/forms/Menu.aspx");
                }
                else
                {
                    string msg = "El usuario o la contraseña son incorrectos, intentelo de nuevo";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + msg + "')", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + ex + "')", true);
            }
            finally
            {
                comando.Dispose();
                con.Close();
            }
        }
    }
}