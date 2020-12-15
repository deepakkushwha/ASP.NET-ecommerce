<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PlacedSuccessfully.aspx.cs" Inherits="deep.PlacedSuccessfully" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 275px;
        }

        .auto-style3 {
            height: 45px;
            text-align: center;
            color: #66FF33;
            text-decoration: underline;
            background-color: #000000;
        }

        .auto-style4 {
            height: 32px;
        }

        .auto-style5 {
            width: 100%;
            height: 142px;
        }

        .auto-style6 {
            height: 32px;
            width: 559px;
        }

        .auto-style7 {
            color: #FF3300;
        }

        .auto-style8 {
            color: #FF6600;
        }
        .auto-style9 {
            text-decoration: underline;
        }
        .auto-style10 {
            color: #000000;
        }
        .auto-style11 {
            text-decoration: underline;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-center">
        Your Order is placed SuccessFully Sir.
    </p>
    <p class="text-left">
        Order ID:<asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
    <p class="text-left">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="103px" ImageUrl="~/Button image/images (1).jpg"  Width="283px" OnClick="ImageButton1_Click" />
    
        <asp:Button ID="Button1" runat="server" style="margin-left:950px" Text="Cancle Order" BackColor="#FFCC66" BorderStyle="Double" OnClick="Button1_Click" Height="61px" Width="216px" />
    </p>
    <asp:Panel ID="Panel1" runat="server" Style="height: 666px">
        <table class="auto-style2" border="1">
            <tr>
                <td class="auto-style3"><em><strong>Retail Invoice</strong></em></td>
            </tr>
            <tr>
                <td>Order No:<asp:Label ID="Label4" runat="server"></asp:Label>
                    <br />
                    Order Date:-<asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table border="1" class="auto-style5">
                        <tr>
                            <td class="auto-style6"><strong>Buyer Address:<br />
                            </strong>
                                <asp:Label ID="Label6" runat="server" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td class="auto-style4"><strong>Seller Address:<br />
                            </strong>
                                <span class="auto-style7">HARYANA,&nbsp; FARIDABAD [SARAI KWAJA].</span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="1648px" AutoGenerateColumns="False">

                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="S.no">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Product_id" HeaderText="Product ID">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Product_name" HeaderText="Product Name">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Price" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="Total Price"></asp:BoundField>

                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    Grand Total:<asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="text-left">Declaration: We declare that this invoice shows actual price of the goods&nbsp; described inclusive of taxes and all that all paticulars are true and correct.<br />
                    incase you find Selling price on this invoice to be&nbsp; more then MRP mentioned&nbsp; on product, plese inform&nbsp; <a href="mailto:wrongMRP@utf.com">wrongMRP@utf.com</a><br />
                    <br />
                    THIS IS COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE.<br />
          </td>  </tr>
        </table>
    </asp:Panel>
    <p style="text-align:center" class="auto-style9"><strong>Feedback</strong></p>
   &nbsp;<p style="text-align:center" class="auto-style11">
    </p>  
    
        <strong><em>
    <center>
      
        <asp:TextBox ID="TextBox1" runat="server" Height="135px" Width="605px" BorderColor="Lime" BorderStyle="Double" CssClass="auto-style10" TextMode="MultiLine"></asp:TextBox>
        </center>
  



  


    </em></strong>
    <center>
    <asp:ImageButton ID="ImageButton2" runat="server" Height="76px" ImageUrl="~/Button image/images (2).jpg" OnClick="ImageButton2_Click" Width="184px"/>
    </center><br />
    <br />
    <br />

  


    <br />

  


</asp:Content>
