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
    public partial class SignUp_page : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {

            if (checkIfUserExists())
            {
                Response.Write("<script>alert('User Alredy Exists with This ID Try other ID..!')</script>");

            }

            else
            {

                Signup();
            }
        }


        bool checkIfUserExists()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM students_table WHERE StuId='" + txtStudentId.Text.Trim() + "'", con);
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

       
        void Signup()
        {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO students_table(FullName,Dob,Contact_No,Email_Id,State,City,Pincode,FullAddress,StuId,Password,Account_status) VALUES(@FullName,@Dob,@Contact_No,@Email_Id,@State,@City,@Pincode,@FullAddress,@StuId,@Password,@Account_status)", con);
                cmd.Parameters.AddWithValue("@FullName", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@Dob", txtDob.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact_No", txtContactNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@Email_Id", txtEmailId.Text.Trim());
                cmd.Parameters.AddWithValue("@State", ddlState.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@Pincode", txtPincode.Text.Trim());
                cmd.Parameters.AddWithValue("@FullAddress", txtFullAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@StuId", txtStudentId.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtStupassword.Text.Trim());
                cmd.Parameters.AddWithValue("@Account_status","Pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('SignUp Successfull..!')</script>");
                clear();
           
        }


        void clear()
        {
            txtFullName.Text = txtDob.Text = txtContactNumber.Text = txtEmailId.Text = txtCity.Text = txtPincode.Text = txtStudentId.Text = txtStupassword.Text=txtFullAddress.Text = string.Empty;
            ddlState.SelectedIndex=-1;
        }
    }



    
}