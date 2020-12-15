using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace deep
{

    public partial class AddtoCart : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=LAPTOP-IH32BD2A; Initial Catalog=UTF;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null)
            {
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                Label2.Text = Session["fullname"].ToString();
            }

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
                        savecartdetail(1, ds.Tables[0].Rows[0]["Product_id"].ToString(), ds.Tables[0].Rows[0]["Product_name"].ToString(), ds.Tables[0].Rows[0]["img"].ToString(), Request.QueryString["Quantity"], Request.QueryString["Size"], ds.Tables[0].Rows[0]["Price"].ToString(), totalprice.ToString());

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
                        savecartdetail(sr + 1, ds.Tables[0].Rows[0]["Product_id"].ToString(), ds.Tables[0].Rows[0]["Product_name"].ToString(), ds.Tables[0].Rows[0]["img"].ToString(), Request.QueryString["Quantity"], Request.QueryString["Size"], ds.Tables[0].Rows[0]["Price"].ToString(), totalprice.ToString());

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


                Label1.Text = GridView1.Rows.Count.ToString();
            }

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

        //save cart items in database
        void savecartdetail(int sno, String Productid, String Productname, String productimage, String quantity, String Size, String price, String totalprice)
        {
            try
            {

                SqlConnection con = new SqlConnection(connectionstring);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into [SavedCartDetails](sno, Product_id, Product_name, Quantity, Price, totalprice, img,Size, Email) values(" + sno + ", '" + Productid + "', '" + Productname + "', '" + quantity + "', '" + price + "',  '" + totalprice + "', '" + productimage + "','" + Size + "','" + Session["fullname"].ToString() + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try

            {
                SqlConnection con = new SqlConnection(connectionstring);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("delete from SavedCartDetails where Email='" + Session["fullname"].ToString() + "';", con);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
                con.Close();

                Response.Redirect("PlaceOrder.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           
        }

        
    }
}


