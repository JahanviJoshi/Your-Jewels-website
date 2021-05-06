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
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
           /* if (!IsPostBack)
            {
                bind();
            }
        }*/
//        void bind()
       // {
           // string abc = Request.QueryString["id"];
           /* SqlConnection con = new SqlConnection("Data Source=DESKTOP-M40PQKC; Initial Catalog=database;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from dpendant where keyword like '<%#Eval("Keywordsearch") %>'" , con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();*/

        //}
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mcon= ConfigurationManager.ConnectionStrings["database"].ConnectionString;
            SqlConnection con=new SqlConnection(mcon);
            con.Open();
            SqlCommand cmd=new SqlCommand();
            string sqlquery="select* from[dbo].[jewels] where Keywordsearch like '%'+@Keywordsearch+'%'";
            cmd.CommandText=sqlquery;
            cmd.Connection=con;
            cmd.Parameters.AddWithValue("Keywordsearch",TextBox1.Text);
            DataTable dt=new DataTable();
            SqlDataAdapter sa=new SqlDataAdapter(cmd);
            sa.Fill(dt);
            DataList1.DataSource=dt;
            DataList1.DataBind();


        }
    }
}