using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace user_Registration
{
    public partial class Family : System.Web.UI.Page
    {
        string str = System.Configuration.ConfigurationManager.ConnectionStrings["database"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateDropDownList(DropDownList5, "Jewelery", "Jewelery", "SELECT DISTINCT Jewelery FROM sm");
                PopulateDropDownList(DropDownList1, "Style", "Style", "SELECT DISTINCT Style FROM sm");
                PopulateDropDownList(DropDownList2, "Shape", "Shape", "SELECT DISTINCT Shape FROM sm");
                PopulateDropDownList(DropDownList3, "Metal", "Metal", "SELECT DISTINCT Metal FROM sm");
                PopulateDropDownList(DropDownList4, "Stone", "Stone", "SELECT DISTINCT Stone FROM sm");
                BindGrid();
            }

        }

        protected void Filter(object sender, EventArgs e)
        {            
            BindGrid();
        }
        private void BindGrid()
        {
            List<SqlParameter> sqlParameter = new List<SqlParameter>();
            if (DropDownList5.SelectedIndex > 0)
            {
                sqlParameter.Add(new SqlParameter("@Jewelery", DropDownList5.SelectedItem.Text.Trim()));
            }
            else
            {
                sqlParameter.Add(new SqlParameter("@Jewelery", System.DBNull.Value));
            }
            if (DropDownList1.SelectedIndex > 0)
            {
                sqlParameter.Add(new SqlParameter("@Style", DropDownList1.SelectedItem.Text.Trim()));
            }
            else
            {
                sqlParameter.Add(new SqlParameter("@Style", System.DBNull.Value));
            }
            if (DropDownList2.SelectedIndex > 0)
            {
                sqlParameter.Add(new SqlParameter("@Shape", DropDownList2.SelectedItem.Text.Trim()));
            }
            else
            {
                sqlParameter.Add(new SqlParameter("@Shape", System.DBNull.Value));
            }
            if (DropDownList3.SelectedIndex > 0)
            {
                sqlParameter.Add(new SqlParameter("@Metal", DropDownList3.SelectedItem.Text.Trim()));
            }
            else
            {
                sqlParameter.Add(new SqlParameter("@Metal", System.DBNull.Value));
            }
            if (DropDownList4.SelectedIndex > 0)
            {
                sqlParameter.Add(new SqlParameter("@Stone", DropDownList4.SelectedItem.Text.Trim()));
            }
            else
            {
                sqlParameter.Add(new SqlParameter("@Stone", System.DBNull.Value));
            }

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("Smm", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter[] parameters = sqlParameter.ToArray();
            if (parameters.Length > 0)
            {
                cmd.Parameters.AddRange(parameters);
            }
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        private void PopulateDropDownList(DropDownList ddl, string textField, string valueField, string query)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            ddl.DataSource = dt;
            ddl.DataTextField = textField;
            ddl.DataValueField = valueField;
            ddl.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //addtocart
            if (e.CommandName == "addtocart")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("smatc.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString());
            }
        }

    }
}