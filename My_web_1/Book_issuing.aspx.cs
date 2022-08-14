using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace My_web_1
{
    public partial class Book_issuing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            getNamesbyiD();
        }

        protected void btnIssue_Click(object sender, EventArgs e)
        {
            if (checkifBookExists() && checkifUserexists())
            {

                if (checkifIssuedEntryexists())
                {
                    Response.Write("<script>alert('This User already has this Book.!!');</script>");
                }
                else
                {
                    Issuedbooks();
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID and User ID..!!');</script>");
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            if (checkifBookExists() && checkifUserexists())
            {
                if (checkifIssuedEntryexists())
                {
                    returnBook();
                }
                else
                {
                    Response.Write("<script>alert('This Entry does not Exists..');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID or Member ID');</script>");

            }
        }


        void returnBook()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
             SqlCommand cmd = new SqlCommand("DELETE FROM Book_iisued_table WHERE Book_Id='" + txtBookid.Text.Trim() + "' AND User_Id='" + txtMemberid.Text.Trim()+"'", con);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {

                    cmd = new SqlCommand(" UPDATE Books_table SET Current_stock=Current_stock+1 WHERE Book_Id='" + txtBookid.Text.Trim() + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book Returned Successfully..!!');</script>");

                    GridView1.DataBind();
                }

        }


        bool checkifIssuedEntryexists()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM Book_iisued_table WHERE User_Id='" + txtMemberid.Text.Trim() + "' AND Book_Id='"+txtBookid.Text.Trim()+"'", con);
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



        void Issuedbooks()
        {

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO Book_iisued_table (User_Id,User_name,Book_Id,Book_name,Start_date,End_date) VALUES(@User_Id,@User_name,@Book_Id,@Book_name,@Start_date,@End_date)", con);
            cmd.Parameters.AddWithValue("@User_Id",txtMemberid.Text.Trim());
            cmd.Parameters.AddWithValue("@User_name", txtMembername.Text.Trim());
            cmd.Parameters.AddWithValue("@Book_Id", txtBookid.Text.Trim());
            cmd.Parameters.AddWithValue("@Book_name", txtBookname.Text.Trim());
            cmd.Parameters.AddWithValue("@Start_date", txtStartdate.Text.Trim());
            cmd.Parameters.AddWithValue("@End_date", txtEnddate.Text.Trim());
            cmd.ExecuteNonQuery();


            cmd = new SqlCommand("UPDATE Books_table SET Current_stock=Current_stock-1 WHERE Book_ID='"+txtBookid.Text.Trim()+"'", con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Write("<script>alert('Book Issued Successfully..!!');</script>");
            GridView1.DataBind();


        }

        bool checkifUserexists()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT FullName FROM students_table WHERE StuId='" + txtMemberid.Text.Trim() + "'", con);
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

        bool checkifBookExists()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM Books_table WHERE Book_ID='" + txtBookid.Text.Trim() + "' AND Current_stock>0", con);
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

        void getNamesbyiD()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT Book_Name FROM Books_table WHERE Book_ID='"+txtBookid.Text.Trim()+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                txtBookname.Text = dt.Rows[0]["Book_Name"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID');</script>");
            }

            cmd = new SqlCommand("SELECT FullName FROM students_table WHERE StuId='"+txtMemberid.Text.Trim()+"'", con);
             da = new SqlDataAdapter(cmd);
             dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                txtMembername.Text = dt.Rows[0]["FullName"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Wrong User ID');</script>");
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        
    }
}