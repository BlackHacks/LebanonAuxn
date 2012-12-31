<%@ Page Title="" Language="C#" MasterPageFile="~/Auxn.Master" AutoEventWireup="true"
    CodeBehind="Sell.aspx.cs" Inherits="LebanonAuxn.Sell" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well well-small">
        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#000066" Text="Enter information about the item you wish to sell."></asp:Label>
    </div>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#000066" Text="Category"></asp:Label>
    &nbsp; &nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
    &nbsp;<br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#000066" Text="Sub Category"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#000066" Text="Description"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="126px" TextMode="MultiLine"
        Width="651px"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#000066" Text="Color"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#000066" Text="Size"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#000066" Text="Extra Info"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox4" runat="server" Height="64px" TextMode="MultiLine" Width="581px"></asp:TextBox>
   <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                  <div class="item">
                    <img src="/ford img1.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>First Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                  <div class="item">
                    <img src="/ford img2.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                  <div class="item active">
                    <img src="/ford img3.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>Third Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
              </div>
    <br />
    <br />
    <br />
    &nbsp;
</asp:Content>
