using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace user_Registration
{
    public partial class masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"]!=null)
            {
                Label2.Text = "Hello," + Session["username"].ToString();
                HyperLink1.Visible = false;
                LinkButton1.Visible = true;
  
            }
            else
            {
                Label2.Text = "Hello Visitors,Welcome!!";
                HyperLink1.Visible = true;
                LinkButton1.Visible = false;

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("signout.aspx");
        }
    }
}