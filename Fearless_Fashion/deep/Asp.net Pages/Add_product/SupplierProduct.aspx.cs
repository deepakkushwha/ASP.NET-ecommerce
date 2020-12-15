using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deep
{
    public partial class SupplierProduct : System.Web.UI.Page
    {
        static string global_filepath;
        string connectionstring = @"Data Source=LAPTOP-IH32BD2A; Initial Catalog=UTF;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            GridView1.DataBind();
        }
         
        //Go Button Event
        protected void Button4_Click(object sender, EventArgs e)
        {
            getproductbyid();

        }
      
        // Add product button
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkProductExists())
            {

                Response.Write("<script>alert('Product Already Exist please try another product');</script>");
            }
            else
            {
                Addnewproduct();
            }

        }

        //check product Exist or not
        bool checkProductExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionstring);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Product_details where Product_id='" + TextBox1.Text.Trim() + "' or Product_name='"+TextBox2.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        
      

        //Add product in database
        void Addnewproduct()
        {
            try
            {
                string filepath = "~/UTF_image/blueshoes.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("UTF_image/" + filename));
                filepath = "~/UTF_image/" + filename;

                SqlConnection con = new SqlConnection(connectionstring);
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Product_details(Product_id,Product_name,Fastival,Price,Unit,Description,img,available,Expertadvice,soldout)values(@Product_id,@Product_name,@Fastival,@Price,@Unit,@Description,@img,@available,@Expertadvice,0)", con);
                cmd.Parameters.AddWithValue("@Product_id",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Product_name",TextBox2.Text);
                cmd.Parameters.AddWithValue("@Fastival", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Price", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Unit", TextBox3.Text.Trim());
             
                cmd.Parameters.AddWithValue("@Description", TextBox10.Text);
                cmd.Parameters.AddWithValue("@img", filepath);
               
                cmd.Parameters.AddWithValue("@available", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Expertadvice", DropDownList2.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert(' Product added successfully');</script>");
                GridView1.DataBind();

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }





        //Update product 
        void updateproductbyid()
        {
   
            try
            {

                   
                    string filepath = "~/UTF_image/blueshoes.jpg";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                if (filename == "" || filename == null)
                {
                    filepath = global_filepath;

                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("UTF_image/" + filename));
                    filepath = "~/UTF_image/" + filename;
                }

                SqlConnection con = new SqlConnection(connectionstring);
                if (con.State == ConnectionState.Closed)

                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Product_details SET Product_name=@Product_name,Fastival=@Fastival,Price=@Price,Unit=@Unit,Description=@Description,img=@img Where Product_id='" + TextBox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@Product_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Product_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Fastival", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Price", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Unit", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@img", filepath);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Product Deatils update SuccessFull')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        
   
        }
       

        // go getproductId
        void getproductbyid()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionstring);
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Product_details where  Product_id='"+TextBox1.Text.Trim()+"';",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count>=1)
                {
                    TextBox2.Text = dt.Rows[0]["Product_name"].ToString();
                    DropDownList1.SelectedValue = dt.Rows[0]["Fastival"].ToString();
                    TextBox9.Text = dt.Rows[0]["Price"].ToString();
                    TextBox3.Text = dt.Rows[0]["Unit"].ToString();
                    TextBox10.Text = dt.Rows[0]["Description"].ToString();
                }
                else
                {

                    Response.Write("<script>alert('Invalid product Id');</script>");
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
                updateproductbyid();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteproductByID();
        }


        void deleteproductByID()
        {
            if (checkProductExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from Product_details WHERE  Product_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Product Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Product ID');</script>");
            }
        }

    }
}

