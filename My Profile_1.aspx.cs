using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Drawing;
//

namespace LebanonAuxn
{
    public partial class My_Profile_1 : System.Web.UI.Page
    {
        //
        protected object currentBug;

        protected System.Web.UI.WebControls.DataGrid dataGrid1;
        protected System.Web.UI.WebControls.Panel BugDetailsPanel;

        public My_Profile_1()
        {
            Page.Init += new System.EventHandler(Page_Init);
        }



        //
        protected void Page_Load(object sender, EventArgs e)
        {
            //
            if (!IsPostBack)
            {
                BindGrid();
                UpdateBugDetails();
            }
            //

        }


        //
 

      private void Page_Init(object sender, EventArgs e)
      {
          InitializeComponent();
      }

      // Property: which column is sorted
      protected string SortColumn
      {
          get
          {
              object o = ViewState["SortColumn"];
              if (o != null)
              {
                  return (string)o;
              }
              return "Title"; // default
          }
          set
          {
              ViewState["SortColumn"] = value;
          }
      }

      // Property: are we sorting ascending (true)
      // or descending (false)
      protected bool SortAscend
      {
          get
          {
              object o = ViewState["SortAscend"];
              if (o != null)
                  return (bool)o;
              return true; // default
          }
          set
          {
              ViewState["SortAscend"] = value;
          }
      }

      // handle new page request
      public void OnPageIndexChangedHandler(
         Object sender,
         DataGridPageChangedEventArgs e)
      {
          // set the new index
          dataGrid1.CurrentPageIndex = e.NewPageIndex;

          // rebind the data
          BindGrid();
          UpdateBugDetails();
      }

      // when a sort field title is clicked
      public void OnSortCommandHandler(
         Object sender,
         DataGridSortCommandEventArgs e)
      {
          // find out the current column being sorted
          string currentSortColumn = SortColumn;

          // set the property to the requested column
          SortColumn = e.SortExpression;

          // if the same column is clicked
          // reverse the sort
          if (currentSortColumn == SortColumn)
          {
              SortAscend = !SortAscend;
          }
          else  // otherwise sort ascending
          {
              SortAscend = true;
          }

          // rebind the data (sorted)
          BindGrid();
          UpdateBugDetails();
      }

      public void OnItemCreatedEventHandler(
         Object sender,
         DataGridItemEventArgs e)
      {
          ListItemType itemType =
             (ListItemType)e.Item.ItemType;

          if (itemType == ListItemType.Header)
          {
              System.Web.UI.WebControls.Label sortSymbol = new System.Web.UI.WebControls.Label();
              sortSymbol.Text = SortAscend ? "5" : "6";
              sortSymbol.Font.Name = "Webdings";

              TableCell theCell = null;
              switch (SortColumn)
              {
                  case "Title":
                      theCell = e.Item.Cells[1];
                      break;
                  case "addedby":
                      theCell = e.Item.Cells[2];
                      break;
                  case "DateCreated":
                      theCell = e.Item.Cells[5];
                      break;
              }
              if (theCell != null)
                  theCell.Controls.Add(sortSymbol);
          }

      }

      // the user has selected a row
      public void OnSelectedIndexChangedHandler(
         Object sender, EventArgs e)
      {
          UpdateBugDetails();
      }

      // If the user has selected a row
      // display the details panel
      private void UpdateBugDetails()
      {
          // find out which bug selected
          UpdateSelectedBug();

          // if there is a selected bug
          // display the details
          if (currentBug != null)
          {
              BugDetailsPanel.Visible = true;
              BugDetailsPanel.DataBind();
          }
          else
          {
              BugDetailsPanel.Visible = false;
          }
      }

      // compare the selected row with
      // the array list of bugs
      // return the selected bug
      private void UpdateSelectedBug()
      {
          int index = dataGrid1.SelectedIndex;
          currentBug = null;
          if (index != -1)
          {

              // get the bug id from the data grid
              int bugID = (int)dataGrid1.DataKeys[index];

              // recreate the arraylist from the session state
              ArrayList bugs = (ArrayList)Session["bugList"];

              // find the bug with the selected bug id
              foreach (Bug theBug in bugs)
              {
                  if (theBug.BugID == bugID)
                      currentBug = theBug;
              }

          }
      }


     

      // when items are bound to the grid
      // examine them and set high status to red
      public void OnItemDataBoundEventHandler(
         Object sender, DataGridItemEventArgs e)
      {
         
          // Don't bother for header, footer and separator items
          ListItemType itemType = (ListItemType)e.Item.ItemType;
          if (itemType == ListItemType.Header ||
             itemType == ListItemType.Footer ||
             itemType == ListItemType.Separator)
              return;

          // e.Item.DataItem is the data for the item
          Bug bug = (Bug)e.Item.DataItem;

          // check the severity for this item
          // if it is high, set the cell to red
          if (bug.Severity == "High")
          {
              // this would make the entire entry red
              //  e.Item.ForeColor = Color.FromName("red");

              // get just the cell we want
              TableCell severityCell = (TableCell)e.Item.Controls[6];

              // set that cell's forecolor to red
              severityCell.ForeColor = Color.FromName("Red");
          }

      }

