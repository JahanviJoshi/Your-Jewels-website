using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace user_Registration
{
    public partial class Imageupload : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a;
            a = ConfigurationManager.ConnectionStrings["database"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            if(!FileUpload1.HasFile)
            {
                Label1.Text = "Please insert image!!";
            }
            else
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                SqlCommand cmd=new SqlCommand("insert into imagetb"+"(email,image)values(@email,@image)",con);
                cmd.Parameters.AddWithValue("@email",TextBox1.Text);
                cmd.Parameters.AddWithValue("@image",pic);
                cmd.ExecuteNonQuery();
                Label1.Text="Uploded";


            }


        }
    }
}