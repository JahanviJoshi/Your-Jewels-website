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
    public partial class Mviewdetails2 : System.Web.UI.Page
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
            //wishlist

            if (Request.QueryString["addtowishlist"] != null && Session["username"] != null)
            {
                String query = "insert into wishlist(username,productid) values('" + Session["username"].ToString() + "'," + Request.QueryString["addtowishlist"].ToString() + ")";
                String mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Product Added in Wishlist');</script>");
            }
            if (Session["username"] == null)
            {
                if (Request.QueryString["addtowishlist"] != null)
                {
                    Response.Write("<script>alert('Login to Your Account First. No Product Added in WishList');</script>");
                }
                Label4.Text = "Hello Guest,";
                LinkButton1.Visible = true;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
            }
            else
            {
                Label4.Text = "Hello " + Session["username"].ToString();
                LinkButton2.Visible = true;
                LinkButton1.Visible = false;
                LinkButton3.Visible = true;
            }

        }
        void bind()
        {
            string abc = Request.QueryString["id"];
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-M40PQKC; Initial Catalog=database;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from pendant where Pendantid='" + abc + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {//addtocart
            if (e.CommandName == "addtocart")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("MAddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString());

            }
            //wishlist
            if (e.CommandName == "addtowishlist")
            {
                Response.Redirect("Mviewdetails2.aspx?addtowishlist=" + e.CommandArgument.ToString());
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {//wishlist
            Response.Redirect("LoginPage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {//wishlist
            Session.Abandon();
            Response.Redirect("Mviewdetails2.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {//wishlist
            Response.Redirect("wishList.aspx");

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (Session["username"] != null)
            {
                Label lb = e.Item.FindControl("Label5") as Label;
                ImageButton btn = e.Item.FindControl("ImageButton2") as ImageButton;
                Label lb1 = e.Item.FindControl("Label6") as Label;
                String mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=True";
                String myquery = "select * from wishlist where productid='" + lb1.Text + "' and username='" + Session["username"] + "'";
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
                    lb.Text = "Already in Wishlist ";

                    btn.ImageUrl = "images/rw.jpg";
                    btn.Enabled = false;
                }
                else
                {
                    lb.Text = "Click Heart to Add in Wishlist";
                    btn.ImageUrl = "images/bw.jpg";
                }
                con.Close();
            }
            else
            {
                Label lb = e.Item.FindControl("Label5") as Label;
                ImageButton btn = e.Item.FindControl("ImageButton2") as ImageButton;
                lb.Text = "Click Heart to Add in Wishlist";
                btn.ImageUrl = "images/bw.jpg";

            }
        }
    }
}