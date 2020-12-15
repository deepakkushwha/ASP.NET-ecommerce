using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace deep
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string name = cname.Text;
            string email = eml.Text;
            string phone = eph.Text;
            string comment = cmt.Text;
            string connectionstring = @"Data source=LAPTOP-IH32BD2A; Initial Catalog=holddb; Integrated Security=true";
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
        string sql="insert into[user]([name],[email],[phone],[comments])values('"+name+"','"+email+"','"+phone+"','"+comment+"')";
            cmd.CommandText = sql;
            int inp= cmd.ExecuteNonQuery();
            con.Close();
         

        }
    }
}