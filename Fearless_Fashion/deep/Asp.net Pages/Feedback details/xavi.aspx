
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="xavi.aspx.cs" Inherits="deep.xavi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <style>
   
  .bod{ 
       height:100vh;
       display:flex;
       justify-content:center;
       align-items:center;
   }
   .img-wrap{
       width:100%;
       
   }
    .header {
            justify-content: left;
            color: white;
        }
       .green {
            color: springgreen;
            text-decoration: underline;
            font-weight: bold;
        }
   .back {
            background-color: black;
        }

   .img-wrap img{
       padding:10px;
       border-radius:50%;
       box-shadow:0 0 10px #999999;
       width:100%;
   }
   #aboutus h2{margin-bottom:25px;

   }
   .col{
       text-decoration-color:white;
   }
   .body{
       background-color:black;
   }
    </style>
    
    <div class="bod">
    <section id="aboutus">
        <div class="container">
            <div class="row">
                <div class="col-sm-7">
                    <h2 class="text-center">About Us
                    </h2>
                    <p class="col">
                       Fearless Fashion is the Biggest  Online Shopping Mall started with a vision to take Indian & Global
        Consumers to next level of shopping,Our Mission & Vision is to provide best valued
        Products to our customers across Globe.We provide best shipping solution
        to our customer,enable our brand partners to reach the widest audience along with 7 Days
        Money Back Guarantee & 30 days Returns.

                    </p>
                    <p class="col">
                                 
The “ Fearless Fashion” has been developed to override the problems prevailing in the practicing manual system. This software supported to eliminate and in some cases reduce the hardships faced by this existing system. Moreover this system is designed for the particular need to the company to carry out operations in a smooth and effective manner.
This website provides customer to view the latest trends for clothing.
                   Fearless  Fashion is a fair price shop. It sells goods like festival,many occasions and party’s. 
                        New customer can register to the site and existing customers can sing-in     The purpose of the 
                       project is to build an application program to reduce the manual work for managing the 
                       Shopping, Product, Delivery, Internet.
                       It tracks all the details about the Internet,  Payment, Customer.
                    </p>
                </div>
                <div class="col-sm-5">
                    <div class="img-wrap">
                        <img src="img/Team_mamber/Spidey.jpg" />
                            </div>
                </div>
            </div>
        </div>
    </section>
        </div>


          <!--footer-->
    <div class="back">
        <div class="container-fluid" style="margin: 0%">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 ">
                            <h class="green">Fearless Fashion</h>
                            <p class="header">
                                This website provides customer to view the latest trends for clothing.
                   Fearless  Fashion is a fair price shop. It sells goods like festival,many occasions and party’s. 
                        New customer can register to the site and existing customers can sing-in     The purpose of the 
                       project is to build an application program to reduce the manual work for managing the 
                       Shopping, Product, Delivery, Internet.
                       It tracks all the details about the Internet,  Payment, Customer.
                            </p>

                        </div>
                        </div>
                </div>

                <div class="col-md-6">
                   <h class="green">Social_Media</h>
                            <p class="link"><a href="#">Facebook</a></p>
                            <p class="link"><a href="#">Youtube</a></p>
                            <p class="link"><a href="#">Linkedin</a></p>
                            <p class="link"><a href="#">Instagram</a></p>
                        </div>
            </div>
        </div>
    </div>
    <!--End footer-->
    
</asp:Content>
