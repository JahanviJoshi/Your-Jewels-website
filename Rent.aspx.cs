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
    public partial class Rent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {//4
                
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("srno");
                dt.Columns.Add("Productid");
                dt.Columns.Add("Productname");
                dt.Columns.Add("Productprice");
                dt.Columns.Add("Productimage");
                dt.Columns.Add("Productdescription");
                dt.Columns.Add("Productsize");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("totalprice");
              /*  dt.Columns.Add("From");
                dt.Columns.Add("To");*/
                dt.Columns.Add("Duration");

                if (Request.QueryString["id"] != null)
                {//5
                    if (Session["Buyitems"] == null)
                    {//6

                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-M40PQKC;Initial Catalog=database;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Rent where Productid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["srno"] = 1;
                        dr["Productid"] = ds.Tables[0].Rows[0]["Productid"].ToString();
                        dr["Productname"] = ds.Tables[0].Rows[0]["Productname"].ToString();
                        dr["Productimage"] = ds.Tables[0].Rows[0]["Productimage"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["Productprice"] = ds.Tables[0].Rows[0]["Productprice"].ToString();
                        dr["Productdescription"] = ds.Tables[0].Rows[0]["Productdescription"].ToString();

                        dr["Productsize"] = ds.Tables[0].Rows[0]["Productsize"].ToString();

                        dr["Duration"] = Request.QueryString["Duration"];
                       /* dr["From"] = DateTime.Now.ToShortDateString();
                        int d = Convert.ToInt16(Request.QueryString["Duration"].ToString());
                        string s = DateTime.Now.AddDays(d).ToString();
                        DateTime abc = DateTime.Parse(s);
                        dr["To"] = abc.ToShortDateString();*/


                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Productprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["Quantity"].ToString());
                        int Duration=Convert.ToInt16(Request.QueryString["Duration"].ToString());
                        int totalprice = price * Quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Rent.aspx");
                    }//6
                    else
                    {//7

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-M40PQKC;Initial Catalog=database;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Rent where Productid=" + Request.QueryString["id"];

                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                   
                        da.SelectCommand = cmd;

                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["srno"] = sr + 1;
                        dr["Productid"] = ds.Tables[0].Rows[0]["Productid"].ToString();
                        dr["Productname"] = ds.Tables[0].Rows[0]["Productname"].ToString();
                        dr["Productimage"] = ds.Tables[0].Rows[0]["Productimage"].ToString();
                        dr["Productprice"] = ds.Tables[0].Rows[0]["Productprice"].ToString();
                        dr["Productsize"] = ds.Tables[0].Rows[0]["Productsize"].ToString();
                        dr["Productdescription"] = ds.Tables[0].Rows[0]["Productdescription"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["Duration"] = Request.QueryString["Duration"];
                       /* dr["From"] = DateTime.Now.ToShortDateString();
                        int d = Convert.ToInt16(Request.QueryString["Duration"].ToString());
                        string s = DateTime.Now.AddDays(d).ToString();
                        DateTime abc = DateTime.Parse(s);
                        dr["To"] = abc.ToShortDateString();*/
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Productprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["Quantity"].ToString());
                        int Duration = Convert.ToInt16(Request.QueryString["Duration"].ToString());
                        int totalprice = price * Quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Rent.aspx");

                    }//7
                }//5
                else
                {//8
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {//9
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }//9
                }//8
                Label2.Text = GridView1.Rows.Count.ToString();
            }//4
        }//3
        public int grandtotal()
        {//10
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {//11
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }//11
            return gtotal;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["srno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                    break;


                }
            }

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["srno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("Rent.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MRentPlaceholder.aspx");
        }
        
    }
}