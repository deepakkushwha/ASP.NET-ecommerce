<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="deep.ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            text-decoration: underline;
            color: #FF6600;
            background-color: #FFFFFF;
        }



        .auto-style3 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }

        .auto-style6 {
            height: 55px;
            text-align: center;
            background-color: #FF9933;
        }

        .auto-style8 {
            color: #000000;
        }

        .auto-style14 {
            text-align: center;
            color: #FF6600;
            background-color: #FFFFFF;
        }

        .auto-style16 {
            width: 627px;
            height: 43px;
            text-align: left;
            color: #000000;
        }

        .auto-style19 {
            height: 137px;
            text-align: left;
        }

        .auto-style20 {
            text-align: center;
            background-color: #FFFFFF;
            height: 82px;
        }

        .auto-style22 {
            height: 35px;
            color: #000000;
            text-align: left;
        }

        .auto-style23 {
            height: 48px;
            color: #000000;
            text-align: left;
        }

        .auto-style25 {
            width: 255px;
            height: 43px;
            text-align: left;
            color: #000000;
        }

        .auto-style26 {
            text-align: left;
            color: #FF6600;
            background-color: #FFFFFF;
        }

        .auto-style27 {
            text-align: left;
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <p class="auto-style2">
            <strong>&nbsp; Welcome To Our On-Line Shopping Website</strong>
        </p>
        <p class="auto-style14">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" border-collapse="none" Width="100%" OnItemDataBound="DataList1_ItemDataBound">
                <ItemTemplate>
                    <table class="auto-style3" border="2">
                        <tr>
                            <td class="auto-style6" colspan="3">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Underline="False" Text='<%# Eval("Product_name") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td rowspan="4">
                                <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("img") %>' Width="379px" />
                            </td>
                            <td class="auto-style23" colspan="2"><strong>Product_ID:-</strong><asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_id") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22" colspan="2"><strong>Price:-</strong><asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style25">Quntity
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style16">
                                <div class="text-left">
                                    Size
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="1" CellSpacing="2" RepeatDirection="Horizontal" TextAlign="Left">
                                        <asp:ListItem>M</asp:ListItem>
                                        <asp:ListItem>L</asp:ListItem>
                                        <asp:ListItem>XL</asp:ListItem>
                                    </asp:RadioButtonList>
                           


                                    </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26" colspan="2"><strong>Category:</strong> -<asp:Label ID="Label5" runat="server" Text='<%# Eval("Fastival") %>' CssClass="auto-style8"></asp:Label>
                                <span class="auto-style8" style="margin-left: 40%">
                                    <strong>Available Stock=<asp:Label ID="Label7" runat="server" Text='<%# Eval("available") %>'></asp:Label>
                                    </strong></span>
                            </td>

                            <td class="auto-style27">&nbsp;</td>

                        </tr>
                        <tr>
                            <td class="auto-style19" colspan="3"><strong><span class="bg-white">Description:-</span></strong><asp:Label ID="Label6" runat="server" CssClass="auto-style8" Font-Underline="False" Style="" Text='<%# Eval("Description") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="auto-style20">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="76px" ImageUrl="~/img/Addtocart.jpg" Width="192px" CommandName="addtocart" CommandArgument='<%# Eval("Product_id") %>' OnClick="ImageButton1_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </p>
    </div>
    <p class="auto-style2">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString2 %>" SelectCommand="SELECT * FROM [Product_details] WHERE ([Product_id] = @Product_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Product_id" QueryStringField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style2">
        &nbsp;</p>
        



</asp:Content>
