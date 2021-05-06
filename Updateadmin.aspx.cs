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
    public partial class bu1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            string mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=true";
            string updatedata = "update bracelets set  Braceletname='" + TextBox1.Text+"',Braceletprice='" + TextBox2.Text+"',Braceletimg='" + TextBox6.Text+"',Braceletdescription='" + TextBox3.Text+"',Braceletsize='" + TextBox4.Text+"'where Braceletid='"+TextBox5.Text+"'";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label5.Text = "";
            Label3.Text = "Record Has Been Updated Successfully with Braceletid:" + TextBox5.Text;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";

        }



        protected void Button2_Click1(object sender, EventArgs e)
        {

            string mycon = "Data Source=DESKTOP-M40PQKC; Initial Catalog=database; Integrated Security=true";
            string myquery = "Select * from bracelets where Braceletid=" + TextBox5.Text;
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
                Label5.Text = "Data Has Been Found Successfully";
                TextBox1.Text = ds.Tables[0].Rows[0]["Braceletname"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["Braceletprice"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["Braceletimg"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["Braceletdescription"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["Braceletsize"].ToString();
                Label3.Text = "";
            }
            else
            {
                Label5.Text = "Particular Data Not Found";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox6.Text = "";
                Label3.Text = "";


            }
            con.Close();



        }
    }
}
