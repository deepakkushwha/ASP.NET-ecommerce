using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deep
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=LAPTOP-IH32BD2A; Initial Catalog=UTF;Integrated Security=true";
        private object lb1;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
           


            if (e.CommandName == "addtocart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                RadioButtonList rlist = (RadioButtonList)(e.Item.FindControl("RadioButtonList1"));
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + " &Quantity=" + list.SelectedItem.ToString() + " &Size=" + rlist.SelectedItem.ToString());
            }
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label lb = e.Item.FindControl("Label7") as Label;
            ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;
            Label lb1 = e.Item.FindControl("Label2") as Label;

            String mycon = @"Data Source=LAPTOP-IH32BD2A; Initial Catalog=UTF;Integrated Security=true";
            String myquery = "Select * from Product_details where Product_id=" + lb1.Text;
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String stockdata = "";

            if (ds.Tables[0].Rows.Count > 0)
            {
                stockdata = ds.Tables[0].Rows[0]["available"].ToString();

            }
            con.Close();

            if (stockdata == "0")
            {
                lb.Text = "Out of Stock";
                btn.Enabled = false;
                btn.ImageUrl = "Button image/Sold Out.jpg";

            }
            else
            {
                lb.Text = stockdata;
            }

        }

      


        }
    }
