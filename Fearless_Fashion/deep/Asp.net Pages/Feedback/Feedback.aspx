<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="deep.Feedback" %>

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

        .auto-style2 {
            text-align: center;
            text-decoration: underline;
            color: #000000;
            background-color: #FF6600;
        }

        .auto-style3 {
            text-decoration: underline;
        }
    </style>
    <div class="container">

        <div class="card-body">
            <div class="card">
                <div class="row">

                    <div class="col-md-10" style="margin: 2%">

                        <h4 class="auto-style2"><strong><em>FeedBack List</em></strong></h4>



                        <div class="text-center">



                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Vertical">
                                <ItemTemplate>
                                    <table border="0" class="w-100" style="margin-left: 2%">
                                        <tr>
                                            <td class="text-left">
                                                <br />
                                                <span class="auto-style3"><strong>Your Feedback</strong></span><strong>:-</strong><asp:Label ID="Label1" runat="server" Text='<%# Eval("feedback") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">
                                                <strong><span class="auto-style3">Name</span>:-</strong><asp:Label ID="Label2" runat="server" Font-Bold="False" Text='<%# Eval("name") %>'></asp:Label>
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="text-center">&nbsp;</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>


                        </div>


                        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString3 %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>

        <div id="footer2">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                    <p style="color: whitesmoke">&copy All right Reversed. <a class="footerlinks" href="#" target="_blank">Unique Tranding Fashions</a></p>
                </div>
            </div>
        </div>

    </footer>

</asp:Content>
