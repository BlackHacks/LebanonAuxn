using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LebanonAuxn
{
    public partial class My_Profile_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            table1.GridLines = GridLines.Horizontal;
            table1.BorderStyle = BorderStyle.None;
            table1.DataSource = GetData();
            table1.DataBind();
            
        }

        public DataTable GetData()
        {
            // This method creates a DataTable with four rows.  Each row has the
            // following schema:
            //   AuxID      int
            //   Image     string
            //   Desc          string
            //   Date Posted      datetime
            DataTable dt = new DataTable();
            // define the table's schema
            dt.Columns.Add(new DataColumn("Image", typeof(string)));
            dt.Columns.Add(new DataColumn("AuxID", typeof(string)));
            dt.Columns.Add(new DataColumn("Desc", typeof(string)));
            dt.Columns.Add(new DataColumn("Date Posted", typeof(string)));
            dt.Columns.Add(new DataColumn("Last Bid", typeof(string)));
            // Create the four records
            DataRow dr = dt.NewRow();
            dr["AuxID"] = "e343";
            dr["Image"] = ResolveUrl("Img1.png");
            dr["Desc"] = "Blue Hills";
            dr["Date Posted"] = "1";
            dt.Rows.Add(dr);
            dr = dt.NewRow();
            dr["AuxID"] = "giorgio";
            dr["Image"] = ResolveUrl("Img1.png");
            dr["Desc"] = "Sunset";
            dr["Date Posted"] = "1";
            dt.Rows.Add(dr);
            dr = dt.NewRow();
            dr["AuxID"] = "4saad34";
            dr["Image"] = ResolveUrl("Img1.png");
            dr["Desc"] = "Water Lilies";
            dr["Date Posted"] = "1";
            dt.Rows.Add(dr);
            dr = dt.NewRow();
            dr["AuxID"] = "43fkjdkjd43";
            dr["Image"] = ResolveUrl("Img1.png");
            dr["Desc"] = "Winter";
            dr["Date Posted"] = "1";
            dt.Rows.Add(dr);
            return dt;
        }


    }
}