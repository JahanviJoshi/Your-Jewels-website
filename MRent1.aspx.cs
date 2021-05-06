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
    public partial class MRent1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
            //Rent
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                Label2.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label2.Text = "0";

            }
        }
    
        void bind()
        {
            string abc = Request.QueryString["id"];
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from Rent where Productid='" + abc + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        

        
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "rent")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                DropDownList dlist1 = (DropDownList)(e.Item.FindControl("DropDownList2"));
                Response.Redirect("Rent.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString() + "&Duration=" +dlist1.SelectedItem.ToString());
              


            }






            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        

        

       


        

       
    

    }    
}
