<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="deep.PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            margin-bottom: 16px;
        }

        .auto-style3 {
            text-align: right;
            width: 698px;
            height: 64px;
        }

        .auto-style4 {
            height: 64px;
            text-align: left;
        }

        .auto-style5 {
            height: 55px;
            text-align: left;
        }

        .auto-style6 {
            text-align: right;
            width: 698px;
            height: 55px;
        }

        .auto-style7 {
            text-decoration: underline;
        }

        .auto-style8 {
            color: #333300;
            background-color: #66FFFF;
        }

        .auto-style9 {
            color: #000000;
            background-color: #00FFCC;
        }

        .auto-style11 {
            width: 417px;
            text-align: right;
        }

        .auto-style12 {
            width: 417px;
            text-align: right;
            height: 166px;
        }

        .auto-style13 {
            height: 166px;
            text-align: left;
            width: 965px;
        }

        .auto-style14 {
            width: 100%;
            background-color: #FFFFFF;
        }

        .auto-style15 {
            text-align: left;
            width: 965px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center" style="margin: 0 auto;">

        <table class="w-100">
            <tr>
                <td class="auto-style6"><span class="auto-style7"><em><strong><span class="auto-style8">Order ID</span></strong></em></span>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><span class="auto-style7"><strong><em><span class="auto-style9">Order Date</span></em></strong></span>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

        <asp:GridView ID="GridView1" runat="server" Height="257px" BackColor="White" BorderColor="Black" BorderWidth="5px" ShowFooter="True" CssClass="auto-style2" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">

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
                <asp:ImageField DataImageUrlField="img" HeaderText="Product Image">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Size" HeaderText="Size">
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
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#00CC99" />
            <HeaderStyle Height="50px" BackColor="#FFFF66" BorderStyle="Double" />
        </asp:GridView>


        <br />
        <table class="auto-style14">
            <tr>
                <td class="auto-style12">Type Your Address:-</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="#996633" BorderStyle="Solid" Height="137px" TextMode="MultiLine" Width="609px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Phone No:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#996633" BorderStyle="Solid" Width="315px"></asp:TextBox>
                </td>
            </tr>
        </table>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Yellow" Text="Check Out" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
    </div>
</asp:Content>
