<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usermanagment.aspx.cs" Inherits="deep.Sdetails" %>

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
.last{
    color:darkorange;
}

    </style>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col" style="margin-left:30%">
                                
                           <h4 >User managment</h4>
                       
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" style="margin-left:20%">
                                
                           <img id="imgview" width="100px" height="100px"  src="img/adminuser.png"  />
                   
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>
                      
                        <div class="row">
                          
                            <div class="col-md-12" style="margin:2%" >
                                <label>User_ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User_ID"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    <div class="row">
                          
                            
                         <div class="row">
                          
                            <div class="col-md-12" style="margin:2%" >
                                <div class="form-group">
                                     <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Remove" OnClick="Button2_Click"/>
                                </div>
                            </div>

                        </div>
                  


                    </div>
                </div>
           
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col" style="margin-left:40%">

                           <h4>User List</h4>
                       </div>
                            </div>
                            <div class="row" style="margin:2%">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="545px" DataKeyNames="Email">
                                <Columns>
                                    <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                    <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ReadOnly="True" />
                                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
                                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString3 %>" SelectCommand="SELECT * FROM [SIGNUP]"></asp:SqlDataSource>
                           
                            </div>
                        


                    </div>
                </div>
            </div>
        </div>   </div>    
      <footer>
            <div id="footer1" class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <p>
                            <asp:LinkButton class="footerlinks" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" >Stock Report</asp:LinkButton>
                           
                         &nbsp;&nbsp;
                           
                         <asp:LinkButton class="footerlinks" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Order Report</asp:LinkButton>
                           
                        </p>

                    </div>

                </div>
            </div>
            <div id="footer2" class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <p style="color:whitesmoke">&copy All right Reversed. <a class="footerlinks" href="#" target="_blank">Unique Tranding Fashions</a></p>
                    </div>
                </div>
            </div>

        </footer>
</asp:Content>
