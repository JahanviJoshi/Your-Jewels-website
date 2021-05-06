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
    public partial class EditOrder : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
            else
            {
                if (Request.QueryString["sno"] != null)
                {
                    dt = (DataTable)Session["buyitems"];


                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        int sr;
                        int sr1;
                        sr = Convert.ToInt32(dt.Rows[i]["srno"].ToString());
                      Label2.Text =Request.QueryString["sno"];
                     //   Label3.Text = Request.QueryString["sno"];
                        Label3.Text = sr.ToString();
                        sr1 = Convert.ToInt32(Label3.Text);
                        //sr1 = sr1 + 1;


                        if (sr == sr1)
                        {
                            Label2.Text = dt.Rows[i]["srno"].ToString();
                           Label3.Text = dt.Rows[i]["Productid"].ToString();
                            Label4.Text = dt.Rows[i]["Productname"].ToString();
                            Label5.Text = dt.Rows[i]["Productdescription"].ToString();
                            DropDownList1.Text = dt.Rows[i]["Quantity"].ToString();
                            Label6.Text = dt.Rows[i]["Productprice"].ToString();
                            Label7.Text = dt.Rows[i]["totalprice"].ToString();
                            Label8.Text = dt.Rows[i]["Productsize"].ToString();

                            break;

                        }
                    }
                }
                else
                {
                }
                
            }   

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            sr = Convert.ToInt32(dt.Rows[i]["srno"].ToString());

            sr1 = Convert.ToInt32(Label2.Text);



            if (sr == sr1)
            {
                dt.Rows[i]["srno"] = Label2.Text;
               dt.Rows[i]["Productid"] = Label3.Text;
                dt.Rows[i]["Productname"] = Label4.Text;
                dt.Rows[i]["Productdescription"]=Label5.Text;
                dt.Rows[i]["Quantity"] = DropDownList1.Text;
                dt.Rows[i]["Productprice"] = Label6.Text;
                dt.Rows[i]["totalprice"] = Label7.Text;
                dt.Rows[i]["Productsize"] = Label8.Text;
                dt.AcceptChanges();

                break;

            }
        }
        Response.Redirect("MAddToCart.aspx");
    }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        int q;
            q = Convert.ToInt32(DropDownList1.Text);
            int cost;
            cost = Convert.ToInt32(Label6.Text);
            int totalcost;
            totalcost = cost * q;
            Label7.Text = totalcost.ToString();
        }

        }

        
    }
