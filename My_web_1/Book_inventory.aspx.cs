using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;

namespace My_web_1
{
    public partial class Book_inventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        static int global_actual_stock, global_current_stock, global_issued_books;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataBind();
                fillAuthorvalue();
            }
        }


        protected void lbGo_Click(object sender, EventArgs e)
        {
            getBookByID();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                Response.Write("<script>alert('Book already Exists try some other ID..')</script>");
            }
            else
            {
                addBook();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                updatebookByID();
            }

            else
            {
                Response.Write("<script>alert('Book ID does not match..')</script>");
            }
        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            deleteBookbyID();
        }

        void deleteBookbyID()
        {
            if (checkIfBookExists())
            {
               
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE FROM Books_table WHERE Book_ID ='" + txtMemberid.Text.Trim() + "'", con);



                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book Deleted Successfull..!!');</script>");
                    //clear();
                    GridView1.DataBind();

            }
            else
            {
                Response.Write("<script>alert('Book ID not match..!!');</script>");

            }
        }




        void updatebookByID()
        {

            int actual_stock=Convert.ToInt32(txtActualcost.Text.Trim());
            int current_stock=Convert.ToInt32(txtCurrentstock.Text.Trim());
            if(global_actual_stock==actual_stock)
            {

            }
            else
            {
                if(actual_stock<global_issued_books)
                {
                      Response.Write("<script>alert('Actual stock value cannot less than Issued Books..')</script>");
                    return;
                }

                else
                {
                    current_stock=actual_stock-global_issued_books;
                    txtCurrentstock.Text=""+current_stock;
                }
            }



             string genres="";
            foreach(int i in lstbxGenre.GetSelectedIndices())
            {
                genres=genres + lstbxGenre.Items[i] +",";

            }
            genres=genres.Remove(genres.Length-1);

            string filepath="~/book_inventoryimages/book";
            string filename=Path.GetFileName(FileUpload1.PostedFile.FileName);
            if(filename=="" || filename==null)
            {
                filepath=global_filepath;
            }

            else
            {
                  FileUpload1.SaveAs(Server.MapPath("book_inventoryimages/"+filename));
                  filepath="~/book_inventoryimages/" + filename;

            }


            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UPDATE Books_table SET Book_Name=@Book_Name,Genre=@Genre,Author_name=@Author_name,Publisher_name=@Publisher_name,Publish_date=@Publish_date,Language=@Language,Edition=@Edition,Book_cost=@Book_cost,No_ofpages=@No_ofpages,Book_description=@Book_description,Actual_stock=@Actual_stock,Current_stock=@Current_stock,Image=@Image WHERE Book_ID='"+txtMemberid.Text.Trim()+"'  ", con);
            cmd.Parameters.AddWithValue("@Book_Name", txtBookname.Text.Trim());
            cmd.Parameters.AddWithValue("@Genre",genres);
            cmd.Parameters.AddWithValue("@Author_name", ddlAuthorname.Text.Trim());
            cmd.Parameters.AddWithValue("@Publisher_name", ddlPublishername.Text.Trim());
            cmd.Parameters.AddWithValue("@Publish_date", txtPubdate.Text.Trim());
            cmd.Parameters.AddWithValue("@Language", ddlLanguage.Text.Trim());
            cmd.Parameters.AddWithValue("@Edition", txtedition.Text.Trim());
            cmd.Parameters.AddWithValue("@Book_cost", txtBookcost.Text.Trim());
            cmd.Parameters.AddWithValue("@No_ofpages", txtPages.Text.Trim());
            cmd.Parameters.AddWithValue("@Book_description",txtBookdescription.Text.Trim());
            cmd.Parameters.AddWithValue("@Actual_stock", actual_stock.ToString());
            cmd.Parameters.AddWithValue("@Current_stock",current_stock.ToString());
            cmd.Parameters.AddWithValue("@Image",filepath);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Book updated Successfully..')</script>");
            GridView1.DataBind();


        }




        void getBookByID()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM Books_table WHERE Book_ID='" + txtMemberid.Text.Trim() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                txtBookname.Text = dt.Rows[0]["Book_Name"].ToString();
                ddlLanguage.SelectedValue = dt.Rows[0]["Language"].ToString().Trim();
                ddlAuthorname.SelectedValue = dt.Rows[0]["Author_name"].ToString().Trim();
                ddlPublishername.SelectedValue = dt.Rows[0]["Publisher_name"].ToString().Trim();
                txtPubdate.Text = dt.Rows[0]["Publish_date"].ToString();
                txtedition.Text = dt.Rows[0]["Edition"].ToString();
                txtBookcost.Text = dt.Rows[0]["Book_cost"].ToString();
                txtPages.Text = dt.Rows[0]["No_ofpages"].ToString().Trim();
                txtBookdescription.Text = dt.Rows[0]["Book_description"].ToString();
                

                string[] genres = dt.Rows[0]["Genre"].ToString().Trim().Split(',');
                for (int i = 0; i < genres.Length; i++)
                {
                    for (int j = 0; j < lstbxGenre.Items.Count; j++)
                    {
                        if (lstbxGenre.Items[j].ToString() == genres[i])
                        {
                            lstbxGenre.Items[j].Selected = true;
                        }

                    }

                }

                txtActualcost.Text = dt.Rows[0]["Actual_stock"].ToString().Trim();
                 txtCurrentstock.Text = dt.Rows[0]["Current_stock"].ToString().Trim();
                 txtIssuedbook.Text = "" + (Convert.ToInt32(dt.Rows[0]["Actual_stock"].ToString()) - Convert.ToInt32(dt.Rows[0]["Current_stock"].ToString()));


                global_actual_stock=Convert.ToInt32(dt.Rows[0]["Actual_stock"].ToString().Trim());
                global_current_stock= Convert.ToInt32(dt.Rows[0]["Current_stock"].ToString().Trim());
                global_issued_books=global_actual_stock-global_current_stock;
                global_filepath=dt.Rows[0]["Image"].ToString();

                
                


            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID..')</script>");
 
            }
        }

        bool checkIfBookExists()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM Books_table WHERE Book_ID='" + txtMemberid.Text + "' OR Book_Name='"+txtBookname.Text.Trim()+"'", con);
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
        }



        void fillAuthorvalue()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT Author_Name FROM Author_table", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlAuthorname.DataSource = dt;
            ddlAuthorname.DataValueField = "Author_Name";
            ddlAuthorname.DataBind();
     
         
         }



        void addBook()
        {    
            string genres="";
            foreach(int i in lstbxGenre.GetSelectedIndices())
            {
                genres=genres + lstbxGenre.Items[i] +",";

            }
            genres=genres.Remove(genres.Length-1);


            string filepath="~/book_inventoryimages/book";
            string filename=Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("book_inventoryimages/"+filename));
            filepath="~/book_inventoryimages/" + filename;

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO Books_table (Book_ID,Book_Name,Genre,Author_name,Publisher_name,Publish_date,Language,Edition,Book_cost,No_ofpages,Book_description,Actual_stock,Current_stock,Image) VALUES (@Book_ID,@Book_Name,@Genre,@Author_name,@Publisher_name,@Publish_date,@Language,@Edition,@Book_cost,@No_ofpages,@Book_description,@Actual_stock,@Current_stock,@Image)", con);
            cmd.Parameters.AddWithValue("@Book_ID", txtMemberid.Text.Trim());
            cmd.Parameters.AddWithValue("@Book_Name", txtBookname.Text.Trim());
            cmd.Parameters.AddWithValue("@Genre",genres);
            cmd.Parameters.AddWithValue("@Author_name",ddlAuthorname.Text.Trim());
            cmd.Parameters.AddWithValue("@Publisher_name",ddlPublishername.Text.Trim());
            cmd.Parameters.AddWithValue("@Publish_date", txtPubdate.Text.Trim());
            cmd.Parameters.AddWithValue("@Language",ddlLanguage.Text.Trim());
            cmd.Parameters.AddWithValue("@Edition", txtedition.Text.Trim());
            cmd.Parameters.AddWithValue("@Book_cost", txtBookcost.Text.Trim());
            cmd.Parameters.AddWithValue("@No_ofpages",txtPages.Text.Trim());
            cmd.Parameters.AddWithValue("@Book_description", txtBookdescription.Text.Trim());
            cmd.Parameters.AddWithValue("@Actual_stock", txtActualcost.Text.Trim());
            cmd.Parameters.AddWithValue("@Current_stock", txtActualcost.Text.Trim());
            cmd.Parameters.AddWithValue("@Image",filepath);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Book added Successfully..')</script>");
            GridView1.DataBind();




        }

       
      

       
    }
}