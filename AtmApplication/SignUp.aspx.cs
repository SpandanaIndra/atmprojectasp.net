using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AtmApplication
{
    public partial class SignUp : System.Web.UI.Page
    {
        static string GenerateRandomPIN(int length)
        {

            Random random = new Random();
            string pin = "";

            for (int i = 0; i < length; i++)
            {
                // Generate a random digit (0 to 9) and append it to the PIN
                int digit = random.Next(10);
                pin += digit.ToString();
            }

            return pin;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            txtMinBal.Text = 5000.ToString();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //var n = txtPassword.Text.Length;
            //Response.Write(n);
            try
            {
                if (txtUsername.Text != "" && txtPassword.Text != "")
                {
                    if(txtPassword.Text.Length==10)
                    { 
                   
                        string pin = GenerateRandomPIN(4);
                        SqlConnection con = new

                        SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

                        con.Open();
                        SqlCommand cmd = new SqlCommand("proc_InsertUserDetails", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@cname", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@mobnum", txtPassword.Text);
                        cmd.Parameters.AddWithValue("@balamt", txtMinBal.Text);
                        cmd.Parameters.AddWithValue("@pin", pin);
                        int result = cmd.ExecuteNonQuery();
                        con.Close();

                        if (result != 0)
                        {
                            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

                            con.Open();
                            SqlCommand cmd1 = new SqlCommand("proc_AccountNo", con);
                            SqlDataReader rdr = cmd1.ExecuteReader();
                            if(rdr.Read())
                            {
                                int AccNo = Convert.ToInt32(rdr["AccountNo"]);
                                string pinnum = rdr["PinNo"].ToString();
                                Label1.Visible = true;
                                Label1.Text = "Your Registration is Succesfully Completed..!!\n" + "Your Account Number is " +"<h4 style=Color:green;display:inline-block>"+ AccNo +"</h4>"+ " & Your Pin Number is " + "<h4 style=Color:green;display:inline-block>" + pinnum + "</h4>";

                            }
                         

                        }
                        else
                            Response.Write("Please enter valid details..!");
                    }
                    else
                    {
                        string message = "Please enter valid Mobile Number..Mobile number must contain only 10 digits";
                    string script = $"<script>alert('{message}');</script>";
                       ClientScript.RegisterStartupScript(this.GetType(), message, script);

                    }
                }
                else
                {
                    string message = "User name and Mobile Number must..Please dont left blank";
                    string script = $"<script>alert('{message}');</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), message, script);

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}