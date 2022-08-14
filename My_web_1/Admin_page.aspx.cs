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
    public partial class Admin_page : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from sys.sysaltfiles", con);
                //SqlCommand cmd = new SqlCommand(" SELECT * FROM Admin_table WHERE AdminId='" +txtAdmlogin.Text.Trim() + "' and Password='" +txtAdmPassword.Text.Trim() + "'", con);
              //  SqlDataReader dr = cmd.ExecuteReader();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds=new DataSet();
                da.Fill(ds);

                DataSet GGG = ds;
                //if (dr.HasRows)
                //{
                //    while (dr.Read())
                //    {
                //        Response.Write("<script>alert('Login Successful...!!');</script>");
                //        Session["username"] = dr.GetValue(0).ToString();
                //        Session["fullname"] = dr.GetValue(2).ToString();
                //        Session["role"] = "admin";
                //        //Session["AccountStatus"] = dr.GetValue(10).ToString();

                //    }
                //    Response.Redirect("AfterAdminlogin.aspx");
                //}
                //else
                //{
                //    Response.Write("<script>alert('Inavalid Credentials..');</script>");

                //}
            }
            catch (Exception ex)
            {

            }
        }
    }
}