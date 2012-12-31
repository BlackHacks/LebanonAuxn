<%@ Page Title="" Language="C#" MasterPageFile="~/Auxn.Master" AutoEventWireup="true" CodeBehind="My Profile_1.aspx.cs" Inherits="LebanonAuxn.My_Profile_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<table> <tr>
<td width="20%" align="left" valign="top">
<ul class="nav nav-list">
  <!-- <li class="nav-header">List header</li> -->
  <li class="active"><a href="My Profile_1.aspx">Recently Viewed</a></li>
  <li><a href="My Profile_2.aspx">Currently on Bid</a></li>
  <li><a href="My Profile_3.aspx">Bought Items</a></li>
  <li><a href="My Profile_4.aspx">Items for Sale</a></li>
  <li><a href="My Profile_5.aspx">Sold Items</a></li>
</ul>
</td>




<td >

<table class="table table-hover" width="100%">
<tr> <th>Item</th><th>Price</th><th>Date Added</th><th>&nbsp</th></tr>
<tr><td style="width: 450px">
<div class="media">
  <a class="pull-left" href="#">
    <img class="media-object" src="ipad.jpg"/>
  </a>
  <div class="media-body">
    <h4 class="media-headtiing">item heading</h4>
    <h6 class="media-body"> short description of item</h6>
  </div>
</div>
</td> 
<td class="input-small">price</td>
<td class="input-small">Date added</td>
<td class="input-small">Sold or Buy icon</td>
</tr>


<tr><td style="width: 450px">
<div class="media">
  <a class="pull-left" href="#">
    <img class="media-object" src="imgs/motorola_img1.jpg"/>
  </a>
  <div class="media-body">
    <h4 class="media-heading">item heading</h4>
    <h6 class="media-body"> short description of item</h6>
  </div>
</div>
</td> 
<td class="input-small">price</td>
<td class="input-small">Date added</td>
<td class="input-small">Sold or Buy icon</td>
</tr>

<tr><td style="width: 450px">
<div class="media">
  <a class="pull-left" href="#">
    <img class="media-object" src="imgs/fossil_watch_img2.jpg"/>
  </a>
  <div class="media-body">
    <h4 class="media-heading">item heading</h4>
    <h6 class="media-body"> short description of item</h6>
  </div>
</div>
</td> 
<td class="input-small">price</td>
<td class="input-small">Date added</td>
<td class="input-small">Sold or Buy icon</td>
</tr>

</table>



<!-- -->

<p> need below data grid with sorting and data from database bound to it, and to have a media object content (image with heading and description) as above - attempts failed, check codebehind</p>
<p> this table will be used in all view table: viewitems, recently viewed,.. right buttons,... </p>

      <asp:DataGrid id="dataGrid1"  class="table table-hover" GridLines="None"
      OnItemDataBound="OnItemDataBoundEventHandler"
       OnItemCreated ="OnItemCreatedEventHandler"
       OnSelectedIndexChanged="OnSelectedIndexChangedHandler"
       OnSortCommand="OnSortCommandHandler"
       OnPageIndexChanged ="OnPageIndexChangedHandler"
      
         AllowPaging="True"
       PageSize ="4"
       AllowSorting="True"
      AutoGenerateColumns="False"

             ShowFooter="True"
             BorderWidth="0px"

       DataKeyField="bugID"
      runat="server">

         <PagerStyle
         HorizontalAlign="Right"
         Mode="NumericPages">
         </PagerStyle>

        <Columns>
          <asp:ButtonColumn Text="Details" CommandName="Select"  />

          <asp:BoundColumn
          HeaderText="Title" 
           DataField="Title"
           SortExpression="Title"
          />

          <asp:BoundColumn
          HeaderText="Added by"
          Datafield="addedby"
          SortExpression="addedby"
          />


          <asp:BoundColumn  HeaderText="Price" DataField="price" SortExpression="price" /> 
          <asp:BoundColumn DataField="bid" HeaderText="Bid"  SortExpression="bid"/>

          <asp:BoundColumn
          HeaderText="Date Created"
          DataField="DateCreated"
          SortExpression="DateCreated"
          />

          <asp:BoundColumn DataField="Severity" HeaderText="Severity" />
        </Columns>
      </asp:DataGrid>


<asp:Panel ID="BugDetailsPanel" Runat="server">
<TABLE style="FONT-SIZE: 8pt; COLOR: black; FONT-FAMILY: Arial" cellSpacing=0
cellPadding=2 width="100%" border=0>
  <TR>
    <TD width="15%"><B>BugID</B> </TD>
    <TD align=left><%# DataBinder.Eval(currentBug, "BugID") %></TD></TR>
  <TR>
    <TD><B>Title</B></TD>
    <TD><%# DataBinder.Eval(currentBug,"Title") %></TD></TR>
  <TR>
    <TD><B>Reported by</B></TD>
    <TD><%# DataBinder.Eval(currentBug,"addedby") %></TD></TR>
  <TR>
    <TD><B>price</B></TD>
    <TD><%# DataBinder.Eval(currentBug,"price") %></TD></TR>
  <TR>
    <TD><B>bid</B></TD>
    <TD><%# DataBinder.Eval(currentBug,"bid") %></TD></TR>
  <TR>
    <TD><B>Description</B></TD>
    <TD><%# DataBinder.Eval(currentBug,"Description") %></TD></TR>
  <TR>
    <TD><B>Date Created</B></TD>
    <TD><%# DataBinder.Eval(currentBug,"DateCreated") %></TD></TR>
  <TR>
    <TD><B>Severity</B></TD>
    <TD><%# DataBinder.Eval(currentBug,"Severity") %></TD></TR></TABLE>
</asp:Panel>



<!-- -->



</td>
</tr>
</table>

<ul class="nav nav-list">
  <li class="divider"></li>
</ul>

</asp:Content>
