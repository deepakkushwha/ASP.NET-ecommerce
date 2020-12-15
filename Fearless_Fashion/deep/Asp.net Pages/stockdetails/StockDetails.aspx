<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockDetails.aspx.cs" Inherits="deep.StockDetails" %>

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
    <div align="center" style="margin: 0 auto;">

        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CssClass="auto-style2" Style="width: 705px" BorderStyle="None" CellPadding="3" CellSpacing="2" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="Product_id" HeaderText="Product_id" ReadOnly="True" SortExpression="Product_id" />
                    <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                    <asp:BoundField DataField="soldout" HeaderText="soldout" SortExpression="soldout" />
                    <asp:BoundField DataField="available" HeaderText="available" SortExpression="available" />
                    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img"></asp:BoundField>
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString2 %>" SelectCommand="SELECT [Product_id], [Product_name], [Price], [Unit], [soldout], [available], [img] FROM [Product_details]"></asp:SqlDataSource>
        <br />
    </div>


    <footer>
        <div id="footer1" class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                    <p>
                        <asp:LinkButton class="footerlinks" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" >Usermanagment </asp:LinkButton>

                           &nbsp;

                           <asp:LinkButton class="footerlinks" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Order Report</asp:LinkButton>

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
