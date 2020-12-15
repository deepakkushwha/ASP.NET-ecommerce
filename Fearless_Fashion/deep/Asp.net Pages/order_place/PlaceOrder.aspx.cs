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
    public partial class PlaceOrder : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=LAPTOP-IH32BD2A; Initial Catalog=UTF;Integrated Security=true";
        static Boolean orderconfirm;
        static int quantityavailable;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("Product_id");
                dt.Columns.Add("Product_name");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("Price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("img");
                dt.Columns.Add("Size");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(connectionstring);
                        SqlCommand cmd = new SqlCommand("select * from Product_details where Product_id='" + Request.QueryString["id"] + "';", con);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["Product_id"] = ds.Tables[0].Rows[0]["Product_id"].ToString();
                        dr["Product_name"] = ds.Tables[0].Rows[0]["Product_name"].ToString();
                        dr["img"] = ds.Tables[0].Rows[0]["img"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["Size"] = Request.QueryString["Size"];
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["Quantity"].ToString());
                        int totalprice = price * Quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(connectionstring);
                        SqlCommand cmd = new SqlCommand("select * from Product_details where Product_id='" + Request.QueryString["id"] + "';", con);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["Product_id"] = ds.Tables[0].Rows[0]["Product_id"].ToString();
                        dr["Product_name"] = ds.Tables[0].Rows[0]["Product_name"].ToString();
                        dr["img"] = ds.Tables[0].Rows[0]["img"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        dr["Size"] = Request.QueryString["Size"]; 
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["Quantity"].ToString());
                        int totalprice = price * Quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

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
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();

                    }
                }
            }

            Label2.Text = DateTime.Now.ToShortDateString();
            findorderid();
        }


        //Grand Total code
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

        //  Deleted Row Code
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
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
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
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("AddToCart.aspx");

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

            Label1.Text = orderid;


        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];



            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection con = new SqlConnection(connectionstring);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into orderdetail(orderid,sno,Product_id,Product_name,Price,Quantity,dateoforder,address,mobilenumber) values('" + Label1.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["Product_id"] + ",'" + dt.Rows[i]["Product_name"] + "'," + dt.Rows[i]["Price"] + "," + dt.Rows[i]["Quantity"] + ",'" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", con);

                cmd.ExecuteNonQuery();
                con.Close();

            }
          

            DataTable dt1;
            dt1 = (DataTable)Session["buyitems"];
            int designid;
            int quantity;
            foreach (DataRow row in dt1.Rows)
            {
                designid = Convert.ToInt16(row["Product_id"].ToString());
                quantity = Convert.ToInt16(row["Quantity"].ToString());
                checkavailability(designid, quantity);
                if (orderconfirm == false)
                {
                    break;
                }
            }
            if (orderconfirm == true)
            {
                foreach (DataRow row in dt1.Rows)
                {
                    designid = Convert.ToInt16(row["Product_id"].ToString());
                    quantity = Convert.ToInt16(row["Quantity"].ToString());
                    updatestock(designid, quantity);
                }
                Response.Redirect("PlacedSuccessfully.aspx?orderid=" + Label1.Text);

            }
        



        }



        // user define method
        private void checkavailability(int designid, int numbersold)
        {
            int pavailable = 0;
            int psold =0 ;
            String myquery = "Select * from Product_details where Product_id=" + designid;
            
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                pavailable = Convert.ToInt16(ds.Tables[0].Rows[0]["available"].ToString());

                psold = Convert.ToInt16(ds.Tables[0].Rows[0]["soldout"].ToString());

            }
            con.Close();

            if (pavailable >= numbersold)
            {
                orderconfirm = true;
            }
            else
            {
                orderconfirm = false;
                Label3.Text = "Design ID " + designid + " Quantity " + pavailable + " only Available. Order Could Not Be Placed";
            }
        }
        private void updatestock(int designid, int numbersold)
        {
            int pavailable = 0;
            int psold = 0;
            
            String myquery = "Select * from Product_details where Product_id=" + designid;
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                pavailable = Convert.ToInt16(ds.Tables[0].Rows[0]["available"].ToString());
                psold = Convert.ToInt16(ds.Tables[0].Rows[0]["soldout"].ToString());

            }
            con.Close();
            int newavailable;
            int newsold;
            if (pavailable >= numbersold)
            {
                newavailable = pavailable - numbersold;
                newsold = psold + numbersold;
                String updatedata = "Update Product_details set available=" + newavailable + ", soldout=" + newsold + " where Product_id=" + designid;
                SqlConnection con1 = new SqlConnection(connectionstring);
                con1.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatedata;
                cmd1.Connection = con1;
                cmd1.ExecuteNonQuery();

            }
            else
            {
                Label3.Text = "Design ID " + designid + " Quantity " + pavailable + " only Available. Order Could Not Be Placed";

            }


        }



    }
}
