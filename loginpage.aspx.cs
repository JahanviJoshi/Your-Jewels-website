using System;
using System.Collections.Generic;
using System.Linq;  
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace user_Registration
{
    public partial class loginpage : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {//1
            /* Session["clothesrent"] = "cloth";
             if(Session["username"]== null)
             {
                 Response.Redirect("Login.aspx");
             }*/
        }//1

        protected void Button1_Click(object sender, EventArgs e)
        {//2
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["database"].ConnectionString);
            con.Open();
            string checkuser = "select count(*) from Table_1 where FirstName='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {//3
                con.Open();
                string checkpassword = "select Password from Table_1 where FirstName='" + TextBox2.Text + "'";
                SqlCommand cmdpass = new SqlCommand(checkpassword, con);
                string password = cmdpass.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox3.Text)
                {   //session created;
                    Session["username"] = TextBox2.Text;
                   Response.Redirect("Home.aspx");
                   



                }
                else
                {

                    Label3.Text = "Password is not correct";
                }
            }//3
            else
            {
                Label3.Text = "user name is not correct";
            }



        }//2
      



    }
}

