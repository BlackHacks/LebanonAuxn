<%@ Page Title="" Language="C#" MasterPageFile="~/Auxn.Master" AutoEventWireup="true" CodeBehind="My Profile_2.aspx.cs" Inherits="LebanonAuxn.My_Profile_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<table> <tr>
<td width="20%" align="left" valign="top">
<ul class="nav nav-list">
  <!-- <li class="nav-header">List header</li> -->
   <li ><a href="My Profile_1.aspx">Recently Viewed</a></li>
  <li  class="active"><a href="My Profile_2.aspx">Currently on Bid</a></li>
  <li><a href="My Profile_3.aspx">Bought Items</a></li>
  <li><a href="My Profile_4.aspx">Items for Sale</a></li>
  <li><a href="My Profile_5.aspx">Sold Items</a></li>
</ul>
</td>
<td >
<table class="table table-hover" width="100%">

<tr><td style="width: 450px">
<div class="media">
  <a class="pull-left" href="#">
    <img class="media-object" src="ipad.jpg"/>
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


</td>
</tr>
</table>

<ul class="nav nav-list">
  <li class="divider"></li>
</ul>

</asp:Content>
