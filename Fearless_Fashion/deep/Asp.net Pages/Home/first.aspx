<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="first.aspx.cs" Inherits="deep.first" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .bgimg {
            background-image: url(img/firstprofile.jpg);
            background-size: 100% 100%;
            background-attachment: fixed;
            width: 100%;
            height: 660px;
        }

        .headerset {
            padding-top: 200px;
            box-sizing: border-box;
        }

            .headerset h1 {
                font-size: 38px;
                font-family: 'Open Sans', sans-serif;
                font-style: oblique;
            }

            .headerset h2 {
                font-size: 62px;
                font-family: 'Montserrat', sans-serif;
                font-weight: 700px;
                margin: 14px 0px;
                font-style: italic;
            }

            .headerset h3 {
                font-size: 20px;
                font-family: 'Open Sans', sans-serif;
                font-style: oblique;
            }

        /*..................................OURSERVICES........................................*/

        .ourservices {
            padding: 100px 0px 60px;
            height: 700px;
        }

        .rowsetting {
            margin: 80px 0px !important;
        }

        .ourservices h1 {
            font-size: 50px;
            font-weight: bold;
        }

        .rowsetting {
            margin: 80px 0px !important;
        }

        .imgsetting {
            border-radius: 50%;
            height: 100px;
            width: 100px;
        }

        .fa-shopping-cart {
            margin-top: 20px;
        }

        .fa-desktop {
            margin-top: 26px;
        }

        .fa-lock {
            margin-top: 25px;
        }

        .rowsetting p {
            color: #6c757d !important;
            padding: 10px;
        }

        .rowsetting h2 {
            margin-top: 20px;
            font-weight: bold;
            font-size: 30px;
        }
        /*.....................................................................Expert Advice............................................*/

        .expertadvice {
            height: 1200px;
            width: 100%;
            padding: 100px 0px 50px;
        }

            .expertadvice h1 {
                font-size: 50px;
                font-weight: bold;
            }

        .card {
            margin-top: 40px;
        }

        /*.....................................................................ourteam....................................*/

        .ourteam {
            height: 700px;
            padding: 100px 0px 60px;
            width: 100%;
        }

            .ourteam h1 {
                font-size: 40px;
                font-weight: bold;
                font-style: oblique;
            }

        .teamsetting {
            margin-top: 50px !important;
        }

        .footer {
            height: 50px;
        }

            .footer h6 {
                line-height: 50px;
            }
        /*...........................................Responsive........................................*/

        @media(min-width:992px) {
        }

        @media(min-width:768px) and (max-width:991px) {
        }

        @media(min-width:575px) and (max-width:767px) {
        }

        @media(min-width:460px) and (max-width:574px) {
        }

        @media(max-width:495px) {
            .headerset h1 {
                font-size: 22px;
                font-family: 'Open Sans', sans-serif;
                font-style: oblique;
            }

            .headerset h2 {
                font-size: 45px;
                font-family: 'Montserrat', sans-serif;
                font-weight: 700px;
                margin: 14px 0px;
                font-style: italic;
            }

            .headerset h3 {
                font-size: 10px;
                font-family: 'Open Sans', sans-serif;
                font-style: oblique;
            }

            .ourservices {
                padding: 100px 0px 60px;
                height: 1400px;
            }

            .expertadvice {
                height: 3300px;
            }

            .ourteam {
                height: 1400px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ----------------------------------------Custom CSS-------------------------------------------------------------->
    <link rel="stylesheet" type="text/css" href="style.css" />


    <!-----------------------------------------Animated Css------------------------------------------------------------->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" />


    <!------------------------------------------Font-Awsome CSs--------------------------------------------------------->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />


    <!-------------------------------------------------FIRST INTRO---------------------------------------------------------->
    <div class="bgimg">
        <div class="container text-center text-white headerset">

            <h1>Welcome  To  India </h1>
            <h2>DO COME & BUY <span class="change_contant"></span></h2>
            <h3>"India once is not enough" </h3>
            <button id="buttonone">LEARN MORE </button>
            <button id="buttontwo">SINGUP HERE </button>
        </div>
    </div>


    <!----------------------------------------------SERVICES-------------------------------------------------------------->
    <section class="container ourservices text-center">
        <h1>SERVICES</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        <div class="row rowsetting">
            <div class="col-lg-4 -md-4 col-sm-4 col-10 d-block m-auto">
                <div class="imgsetting d-block m-auto bg-warning">
                    <i class="fa fa-shopping-cart fa-3x text-white"></i>
                </div>
                <h2>E-Commerce</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit 
                Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit 
                Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                </p>
            </div>


            <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
                <div class="imgsetting d-block m-auto bg-warning ">
                    <i class="fa fa-desktop  fa-3x text-white"></i>
                </div>
                <h2>Desktop & Phone </h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit 
                Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit 
                Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                </p>
            </div>



            <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
                <div class="imgsetting d-block m-auto bg-warning">
                    <i class="fa fa-lock fa-3x text-white "></i>
                </div>
                <h2>Web-Security</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit 
                Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit 
                Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                </p>
            </div>



        </div>
    </section>


    <!---------------------------------------------PORTFOLIO --------------------------------------------------------------->
    <section class="expertadvice bg-light text-center">
        <div class="container">
            <h1>PORTFOLIO </h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
                    <div class="card">
                        <img src="Gallery_img/Product_image/casual jacket.jpg" class="card-img img-fluid" />
                        <div class="card-body">
                            <h2 class="card-title">Square-face</h2>
                            <p class="card-text">Select if you are</p>

                        </div>
                    </div>
                </div>


                <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
                    <div class="card">
                        <img src="Gallery_img/Product_image/2 watches.jpg" class="card-img img-fluid" />
                        <div class="card-body">
                            <h2 class="card-title">Oval-face</h2>
                            <p class="card-text">Select if you are</p>

                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
                    <div class="card">
                        <img src="Gallery_img/Product_image/shopping(2).jpg" class="card-img img-fluid" />
                        <div class="card-body">
                            <h2 class="card-title">Round-face</h2>
                            <p class="card-text">Select if you are</p>
                        </div>
                    </div>
                </div>


            </div>


            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
                    <div class="card">
                        <img src="Gallery_img/Product_image/1582561709462.jpg" class="card-img img-fluid" />
                        <div class="card-body">
                            <h2 class="card-title">Oblong-face</h2>
                            <p class="card-text">Select if you are</p>
                        </div>
                    </div>
                </div>


                <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
                    <div class="card">
                        <img src="Gallery_img/Product_image/blueshoes.jpg" class="card-img img-fluid" />
                        <div class="card-body">
                            <h2 class="card-title">Heart-face</h2>
                            <p class="card-text">Select if you are</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
                    <div class="card">
                        <img src="Gallery_img/Product_image/black (2).jpg" class="card-img img-fluid" />
                        <div class="card-body">
                            <h2 class="card-title">Diamond-face</h2>
                            <p class="card-text">Select if you are</p>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>

    <!--..........................................OUR_TEAm..............................................-->
    <section class="ourteam ">
        <div class="container  text-center">
            <h1>OUR AMAZING TEAM</h1>
            <p>Lorem ipsum dolor sit amet consectetur.</p>
            <div class="row teamsetting">
                <div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
                    <figure class="figure">
                        <img src="img/Team_mamber/photo_2020-04-21_21-55-23.jpg" class="figure-img img-fluid rounded-circle" height="250px" width="250px" />
                        <figcaption>
                            <h1>Ravi Shanker</h1>
                            <p class="figure-caption">--Web Designer--</p>
                        </figcaption>
                    </figure>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
                    <figure class="figure">
                        <img src="img/Team_mamber/Spidey.jpg" class="figure-img img-fluid rounded-circle" height="250px" width="250px" />
                        <figcaption>
                            <h1>Deep Kushwaha</h1>
                            <p class="figure-caption">--Web Developer--</p>
                        </figcaption>
                    </figure>
                </div>


                <div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
                    <figure class="figure">
                        <img src="img/Team_mamber/Rakesh.jpg" class="figure-img img-fluid rounded-circle" height="250px" width="250px" />
                        <figcaption>
                            <h1>Rakesh Sharma</h1>
                            <p class="figure-caption">--Lead Designer--</p>
                        </figcaption>
                    </figure>
                </div>




            </div>
        </div>
    </section>
    <footer class="footer">

        <h6 class="text-center footer">Copyright @ 2020, Design by Deep Kushwaha</h6>

    </footer>
</asp:Content>
