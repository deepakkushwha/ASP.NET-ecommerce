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
    public partial class Gallery : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=LAPTOP-IH32BD2A; Initial Catalog=UTF;Integrated Security=true";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["cat"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();

            }
            if (Request.QueryString["Exe"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource3;
                DataList1.DataBind();

            }
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                Label6.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label6.Text = "0";

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            contactus();
        }

        //Contact_us Coding
        void contactus()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionstring);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Contact_us(Email,Massage)values(@Email,@Massage)", con);
                cmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Massage", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully send your massage');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            /*
                        if (e.CommandName == "addtocart")
                        {
                            DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                            RadioButtonList rlist = (RadioButtonList)(e.Item.FindControl("RadioButtonList1"));
                            Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + " &Quantity=" + list.SelectedItem.ToString() + " &Size=" + rlist.SelectedItem.ToString());
                        }*/

            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("ViewDetails.aspx?id=" + e.CommandArgument.ToString());
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?Exe=Square Face");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?Exe=Round Face");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?Exe=Oval Face");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?Exe=Oblong Face");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?Exe=Heart Face");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?Exe=Diamond Face");
        }



        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?cat=Top wear");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?cat=Bottom Wear");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?cat=Foot wear");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?cat=Festival wear");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gallery.aspx?cat=Watches");
        }

        
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }
    }
}