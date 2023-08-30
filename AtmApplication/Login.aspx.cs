using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AtmApplication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if(txtUsername.Text!=""&& txtPassword.Text!="")
                { 

                SqlConnection con = new
    SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("proc_GetUserDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ano", txtUsername.Text);
                cmd.Parameters.AddWithValue("@pno", txtPassword.Text);

                SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read())
                    {
                        Session["uname"] = rdr["CName"];
                        Session["accno"] = rdr["AccountNo"];
                        Session["pinno"] = rdr["PinNo"];


                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Invalid Credentials..!!!";
                    }
                   

                }
                else
                {
                    string message = "Account Number and Pin is Must to Login";
                    string script = $"<script>alert('{message}');</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), message, script);
                }
            }
            catch(SqlException exe)
            {
                Response.Write("Error Occured While Connecting To Server.Please Wait..!");
            }
        }
    }
}