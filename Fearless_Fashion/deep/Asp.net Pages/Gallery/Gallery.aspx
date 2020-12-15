<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="deep.Gallery"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .bgcolor {
            background-color: dimgray;
        }

        .header {
            justify-content: left;
            color: white;
        }

        .back {
            background-color: black;
        }

        .green {
            color: springgreen;
            text-decoration: underline;
            font-weight: bold;
        }

        .link {
            color: orchid;
        }

        #TextBox1:hover {
            background-color: aqua;
        }

        #TextBox2:hover {
            background-color: aqua;
        }

        .he {
            color: black;
        }

        .ce {
            color: white;
            font-weight: bold;
            text-align: center;
            justify-content: center
        }

        .auto-style2 {
            text-align: center;
            height: 32px;
        }

        .img_col {
            background-color: white;
        }

        .change {
            background-color: dodgerblue;
            color: #000;
            border: none;
            font-size: 12px;
            font-weight: bold;
            text-transform: uppercase;
            line-height: 40px;
            width: 150px;
            font-family: 'Montserrat', sans-serif;
            margin-top: 25px;
            border: 3px solid white;
        }

            .change:hover {
                background-color: darkorange;
            }

        .auto-style3 {
            text-align: center;
            height: 58px;
        }

        .auto-style5 {
            text-align: center;
            height: 27px;
        }
        .buttoncolor{
           background-color: transparent;
    background-color: #00b894;
    color: white;
    border: none;
    font-family: 'Montserrat', sans-serif;
    text-transform: uppercase;
    font-weight: bold;
    line-height: 40px;
    border: 3px solid white;
    width: 150px;
        }
        .buttoncolor:hover{
               background-color: #fff;
    color: #000;
        }

        .auto-style6 {
            background-color: #99FFCC;
        }
        .auto-style7 {
            width: 100%;
            height: 43px;
        }

    </style>



        <br />
        <br />

        
    <!---------------------------------------------Expert Advice--------------------------------------------------------------->
    <section class="expertadvice bg-light text-center">
         <div class="container">
            <h1>Expert Advice</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
             </div>
        <!--second Carousel><-->
        <div class="container-fluid" style="margin: 0%">
            
                                    <div class="row">
                        <div class="col-md-2">
                            <img src="Face/Square-face.png" class="img-thumbnail" />
                            <asp:Button ID="Button2" runat="server" Text="Square Face" class="buttoncolor" OnClick="Button2_Click"/>
                        </div>
                        <div class="col-md-2">
                            <img src="Face/Round-face.png" class="img-thumbnail" />
                            <asp:Button ID="Button3" runat="server" Text="Round Face" class="buttoncolor" OnClick="Button3_Click"/>
                        </div>
                        <div class="col-md-2">
                            <img src="Face/Oval-face.png" class="img-thumbnail" />
                            <asp:Button ID="Button4" runat="server" Text="Oval Face" class="buttoncolor" OnClick="Button4_Click"/>
                        </div>
                        <div class="col-md-2">
                            <img src="Face/Oblong-face.png" class="img-thumbnail" />
                            <asp:Button ID="Button5" runat="server" Text="Oblong Face" class="buttoncolor" OnClick="Button5_Click"/>
                        </div>
                        <div class="col-md-2">
                            <img src="Face/Heart-face-.png"  class="img-thumbnail" />
                            <asp:Button ID="Button6" runat="server" Text="Heart Face" class="buttoncolor" OnClick="Button6_Click"/>
                        </div>
                        <div class="col-md-2">
                            <img src="Face/Diamond-face.png" class="img-thumbnail" />
                            <asp:Button ID="Button7" runat="server" Text="Diamond Face" class="buttoncolor" OnClick="Button7_Click"/>
                        </div>
                    </div>
                </div>
                    
              
                
           

      </section>
 

    <br />
    <table class="auto-style7">
        <tr>
            <td class="auto-style6">Product Categories :&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Top wear</asp:LinkButton>
