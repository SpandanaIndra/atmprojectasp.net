using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AtmApplication
{
    public partial class Debit : System.Web.UI.Page
    {
         
        double GetAmount()
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

            con1.Open();
            SqlCommand cmd1 = new SqlCommand("proc_getcurrentbal", con1);
            cmd1.CommandType = CommandType.StoredProcedure;

            cmd1.Parameters.AddWithValue("@accno", txtAccNum.Text);
            object currentAmount = cmd1.ExecuteScalar();
             double  currAmt = Convert.ToDouble(currentAmount);
            return currAmt;

            con1.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            txtAccNum.Text = Session["accno"].ToString();
            Label1.Visible = false;


        }

        protected void btnCredit_Click(object sender, EventArgs e)
        {
            try
            {

                double amt = GetAmount();
                double req = Convert.ToDouble(txtAmount.Text);

                if (amt > req)
                {



                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

                    con.Open();
                    SqlCommand cmd = new SqlCommand("proc_debitcustomer", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    int act = (int)Session["accno"];

                    cmd.Parameters.AddWithValue("@accno", act);
                    cmd.Parameters.AddWithValue("@amt", txtAmount.Text);

                    int result = cmd.ExecuteNonQuery();
                    con.Close();

                    if (result != 0)
                    {
                        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

                        con.Open();
                        SqlCommand cmd1 = new SqlCommand("proc_UodateDetails", con);
                        SqlDataReader rdr = cmd1.ExecuteReader();
                        if (rdr.Read())
                        {
                            double Amount = Convert.ToDouble(rdr["AvailableBal"]);
                            Label1.Visible = true;
                            Label1.Text = "Your Transaction is Succesfully Completed..!!\n" + "Available Balance is " + "<h4 style=Color:green;display:inline-block>" + Amount;

                        }


                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }

    }
    
}