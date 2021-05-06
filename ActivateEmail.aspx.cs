using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace user_Registration
{
    public partial class ActivateEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "Your email is" + Request.QueryString["Emailid"].ToString() + ",Kindly Check Your Inbox For Activation Code";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=true";
            String myquery = "Select * from emailverify where Eaddress='" + Request.QueryString["Emailid"].ToString() + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                String activationcode;
                activationcode = ds.Tables[0].Rows[0]["Activatecode"].ToString();
                Response.Write(activationcode);
                if(activationcode == TextBox1.Text.Trim())
                {
                    changestatus();
                    Label4.Text = "Your Email has verified Successfully";

                }
                else
                {
                    Label4.Text = "You have enter invaild Activationcode,Kindly check your Mail inbox";

                }
            }
            con.Close();
        }
    
        private void changestatus()
        {
            String mycon = "Data Source=DESKTOP-M40PQKC;Initial Catalog=database;Integrated Security=true";
            String updatedata="Update emailverify set status='verified' where Eaddress='"+Request.QueryString["Emailid"]+"'";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd= new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();



        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}