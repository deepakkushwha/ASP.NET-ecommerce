<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="deep.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        .cl { color:aqua;
        }
        .con {
            background-image: url(Content/images/hero_background_contact_us.jpg);
                 height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
       
        }
        .auto-style2 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
<div class="con" style="height:800px">
   <center>
       <div class="container">

 <div class="row">
        <div class="col-12 col-sm-4">
            <label class="cl">name</label>
            <asp:TextBox ID="cname" runat="server" CssClass="form-control"  > 
            </asp:TextBox>
        </div>
     </div>
       <div class="row">
         <div class="col-12 col-sm-4">
            <label class="cl">email</label>
            <asp:TextBox ID="eml" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
           </div>
       <div class="row">
        <div class="col-12 col-sm-4">
            <label class="cl">phone</label>
            <asp:TextBox ID="eph" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
           </div>
       
    
    <div class="row">
        <div class="col-12 ">
            <label class="cl">comment</label>
             <asp:TextBox ID="cmt" runat="server" CssClass="auto-style2" TextMode="MultiLine" Rows="4" Width="322px"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-sm-2">
            <asp:Button ID="btn" runat="server" Text="SUBMIT"  CssClass="btn btn-primary" OnClick="btn_Click"/>

        </div>
    </div>

      

</div>
       </center>
 
</asp:Content>
