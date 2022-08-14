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
    public partial class AfterLogin : System.Web.UI.Page
    {
         string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try 
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {

                    Response.Write("<script>alert('Session Expired Login again..!!');</script>");
                    Response.Redirect("Login_page.aspx");
                }

                else
                {
                    getBookdatabyID();

                    if(!IsPostBack)
                    {
                        getUserPersonaldata();
                    }
                }

            }

            catch(Exception ex)
            {
                  Response.Write("<script>alert('Session Expired Login again..!!');</script>");
                Response.Redirect("Login_page.aspx");
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            if (Session["username"].ToString() == "" || Session["username"] == null)
            {

                Response.Write("<script>alert('Session Expired Login again..!!');</script>");
                Response.Redirect("Login_page.aspx");
            }

            else
            {
                updateUserData();
            }


        }


        void updateUserData()
        {
            string password = "";
            if (txtNewpassword.Text.Trim() == "")
            {
                password =txtOldpassword.Text.Trim();
            }
            else
            {
                password = txtNewpassword.Text.Trim();
            }
           SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE students_table SET FullName=@FullName, Dob=@Dob, Contact_No=@Contact_No, Email_Id=@Email_Id, State=@State, City=@City, Pincode=@Pincode, FullAddress=@FullAddress, Password=@Password, Account_status=@Account_status WHERE StuId='" + Session["username"].ToString().Trim()+ "'", con);

                cmd.Parameters.AddWithValue("@FullName", txtFullname.Text.Trim());
                cmd.Parameters.AddWithValue("@Dob", txtdob.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact_No",txtContact.Text.Trim());
                cmd.Parameters.AddWithValue("@Email_Id", txtEmailId.Text.Trim());
                cmd.Parameters.AddWithValue("@State",ddlState.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@Pincode",txtPincode.Text.Trim());
                cmd.Parameters.AddWithValue("@FullAddress",txtAddresss.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Account_status", "pending");

                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserPersonaldata();
                    getBookdatabyID();
                }
                else
                {
                    Response.Write("<script>alert('Invaid entry');</script>");
                }

            
          
        }


        void getUserPersonaldata()
        {

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM students_table WHERE StuId='" + Session["username"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            txtFullname.Text = dt.Rows[0]["FullName"].ToString();
             txtdob.Text = dt.Rows[0]["Dob"].ToString();
              txtContact.Text = dt.Rows[0]["Contact_No"].ToString();
              txtEmailId.Text = dt.Rows[0]["Email_Id"].ToString();
              ddlState.SelectedValue= dt.Rows[0]["State"].ToString().Trim();
              txtCity.Text = dt.Rows[0]["City"].ToString();
               txtPincode.Text = dt.Rows[0]["Pincode"].ToString();
                 txtAddresss.Text = dt.Rows[0]["FullAddress"].ToString();
                txtstuid.Text = dt.Rows[0]["StuId"].ToString();
                txtOldpassword.Text = dt.Rows[0]["Password"].ToString().Trim();

                Label1.Text = dt.Rows[0]["Account_status"].ToString().Trim();

                if (dt.Rows[0]["Account_status"].ToString().Trim() == "Active")
               {
                Label1.Attributes.Add("CssClass", "badge-pill badge-success");
               }

                else if (dt.Rows[0]["Account_status"].ToString().Trim() == "Pending")
                {
                Label1.Attributes.Add("CssClass", "badge badge-warning");
               }

                else if (dt.Rows[0]["Account_status"].ToString().Trim() == "Deactive")
                {
                Label1.Attributes.Add("CssClass", "badge-pill badge-danger");
                }

            else
             {
                 Label1.Attributes.Add("CssClass", "badge-pill badge-info");
             }
           
        }


        void getBookdatabyID()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM Book_iisued_table WHERE User_Id='" + Session["username"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
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