using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deep
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true;  // user login link button;
                    LinkButton2.Visible = true;  // singup link button;
                    LinkButton5.Visible = false;  // Logout link button;
                    LinkButton6.Visible = false;  // hello user link button;
                }
                else if (Session["role"].Equals("user"))
                {

                    LinkButton1.Visible = false;  // user login link button;
                    LinkButton2.Visible = false;  // singup link button;
                    LinkButton5.Visible = true;  // Logout link button;
                    LinkButton6.Visible = true;  // hello user link button;
                    LinkButton6.Text = "Hello " + Session["fullname"].ToString();
                }

                else if (Session["role"].Equals("admin"))
                {

                    LinkButton1.Visible = false;  // user login link button;
                    LinkButton2.Visible = false;  // singup link button;
                    LinkButton5.Visible = true;  // Logout link button;
                    LinkButton6.Visible = true;  // hello user link button;

                    LinkButton6.Text = "Hello Admin ";
                }
                else if (Session["role"].Equals("supplier"))
                {

                    LinkButton1.Visible = false;  // user login link button;
                    LinkButton2.Visible = false;  // singup link button;
                    LinkButton5.Visible = true;  // Logout link button;
                    LinkButton6.Visible = true;  // hello user link button;

                    LinkButton6.Text = "Hello " + Session["fullname"].ToString();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session["User_Id"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session.Abandon();
            Response.Redirect("Gallery.aspx");

            LinkButton1.Visible = true;  // user login link button;
            LinkButton2.Visible = true;  // singup link button;
            LinkButton5.Visible = false;  // Logout link button;
            LinkButton6.Visible = false;  // hello user link button;



        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");

        }
    }
}