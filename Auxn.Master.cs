using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Text;

namespace LebanonAuxn
{
    public partial class Auxn : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("View Items.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sell.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("My Profile_1.aspx");
        }


    }
}