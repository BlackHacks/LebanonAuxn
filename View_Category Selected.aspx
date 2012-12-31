<%@ Page Title="" Language="C#" MasterPageFile="~/Auxn.Master" AutoEventWireup="true" CodeBehind="View_Category Selected.aspx.cs" Inherits="LebanonAuxn.View_Category_Selected" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="tabbable"> 
  <ul class="nav nav-tabs">
    <li class="active"><a href="#tab1" data-toggle="tab">All Categories</a></li>
    <li><a href="View_Category Selected.aspx" data-toggle="tab">Collectibles</a></li>
    <li><a href="#tab3" data-toggle="tab">Electronics</a></li>
    <li><a href="#tab4" data-toggle="tab">Automobiles</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane" id="tab1">
      <p>I'm in Section 1.</p>
      <ul>
      <li> 1</li><li> 2</li><li> 3</li>
      </ul>
      
    </div>
    <div class="tab-pane active" id="tab2">
      <p>Howdy, I'm in Section 2.</p>
    </div>
    <div class="tab-pane" id="tab3">
      <p>I'm in Section 3.</p>
    </div>
    <div class="tab-pane" id="tab4">
      <p>Howdy, I'm in Section 4.</p>
    </div>


  </div>
</div>

<table class="table table-hover" width="100%">
<tr> <th>Item</th><th>Price</th><th>Date Added</th><th>&nbsp</th></tr>
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



</asp:Content>
