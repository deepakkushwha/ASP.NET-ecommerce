<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="deep.adminlogin" %>
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

      </style>
    <div class="im" style="height:630px" width="100px"  ><div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px"  src="img/adminuser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Admin Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Admin ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Admin ID"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="first.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
    </div>        
             <footer>
            <div id="footer1" class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <p>
                            <asp:LinkButton class="footerlinks" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" >Home</asp:LinkButton>
                            
                            
                        
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
