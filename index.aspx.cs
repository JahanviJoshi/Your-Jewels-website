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
using System.Text;

namespace user_Registration
{
    public partial class index : System.Web.UI.Page
    {
        static string activationcode;
       // String encrypwd;
       
        
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
               
            }
        }
        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           
           
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["database"].ConnectionString);
           {
               con.Open();
               //encryption1();
               string command = "INSERT INTO Table_1(FirstName,LastName,Contact,Emailid,Gender,Address,Password) values(@FirstName,@LastName,@Contact,@Emailid,@Gender,@Address,@Password)";
               SqlCommand cmd = new SqlCommand(command, con);
               cmd.Parameters.AddWithValue("@FirstName", txtfirstname.Text.Trim());
               cmd.Parameters.AddWithValue("@LastName", txtlastname.Text.Trim());
               cmd.Parameters.AddWithValue("@Contact", txtcontact.Text.Trim());
               cmd.Parameters.AddWithValue("@Emailid", txtbox.Text.Trim());
               cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedValue);
               cmd.Parameters.AddWithValue("@Address", txtaddress.Text.Trim());
               cmd.Parameters.AddWithValue("@Password", txtpassword.Text.Trim());
               cmd.ExecuteNonQuery();

               lblsuccessmessage.Text = "successfully";

           }
          


           
        }
        void clear()
        {
            txtfirstname.Text= txtlastname.Text = txtpassword.Text= txtcontact.Text =txtbox.Text= txtaddress.Text=txtconfirmpassword.Text ="";
            hfuserid.Value ="";
            lblsuccessmessage.Text = lblsuccessmessage.Text ="";
        }

        protected void txtemail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random random=new Random();
            activationcode = random.Next(1001, 9999).ToString();
            String query = "insert into emailverify(Ename,Eaddress,Status,Activatecode)values('" + txtfirstname.Text + "','" + txtbox.Text + "','Unverified','" + activationcode + "')";
            String mycon = "Data Source=DESKTOP-M40PQKC;Initial Catalog=database;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            sendcode();
            Response.Redirect("ActivateEmail.aspx?Emailid=" + txtbox.Text);

        }
        private void sendcode()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("janujoshi248@gmail.com", "januyashjoshi123");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Activation code to verify Email Address";
            msg.Body = "Dear" + txtfirstname.Text + ",Activation code is" + activationcode + "\n\n\nThanks";
            string toaddress = txtbox.Text;
            msg.To.Add(toaddress);
            string fromaddress="Your jewels<janujoshi248@gmail.com>";
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
      /*  public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[txtfirstname.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(txtfirstname.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;
        }
       */



        protected void txtbox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}