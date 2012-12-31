<%@ Page Title="" Language="C#" MasterPageFile="~/Auxn.Master" AutoEventWireup="true" CodeBehind="My Profile_3.aspx.cs" Inherits="LebanonAuxn.My_Profile_3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<table> <tr>
<td width="20%" align="left" valign="top">
<ul class="nav nav-list">
  <!-- <li class="nav-header">List header</li> -->
   <li ><a href="My Profile_1.aspx">Recently Viewed</a></li>
  <li><a href="My Profile_2.aspx">Currently on Bid</a></li>
  <li  class="active"><a href="My Profile_3.aspx">Bought Items</a></li>
  <li><a href="My Profile_4.aspx">Items for Sale</a></li>
  <li><a href="My Profile_5.aspx">Sold Items</a></li>
</ul>
</td>
<td >
    <asp:GridView  class = "table table-hover table-striped" ID= "table1"  
        runat="server" EnableModelValidation="True" 
        Width="625px" Height="205px" EnableTheming="True" AllowPaging="True" 
        AutoGenerateColumns="False" >
        <Columns>
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
            </asp:ImageField>
            <asp:BoundField HeaderText="AuxID" DataField="AuxID" />
            <asp:BoundField HeaderText="Desc" DataField="Desc" NullDisplayText="N/A" />
            <asp:BoundField HeaderText="Date Posted" DataField="Date Posted" />
            <asp:BoundField HeaderText="Last Bid" DataField="Last Bid" />
        </Columns>
    </asp:GridView>


</td>
</tr>
</table>

<ul class="nav nav-list">
  <li class="divider"></li>
</ul>

</asp:Content>