&nbsp;&nbsp; |
                <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Foot Wear</asp:LinkButton>
&nbsp; |&nbsp;
                <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Bottom Wear</asp:LinkButton>
&nbsp;|
                <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">Festival wear</asp:LinkButton>
&nbsp; |&nbsp;
                <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">Watches</asp:LinkButton>
&nbsp; |&nbsp;
                <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">View all Product</asp:LinkButton>
            </td>
        </tr>
    </table>


    <p Style="margin-left: 60%">Your Have Product in Your Cart
    <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddtoCart.aspx">Show Cart</asp:HyperLink>
        </p>
    <br />
    <br />
    <div class="img_col">

        <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_id" DataSourceID="SqlDataSource1" RepeatColumns="6" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" >
            <ItemTemplate>
                <table border="0" class="w-100" style="margin-left: 2%">
                    <tr>
                        <td class="text-center">Product_id:-<asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_name") %>' Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("img") %>' Width="200px" BorderStyle="Inset" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Fastival") %>'></asp:Label>
                            &nbsp;,Rs.<asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>' Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            Available Stock:-<asp:Label ID="Label7" runat="server" Text='<%# Eval("available") %>'></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("Product_id") %>' CommandName="viewdetails" Height="51px" ImageUrl="~/Button image/Redmore Details.jpg" Width="179px" />
                        </td>
                    </tr>

                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString5 %>" SelectCommand="SELECT * FROM [Product_details] WHERE ([Fastival] = @Fastival)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Fastival" QueryStringField="cat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString2 %>" SelectCommand="SELECT * FROM [Product_details] WHERE ([Expertadvice] = @Expertadvice2)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Expertadvice2" QueryStringField="Exe" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString5 %>" SelectCommand="SELECT * FROM [Product_details]"></asp:SqlDataSource>





    <div class="bgcolor">
        <div id="carouselExampleCaption" class="carousel slide carousel-fade" data-ride="carousel">

            <div class="carousel-inner">
                <br />
                <div class="carousel-item active">
                    <img src="Gallery_img/client.jpg" class="d-block w-100 img-fluid" style="margin: 2%" alt="..." />
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="he">What Our Client Say?</h5>
                        <p class="ce">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <p class="ce">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <p class="ce">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Gallery_img/client.jpg" class="d-block w-100 img-fluid" style="margin: 2%" alt="..." />
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="he">What Our Client Say?</h5>
                        <p class="ce">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            <p class="ce">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Gallery_img/client.jpg" class="d-block w-100 img-fluid" style="margin: 2%" alt="..." />
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="he">What Our Client Say?</h5>
                        <p class="ce">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <p class="ce">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

                    </div>
                </div>
            </div>

        </div>
    </div>

    <!--footer-->
    <div class="back">
        <div class="container-fluid" style="margin: 0%">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6 ">
                            <h class="green">Fearless Fashion</h>
                            <p class="header">
                                This website provides customer to view the latest trends for clothing.
                   Fearless  Fashion is a fair price shop. It sells goods like festival,many occasions and party’s. 
                        New customer can register to the site and existing customers can sing-in     The purpose of the 
                       project is to build an application program to reduce the manual work for managing the 
                       Shopping, Product, Delivery, Internet.
                       It tracks all the details about the Internet,  Payment, Customer.
                            </p>

                        </div>
                        <div class="col-md-6">
                            <h class="green">Social_Media</h>
                            <p class="link"><a href="#">Facebook</a></p>
                            <p class="link"><a href="#">Youtube</a></p>
                            <p class="link"><a href="#">Linkedin</a></p>
                            <p class="link"><a href="#">Instagram</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <h1 class="green">Contact_Us</h1>
                    <div class="row">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col">
                                    <label class="link">Email</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Email" TextMode="Email" Width="593px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label class="link">Massage</label>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Massage" TextMode="MultiLine" Width="593px"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col" style="margin-left: 40%">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End footer-->
</asp:Content>
