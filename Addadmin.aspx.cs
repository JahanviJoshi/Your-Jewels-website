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
    public partial class bu : System.Web.UI.Page
    {  static string imagelink;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getproductid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                String query = "insert into bracelets(Braceletid,Braceletname,Braceletprice,Braceletimg,Braceletdescription,Braceletsize) values('" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + imagelink + "','"+TextBox3.Text+"','"+TextBox4.Text+"')";
                String mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label3.Text = "Product Has Been Successfully Saved";
                getproductid();
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
           
        }
        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {

                    FileUpload1.SaveAs(Server.MapPath("~/images/") + Label2.Text + ".jpg");
                    imagelink = "images/" + Label2.Text + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Label3.Text = "Kindly Upload JPEG Format Image Only";
                }

            }

            else
            {
                Label3.Text = "You have not selected any file - Browse and Select File First";
            }

            return imagesaved;

        }
        public void getproductid()
        {
            String mycon = "Data Source=DESKTOP-M40PQKC;Initial Catalog=database;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select Braceletid from bracelets";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                Label2.Text = "1001";

            }
            else
            {



                String mycon1 = "Data Source=DESKTOP-M40PQKC;Initial Catalog=database;Integrated Security=True";
                SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select max(Braceletid) from bracelets";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                Label2.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt16(Label2.Text);
                a = a + 1;
                Label2.Text = a.ToString();
                scon1.Close();
            }

        }

        
    }
}