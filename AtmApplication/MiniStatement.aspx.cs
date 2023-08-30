using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace AtmApplication
{
    public partial class MiniStatement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "<h2>Mini Statement</h2>";

            int accno = Convert.ToInt32(Session["accno"]);
           
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

            con1.Open();
            SqlCommand cmd1 = new SqlCommand("proc_miniStmt", con1);
            cmd1.CommandType = CommandType.StoredProcedure;


            cmd1.Parameters.AddWithValue("@accno", accno);
            SqlDataAdapter sd = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            sd.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            
            con1.Close();
        }
    }
}