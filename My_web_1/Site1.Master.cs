using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_web_1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    lbLogin.Visible = true;  // Login Link button
                    lbSignup.Visible = true;  // Signup Link button

                    lbLogout.Visible = false;  // Logout Link button
                    lbHello.Visible = false;   // Hello Link button

                    //lbAdminlogin.Visible = true;  // Adminlogin Link button
                    //lbAdminauthor.Visible = false;  // AdminAuthor Link button
                    //lbAdminusermang.Visible = false;  // AdminUserManagement Link button
                }
                 else if (Session["role"].Equals("user"))
                {
                    lbLogin.Visible = false;  // Login Link button
                    lbSignup.Visible = false;  // Signup Link button

                    lbLogout.Visible = true;  // Logout Link button
                    lbHello.Visible = true;   // Hello Link button
                    lbHello.Text = " Hello  &nbsp;" + Session["fullname"].ToString();

                    //lbAdminlogin.Visible = true;  // Adminlogin Link button
                    //lbAdminauthor.Visible = false;  // AdminAuthor Link button
                    //lbAdminusermang.Visible = false;  // AdminUserManagement Link button
                }

                else if (Session["role"].Equals("admin"))
                {
                    lbLogin.Visible = false;  // Login Link button
                    lbSignup.Visible = false;  // Signup Link button

                    lbLogout.Visible = true;  // Logout Link button
                    lbHello.Visible = true;   // Hello Link button
                    lbHello.Text = " Hello &nbsp; ADMIN";

                    //lbAdminlogin.Visible = true;  // Adminlogin Link button
                    //lbAdminauthor.Visible = false;  // AdminAuthor Link button
                    //lbAdminusermang.Visible = false;  // AdminUserManagement Link button
                }
                  }

            catch (Exception ex)
            {
            }
        }

        protected void lbSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp_page.aspx");
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_page.aspx");
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
          
            //Session["username"] = "";
            //Session["fullname"] = "";
            //Session["role"] = "";
          


            //lbLogin.Visible = true;  // Login Link button
            //lbSignup.Visible = true;  // Signup Link button

            //lbLogout.Visible = false;  // Logout Link button
            //lbHello.Visible = false;   // Hello Link button

            ////lbAdminlogin.Visible = true;  // Adminlogin Link button
            ////lbAdminauthor.Visible = false;  // AdminAuthor Link button
            ////lbAdminusermang.Visible = false;  // AdminUserManagement Link button
            //Response.Redirect("HomePage.aspx");


            //if (Session["role"].Equals(""))

            //{
            //    Session["username"] = "";
            //    Session["fullname"] = "";
            //    Session["role"] = "";
            //    lbLogin.Visible = true;  // Login Link button
            //    lbSignup.Visible = true;  // Signup Link button

            //    lbLogout.Visible = false;  // Logout Link button
            //    lbHello.Visible = false;   // Hello Link button
            //    Response.Redirect("HomePage.aspx");

            //    //lbAdminlogin.Visible = true;  // Adminlogin Link button
            //    //lbAdminauthor.Visible = false;  // AdminAuthor Link button
            //    //lbAdminusermang.Visible = false;  // AdminUserManagement Link button
            //}
             if (Session["role"].Equals("user"))
            {
                Session["username"] = "";
                Session["fullname"] = "";
                Session["role"] = "";
                Session["AccountStatus"] = "";
                lbLogin.Visible = false;  // Login Link button
                lbSignup.Visible = false;  // Signup Link button

                lbLogout.Visible = false;  // Logout Link button
                lbHello.Visible = false;   // Hello Link button
                //lbHello.Text = " Hello  &nbsp;" + Session["fullname"].ToString();

                Response.Redirect("Login_page.aspx");

                //lbAdminlogin.Visible = true;  // Adminlogin Link button
                //lbAdminauthor.Visible = false;  // AdminAuthor Link button
                //lbAdminusermang.Visible = false;  // AdminUserManagement Link button
            }

            else if (Session["role"].Equals("admin"))
            {
                Session["username"] = "";
                Session["fullname"] = "";
                Session["role"] = "";
                Session["AccountStatus"] = "";
                lbLogin.Visible = false;  // Login Link button
                lbSignup.Visible = false;  // Signup Link button

                lbLogout.Visible = false;  // Logout Link button
                lbHello.Visible = false;   // Hello Link button
                //lbHello.Text = " Hello &nbsp; ADMIN";

                Response.Redirect("Admin_page.aspx");

                //lbAdminlogin.Visible = true;  // Adminlogin Link button
                //lbAdminauthor.Visible = false;  // AdminAuthor Link button
                //lbAdminusermang.Visible = false;  // AdminUserManagement Link button
            }
        }
    }
}