using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace My_web_1
{
    public partial class Author_page : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //GridView1.DataBind();
               // clear();
            }

        }

        protected void btnAuthorAdd_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExists())
            {
                Response.Write("<script>alert('Author alredy Exists try other ID..!!')</script>");
            }

            else
            {
                Addauthor();
            }
        }

        protected void btnAuthorUpdate_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                updateAuthor();
            }

            else
            {
                Response.Write("<script>alert('Invalid ID..!!')</script>");

            }
        }

        protected void btnAuthorDelete_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                deleteAuthor();
            }

            else
            {
                Response.Write("<script>alert('Invalid ID..!!')</script>");

            }

        }



        protected void btnGo_Click(object sender, EventArgs e)
        {
            getAuthorbyID();
        }



        void getAuthorbyID()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM Author_table WHERE Author_ID='" + txtAuthorlogin.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                txtAuthorName.Text = dt.Rows[0][1].ToString();
                
            }
            else
            {
                Response.Write("<script>alert('Invalid ID..!!')</script>");
            }
        }


        bool checkIfAuthorExists()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM Author_table WHERE Author_ID='"+txtAuthorlogin.Text+"'", con);
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

        void deleteAuthor()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("DELETE FROM Author_table WHERE  Author_ID='"+txtAuthorlogin.Text+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Author deleted Successfull..!!')</script>");
            clear();
            GridView1.DataBind();
        }

        void updateAuthor()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UPDATE Author_table SET Author_Name=@Author_Name WHERE  Author_ID='"+txtAuthorlogin.Text+"'", con);
            cmd.Parameters.AddWithValue("@Author_Name", txtAuthorName.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Author updated Successfull..!!')</script>");
            clear();
            GridView1.DataBind();
        }

        void Addauthor()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO Author_table (Author_ID,Author_Name) VALUES(@Author_ID,@Author_Name)", con);
            cmd.Parameters.AddWithValue("@Author_ID", txtAuthorlogin.Text.Trim());
            cmd.Parameters.AddWithValue("@Author_Name", txtAuthorName.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Author added Successfull..!!')</script>");
            clear();
            GridView1.DataBind();
        }

        void clear()
        {
            txtAuthorlogin.Text = txtAuthorName.Text = string.Empty;
        }

       

     


    }
}