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
    public partial class userlogin : System.Web.UI.Page
    {
            string connectionstring = @"Data Source=LAPTOP-IH32BD2A; Initial Catalog=UTF;Integrated Security=true";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {     try
            {
                SqlConnection con = new SqlConnection(connectionstring);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(" SELECT * from SIGNUP where Email='" + TextBox1.Text.Trim()+"' " +
                    "AND password='" + TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                      Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        Session["User_Id"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(5).ToString();
                        Session["role"] = "user";


                    }
                    Response.Redirect("Gallery.aspx");
                }
                else 
                {
                    Response.Write("<script>alert('Invalid user');</script>");

                }


            }
            catch (Exception ex)
            {

            }
        
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}