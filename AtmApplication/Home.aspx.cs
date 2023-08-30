using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AtmApplication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "<h2><b>Hi " + Session["uname"]+"..!!</b></h2>";
            Label2.Text="<b>Welcome To Any Time Money..</b>";

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnChangePin_Click(object sender, EventArgs e)
        {
            Server.Transfer("ForgotPin.aspx");
        }

        protected void btnCredit_Click(object sender, EventArgs e)
        {
            Server.Transfer("Credit.aspx");

        }

        protected void btnDebit_Click(object sender, EventArgs e)
        {
            Server.Transfer("Debit.aspx");

        }

        protected void btnMiniStmt_Click(object sender, EventArgs e)
        {
            Server.Transfer("MiniStatement.aspx");

        }
    }
}