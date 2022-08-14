using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_web_1
{
    public partial class AfterAdminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAuthor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Author_page.aspx");
        }

        protected void lbUserManagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserManagement.aspx");
        }

        protected void lbBookInventory_Click(object sender, EventArgs e)
        {
            Response.Redirect("Book_inventory.aspx");
        }

        protected void lbBookIssuing_Click(object sender, EventArgs e)
        {
            Response.Redirect("Book_issuing.aspx");
        }
    }
}