using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace deep
{
     

    public partial class PlacedSuccessfully : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=LAPTOP-IH32BD2A; Initial Catalog=UTF;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {

            Label3.Text = Request.QueryString["orderid"];

            Label4.Text = Label3.Text;
          
            findaddress(Label4.Text);
            showgrid(Label4.Text);
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            exportpdf();
        }

    
        void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }

        private void findaddress(String Orderid)
        {

            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand("Select * from orderdetail where orderid='" + Orderid + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label6.Text = ds.Tables[0].Rows[0]["address"].ToString();

                Label5.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();

            }

            con.Close();
        }
        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("sno");
            dt.Columns.Add("Product_id");
            dt.Columns.Add("Product_name");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("Price");
            dt.Columns.Add("totalprice");
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand("select * from orderdetail where orderid='" + orderid + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                dr["Product_id"] = ds.Tables[0].Rows[i]["Product_id"].ToString();
                dr["Product_name"] = ds.Tables[0].Rows[i]["Product_name"].ToString();
                dr["Quantity"] = ds.Tables[0].Rows[i]["Quantity"].ToString();
                dr["Price"] = ds.Tables[0].Rows[i]["Price"].ToString();
                int price = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
                int Quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["Quantity"].ToString());
                int totalprice = price * Quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label8.Text = grandtotal.ToString();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(connectionstring);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
    }
              
                SqlCommand cmd = new SqlCommand("INSERT INTO [feedback](name,feedback)values('" + TextBox1.Text.Trim()+ "',  '" + Session["User_Id"].ToString() + "')", con);
               
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Add Your Feedback');</script>");
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

                SqlCommand cmd = new SqlCommand("DELETE from orderdetail WHERE  orderid='" + Request.QueryString["orderid"] + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully order Cancle');</script>");
                Response.Redirect("Gallery.aspx");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

    }
    }