      // create the bugs
      // add them to the array list
      // bind the data grid to the array list
      void BindGrid()
      {

          DateTime d1 = new DateTime(2002, 7, 10, 13, 14, 15);
          DateTime d2 = new DateTime(2002, 7, 4, 12, 55, 03);
          DateTime d3 = new DateTime(2002, 8, 5, 13, 12, 07);
          DateTime d4 = new DateTime(2002, 12, 16, 12, 33, 05);
          ArrayList bugs = new ArrayList();

          bugs.Add(
             new Bug(
             101,
             "Bad Property Value",
             "Jesse Liberty",
             "2",
             "0.11",
             "Property values incorrect when you enter a new type",
             d1,
             "High")
             );

          bugs.Add(
             new Bug(
             102,
             "Doesn't load properly",
             "Dan Hurwitz",
             "1",
             "0.3",
             "The system fails on load with error x2397",
             d2,
             "High")
             );

          bugs.Add(
             new Bug(
             103,
             "Hangs on exit",
             "Jack Ryan",
             "4",
             "1",
             "When you press close, it hangs",
             d3,
             "High")
             );

          bugs.Add(
             new Bug(
             104,
             "Wrong data",
             "Demetri Karamazov",
             "7",
             "0.01",
             "The data does not match the DB",
             d4,
             "Medium")
             );







          Bug.BugComparer c = Bug.GetComparer();
          c.WhichField = SortColumn;
          c.Ascending = SortAscend;
          bugs.Sort(c);

          dataGrid1.DataSource = bugs;
          dataGrid1.DataBind();
          Session["bugList"] = bugs;

          /* not working
          DataGridViewImageColumn img = new DataGridViewImageColumn();
          //try{
          System.Drawing.Image image = System.Drawing.Image.FromFile(Server.MapPath("img3.png"));
          img.Image = image;
          dataGrid1.DataSource = img; dataGrid1.DataBind();
          //dataGrid1.Columns.Add(img);
          img.HeaderText = "Image";
          img.Name = "img";
          //}
          //catch { }
          */

      }

      #region Web Form Designer generated code
      /// <summary>
      /// Required method for Designer support - do not modify
      /// the contents of this method with the code editor.
      /// </summary>
      private void InitializeComponent()
      {
          this.Load += new System.EventHandler(this.Page_Load);

      }
      #endregion




        //


    }

    //

    // The bug class.
    // Implements IComparable for sorting
    // Has nested IComparer class
    public class Bug : IComparable
    {
        private int bugID;
        private string title; //want to change it to media object
        private string addedby;
        private string price;
        private string bid;
        private string description;
        private DateTime dateCreated;
        private string severity;

        public Bug(int id, string title, string addedby,
           string price, string bid,
           string description, DateTime dateCreated,
           string severity)
        {
            bugID = id;
            this.title = title;
            this.addedby = addedby;
            this.price = price;
            this.bid = bid;
            this.description = description;
            this.dateCreated = dateCreated;
            this.severity = severity;
        }

        // static method returns dedicated IComparer
        public static BugComparer GetComparer()
        {
            return new Bug.BugComparer();
        }

        // implementing IComparable
        public int CompareTo(Object rhs)
        {
            Bug r = (Bug)rhs;
            return this.title.CompareTo(r.title);
        }

        // dedicated method for BugComparer to use
        public int CompareTo(
           Bug rhs, string field, bool ascending)
        {
            switch (field)
            {
                case "Title":
                    if (ascending)
                        return this.title.CompareTo(rhs.title);
                    else
                    {
                        int retVal =
                           this.title.CompareTo(rhs.title);
                        switch (retVal)
                        {
                            case 1:
                                return -1;
                            case -1:
                                return 1;
                            default:
                                return 0;
                        }
                    }
                case "addedby":
                    if (ascending)
                        return this.addedby.CompareTo(
                           rhs.addedby);
                    else
                    {
                        int retVal = this.addedby.CompareTo(
                           rhs.addedby);
                        switch (retVal)
                        {
                            case 1:
                                return -1;
                            case -1:
                                return 1;
                            default:
                                return 0;
                        }
                    }

                case "BugID":
                    if (this.bugID < rhs.BugID)
                        return ascending ? -1 : 1;
                    if (this.bugID > rhs.BugID)
                        return ascending ? 1 : -1;
                    return 0;
                case "DateCreated":
                    if (this.dateCreated < rhs.dateCreated)
                        return ascending ? -1 : 1;
                    if (this.dateCreated > rhs.dateCreated)
                        return ascending ? 1 : -1;
                    return 0;
            }
            return 0;
        }

        // nested specialized IComparer
        public class BugComparer : IComparer
        {
            public int Compare(object lhs, object rhs)
            {
                Bug l = (Bug)lhs;
                Bug r = (Bug)rhs;
                return l.CompareTo(r, whichField, ascending);
            }

            // Property: which field are we sorting
            public string WhichField
            {
                get
                {
                    return whichField;
                }
                set
                {
                    whichField = value;
                }
            }

            // Property: Ascending (true) or descending
            public bool Ascending
            {
                get
                {
                    return ascending;
                }
                set
                {
                    ascending = value;
                }

            }
            private string whichField;
            private bool ascending;
        }     // end nested class

        // Properties for Bugs
        public int BugID { get { return bugID; } }
        public string Title { get { return title; } }
        public string Addedby { get { return addedby; } }
        public string Price { get { return price; } }
        public string Bid { get { return bid; } }
        public string Description { get { return description; } }
        public DateTime DateCreated { get { return dateCreated; } }
        public string Severity { get { return severity; } }

    }
    //
}