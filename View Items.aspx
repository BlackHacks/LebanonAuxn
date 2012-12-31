<%@ Page Title="" Language="C#" MasterPageFile="~/Auxn.Master" AutoEventWireup="true" CodeBehind="View Items.aspx.cs" Inherits="LebanonAuxn.View_Items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
   
    alert("fdf");
  
    $('#myTab a[id="#tab1"]').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    })
    $('#myTab a[id="#tab2"]').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    })
    $('#myTab a[id="#tab3"]').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    })
    $('#myTab a[id="#tab4"]').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    })
</script>



<div class="tabbable"> 
  <ul id = "myTab" class="nav nav-tabs">
    <li class="active"><a href="#tab1" data-toggle="tab">All Categories</a></li>
    <li><a id = "tab2" href="View_Category Selected.aspx" data-toggle="tab">Collectibles</a></li>
    <li><a id = "tab3" href="#tab3" onclick="tab">Electronics</a></li>
    <li><a href="#tab4" data-toggle="tab">Automobiles</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="tab1">
      <p>I'm in Section 1.</p>
      <ul>
      <li> 1</li><li> 2</li><li> 3</li>
      </ul>
      
    </div>
    <div class="tab-pane" id="tab2">
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



</asp:Content>
