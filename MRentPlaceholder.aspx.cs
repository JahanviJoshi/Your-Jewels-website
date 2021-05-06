﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace user_Registration
{
    public partial class MRentPlaceholder : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("productimage");
             //   dt.Columns.Add("dateoforder");
             //   dt.Columns.Add("returndate");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = "Data Source=;Initial Catalog=database;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Rent where Productid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["Productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["Productname"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["Productimage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                     //   dr["dateoforder"] = Request.QueryString["dateoforder"];
                     //   dr["returndate"] = Request.QueryString["returndate"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Productprice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("MAddToCart.aspx");

                    }
                    else
                    {

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
                        dr["sno"] = sr + 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["Productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["Productname"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["Productimage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                       // dr["dateoforder"] = Request.QueryString["dateoforder"];
                        //dr["returndatte"] = Request.QueryString["returndate"];
                        dr["price"] = ds.Tables[0].Rows[0]["Productprice"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Rent.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }


                }
                // Label2.Text = GridView1.Rows.Count.ToString();

            }
            Label3.Text = DateTime.Now.ToShortDateString();
            findorderid();



        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }
        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);
            //        orderid = "arderaeraweee";
            Label2.Text = orderid;


        }

        public void saveaddress()
        {

            String updatepass = "insert into OrderDetails(orderid,address,mobilenumber) values('" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            String mycon1 = "Data Source=DESKTOP-M40PQKC;Initial Catalog=database;Integrated Security=True";
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // String ReturnDate;
            // Response.Write(Label2.Text);
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
           
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                DateTime ReturnDate;
                DateTime today = DateTime.Now;
               //string today1 = today.ToString("dd/MM/yyyy");
                int duration = Convert.ToInt32(dt.Rows[i]["duration"]);
                ReturnDate = today.AddDays(duration);

                // Response.Write(Label2.Text+dt.Rows[i]["Srno"]+ dt.Rows[i]["Productid"]+ dt.Rows[i]["Productname"] +dt.Rows[i]["Productprice"]+ dt.Rows[i]["quantity"]+ Label3.Text);
                String updatepass = "insert into OrderAddress1(orderid,sno,productid,productname,price,quantity,dateoforder,returndate) values('" + Label2.Text + "','" + dt.Rows[i]["srno"] + "','" + dt.Rows[i]["Productid"] + "','" + dt.Rows[i]["Productname"] + "','" + dt.Rows[i]["Productprice"] + "','" + dt.Rows[i]["quantity"] + "' , '" + Label3.Text + "','" + ReturnDate + "')";
                
                // string updatepass = "insert into OrderAddress(orderid,sno,productid,productname,price,quantity,dateoforder) values('" + Label2.Text + "','" + dt.Rows[i]["srno"] + "','" + dt.Rows[i]["Productid"] + "','" + dt.Rows[i]["Productname"] + "','" + dt.Rows[i]["Productprice"] + "','" + dt.Rows[i]["Quantity"] + "','" + Label3.Text + "')";
                String mycon1 = "Data Source=DESKTOP-M40PQKC;Initial Catalog=database;Integrated Security=True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand(updatepass, s);
              //  cmd1.CommandText = updatepass;
//cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();

            }

            saveaddress();
            Response.Redirect("Successfully1.aspx?id=" + Label2.Text);

        }

       
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}