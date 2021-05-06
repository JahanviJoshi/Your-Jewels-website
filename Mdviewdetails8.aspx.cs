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
    public partial class Mdviewdetails8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }

            //adtocart
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
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-M40PQKC; Initial Catalog=database;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from dnacklace where Necklaceid=" + abc, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //addtocart
            if (e.CommandName == "addtocart")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("MAddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString());

            }
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            //Stock
            Label lb = e.Item.FindControl("Label6") as Label;
            ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;
            Label lb1 = e.Item.FindControl("Label3") as Label;

            string mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=True";
            string myquery = "Select * from StockDetail where productid=" + lb1.Text;
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            string stockdata = "";

            if (ds.Tables[0].Rows.Count > 0)
            {
                stockdata = ds.Tables[0].Rows[0]["stockavailable"].ToString();

            }
            con.Close();

            if (stockdata == "0")
            {
                lb.Text = "Out of Stock";
                btn.Enabled = false;
                btn.ImageUrl = "images/soldout.jpg";

            }
            else
            {
                lb.Text = stockdata;
            }
        }
    }
}