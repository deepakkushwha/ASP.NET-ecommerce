<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="order details.aspx.cs" Inherits="deep.order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .footerlinks {
            color: #ffffff;
            text-decoration: none !important;
        }

            .footerlinks:hover {
                color: #ffd800;
            }

        #footer1 {
            background: #762b00;
        }

        #footer2 {
            background: #531f00;
        }

        .footerlinks {
            color: #ffffff;
            text-decoration: none !important;
        }

            .footerlinks:hover {
                color: #ffd800;
            }

        #footer1 {
            background: #762b00;
        }

        #footer2 {
            background: #531f00;
        }

        .last {
            color: darkorange;
        }
    </style>
    <div class="container">

        <div class="card-body">
            <div class="card">
                <div class="row">

                    <div class="col-md-10" style="margin: 2%">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                                <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                                <asp:BoundField DataField="Product_id" HeaderText="Product_id" SortExpression="Product_id" />
                                <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="dateoforder" HeaderText="dateoforder" SortExpression="dateoforder" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="mobilenumber" HeaderText="mobilenumber" SortExpression="mobilenumber" />
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString3 %>" SelectCommand="SELECT * FROM [orderdetail]"></asp:SqlDataSource>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div id="footer1" class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                    <p>
                        <asp:LinkButton class="footerlinks" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" >User_Managment</asp:LinkButton>

                          &nbsp;

                          <asp:LinkButton class="footerlinks" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Stock_details</asp:LinkButton>

                    </p>

                </div>

            </div>
        </div>
        <div id="footer2" class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                    <p style="color: whitesmoke">&copy All right Reversed. <a class="footerlinks" href="#" target="_blank">Unique Tranding Fashions</a></p>
                </div>
            </div>
        </div>

    </footer>
</asp:Content>
