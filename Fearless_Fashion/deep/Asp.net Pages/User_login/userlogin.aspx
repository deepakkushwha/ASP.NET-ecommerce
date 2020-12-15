<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="deep.userlogin"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        
        .im {
            background-image: url(Content/images/Lightbulb_Moment.jpg);
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
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

    .auto-style2 {
        position: relative;
        width: 100%;
        -ms-flex-preferred-size: 0;
        flex-basis: 0;
        -ms-flex-positive: 1;
        flex-grow: 1;
        max-width: 100%;
        left: 20px;
        top: 0px;
        padding-left: 15px;
        padding-right: 15px;
    }

    </style>

  <div class="im" style="height:100%">
     <center>
         <div class="container" >
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="img/generaluser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>User Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="auto-style2">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="!User ID cannot be Empty" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                            &nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Id Not Correct" ForeColor="Red" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                            </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="User ID cannot be Empty" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                 
                            </div>
                        <div class="form-group">

                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"     />
                        </div>
                        <div class="form-group">
                           <a href="singup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="last" href="first.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
          </div>
         </center>

  </div>
            <footer>
            <div id="footer1" class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <p>
                            <asp:LinkButton class="footerlinks" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" >Admin_Login</asp:LinkButton>
                           
                        
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
