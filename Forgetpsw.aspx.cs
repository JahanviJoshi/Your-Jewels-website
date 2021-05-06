using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;


namespace user_Registration
{
    public partial class Forgetpswd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String password;
            String mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=True";
            String myquery = "Select * from Table_1 where FirstName='" + TextBox1.Text + "' and Emailid='" + TextBox2.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";

                password = ds.Tables[0].Rows[0]["Password"].ToString();
                sendpassword(password, TextBox2.Text);
                Label2.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

            }
            else
            {
                Label2.Text = "Your Username is Not Valid or Email Not Registered";

            }
            con.Close();

        }
        private void sendpassword(String password, String email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("janujoshi248@gmail.com", "januyashjoshi123");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password ( Your Jewels )";
            msg.Body = "Dear " + TextBox1.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\n Your Jewels";
            string toaddress = TextBox2.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Your Jewels <janujoshi248@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);


            }
            catch
            {
                throw;
            }
        }

    }
}