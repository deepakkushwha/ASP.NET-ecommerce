<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="deep.AddtoCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div align="center" style="margin: 0 auto;">

        <div class="text-left">
            You Have Product
            <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
            &nbsp;in Your Cart
            <asp:HyperLink ID="HyperLink1" runat="server" Style="margin-left: 60%" NavigateUrl="~/Gallery.aspx">Countinue Shopping</asp:HyperLink>
            <br />
        </div>
        <div align="right" style="margin: 0 auto;">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        <br />
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
        <br />
         <asp:Button ID="Button1" runat="server" Text="Buy" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" BorderWidth="5px" Font-Bold="True" Font-Italic="False" Font-Size="Large" Height="46px" Width="135px" OnClick="Button1_Click" />
       
        <br />
        <br />
        <br />

    </div>

</asp:Content>
