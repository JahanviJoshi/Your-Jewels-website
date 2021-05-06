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
    public partial class Mviewdetails1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
            Session["addproduct"] = "false";



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
                Label3.Text = "Hello Guest,";
                LinkButton1.Visible = true;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
            }
            else
            {
                Label3.Text = "Hello " + Session["username"].ToString();
                LinkButton2.Visible = true;
                LinkButton1.Visible = false;
                LinkButton3.Visible = true;
            }


        }
        void bind()
        {
            string abc = Request.QueryString["id"];
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-M40PQKC; Initial Catalog=database;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from earring where Earringid='" + abc + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void AddToCart(object source, DataListCommandEventArgs e)
        {//addtocart//
            TextBox txtbox = (TextBox)(e.Item.FindControl("TextBox1"));
            Session["addproduct"] = "true";
            Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + txtbox.Text);

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginpage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mviewdetails1.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Response.Redirect("WishList.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            Response.Redirect("Mviewdetails1.aspx?addtowishlist=" + e.CommandArgument.ToString());
        }
        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {//wishlist//
            if (Session["username"] != null)
            {
                Label lb = e.Item.FindControl("Label2") as Label;
                ImageButton btn = e.Item.FindControl("ImageButton2") as ImageButton;
                Label lb1 = e.Item.FindControl("Label4") as Label;
                String mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=True";
                String myquery = "Select * from wishlist where productid='" + lb1.Text + "' and username='" + Session["username"] + "'";
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
                Label lb = e.Item.FindControl("Label2") as Label;
                ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;
                lb.Text = "Click Heart to Add in Wishlist";
                btn.ImageUrl = "images/bw.jpg";

            }

            //Stock
            Label lb2 = e.Item.FindControl("Label6") as Label;
            ImageButton btn1 = e.Item.FindControl("ImageButton1") as ImageButton;
            Label lb3 = e.Item.FindControl("Label3") as Label;

            string mycon1 = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=True";
            string myquery1 = "Select * from StockDetail where productid=" + lb3.Text;
            SqlConnection con1 = new SqlConnection(mycon1);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = con1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            string stockdata = "";

            if (ds1.Tables[0].Rows.Count > 0)
            {
                stockdata = ds1.Tables[0].Rows[0]["stockavailable"].ToString();

            }
            con1.Close();

            if (stockdata == "0")
            {
                lb2.Text = "Out of Stock";
                btn1.Enabled = false;
                btn1.ImageUrl = "images/soldout.jpg";

            }
            else
            {
                lb2.Text = stockdata;
            }
        }
    }
}