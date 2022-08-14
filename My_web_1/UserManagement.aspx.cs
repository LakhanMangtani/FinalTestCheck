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
    public partial class UserManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void lbGo_Click(object sender, EventArgs e)
        {
            getUserByID();
        }

        protected void lbactive_Click(object sender, EventArgs e)
        {
            updateUserStatusbyID("Active");
        }

        protected void lbPending_Click(object sender, EventArgs e)
        {
            updateUserStatusbyID("Pending");
        }

        protected void lbNotactive_Click(object sender, EventArgs e)
        {
            updateUserStatusbyID("Deactive");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            deleteUserbyID();
        }

        void deleteUserbyID()
        {

            if (checkIfMemberExists())
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM students_table WHERE StuId='" + txtMemberid.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Deleted Successfully..');</script>");
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('ID does not match..');</script>");
            }

        }



        void updateUserStatusbyID(string status)
        {

            if (checkIfMemberExists())
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE students_table SET Account_status='" + status + "' WHERE StuId='" + txtMemberid.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Account Status Updated Successfully..');</script>");
                GridView1.DataBind();
            }

            else 
            {
                Response.Write("<script>alert('ID does not match..');</script>");
            }
        }


        void getUserByID()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM students_table WHERE StuId='"+txtMemberid.Text.Trim()+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtUmFullname.Text = dr.GetValue(0).ToString();
                    txtUmDob.Text = dr.GetValue(1).ToString();
                    txtUmContact.Text = dr.GetValue(2).ToString();
                    txtUmEmailid.Text = dr.GetValue(3).ToString();
                    ddlState.SelectedValue = dr.GetValue(4).ToString();
                    txtUmCity.Text = dr.GetValue(5).ToString();
                    txtUmPincode.Text = dr.GetValue(6).ToString();
                    txtUmFulladdress.Text = dr.GetValue(7).ToString();
                    txtAccountStatus.Text = dr.GetValue(10).ToString();


                }

            }
            else
            {
                Response.Write("<script>alert('Inavalid Credentials..');</script>");

            }


           // for practise try But its work
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count >= 1)
            //{
            //    txtUmFullname.Text = dt.Rows[0][0].ToString();
            //       txtUmDob.Text = dt.Rows[0][1].ToString();
            //       txtUmContact.Text = dt.Rows[0][2].ToString();
            //      txtUmEmailid.Text = dt.Rows[0][3].ToString();
            //     ddlState.Text = dt.Rows[0][4].ToString();
            //      txtUmCity.Text = dt.Rows[0][5].ToString();
            //     txtUmPincode.Text = dt.Rows[0][6].ToString();
            //       txtUmFulladdress.Text = dt.Rows[0][7].ToString();
            //       txtAccountStatus.Text = dt.Rows[0][10].ToString();
            //}
            //else
            //{
            //    Response.Write("<script>alert('Invalid ID..!!')</script>");
            //}

 
        }

        bool checkIfMemberExists()
        {
           
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM students_table WHERE StuId='" + txtMemberid.Text.Trim() + "'", con);
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
       
    }
}