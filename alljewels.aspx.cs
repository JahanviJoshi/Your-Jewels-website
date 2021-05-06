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
    public partial class alljewels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*   if(!IsPostBack)
               {
                   bind();
               }

           }*/
        }

      /*  void bind()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-M40PQKC; Initial Catalog=database;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from upload", con);
            DataTable dt=new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }*/
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
/*        protected void DataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="designs")
            {
                Response.Redirect("designs.aspx?productname" + e.CommandArgument.ToString());

            }

            }*/
}
}