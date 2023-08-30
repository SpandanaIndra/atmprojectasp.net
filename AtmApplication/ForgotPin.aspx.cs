using Microsoft.Ajax.Utilities;
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
    public partial class ForgotPin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible=false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                if(txtUsername.Text!="" && txtPinNum.Text!=""&& txtAccountNum.Text!="")
                { 
                SqlConnection con = new
                SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("proc_forgotpassword", con);
                cmd.CommandType = CommandType.StoredProcedure;
                int accnum = Convert.ToInt32(txtAccountNum.Text);
                cmd.Parameters.AddWithValue("@acc", accnum);
                cmd.Parameters.AddWithValue("@name", txtUsername.Text);

                cmd.Parameters.AddWithValue("@pin", txtPinNum.Text);


               int result= cmd.ExecuteNonQuery();
                    if (result > 1)
                    {
                        Label1.Visible = true;
                        Label1.Text = "You have created the new pin number successfully..!!!Please Login With Your New Pin";

                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Invalid Credentials..!!!";
                    }
                    
                   

                }
                else
                {
                    string message = "All fields are must";
                    string script = $"<script>alert('{message}');</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), message, script);
                }
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}