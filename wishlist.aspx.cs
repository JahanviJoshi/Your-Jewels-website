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
    public partial class wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=True";
           String myquery = "select * from jewels where Productid IN(select productid from wishlist where username='"+Session["username"].ToString()+"')";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            Response.Write(Session["username"]);


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
       
    }
}