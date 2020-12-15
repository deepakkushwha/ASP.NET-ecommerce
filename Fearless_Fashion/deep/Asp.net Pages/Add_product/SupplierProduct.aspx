<%@ Page Title="Product" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SupplierProduct.aspx.cs" Inherits="deep.SupplierProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <style>
        .im {
            background-image: url(img/alone-boy-city-lights-1575.jpg);
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .img-fluid {
            max-width: 200px;
            max-height: 200px;
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

        .color {
            background-color: black;
        }
    </style>
    <div class="color">
        <
      <div class="container-fluid">
          <div class="row">
              <div class="col-md-5">
                  <div class="card">
                      <div class="card-body">
                          <div class="row">
                              <div class="col">
                                  <center>
                           <h4>Product Details</h4>
                        </center>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col">
                                  <center>
                           <img id="imgview" width="100px" height="150px"  src="UTF_image/blueshoes.jpg" />
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
                                  <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />

                              </div>
                          </div>
                          <div class="row">
                              <div class="col-md-3">
                                  <label>Product ID</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Produuct ID"></asp:TextBox>

                                          <asp:Button CssClass="btn  btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                      </div>
                                  </div>
                              </div>
                              <div class="col-md-9">
                                  <label>Product Name</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Product Name"></asp:TextBox>

                                  </div>
                              </div>

                          </div>
                          <div class="row">
                              <div class="col-md-3">
                                  <label>Fastival</label>
                                  <div class="form-group">
                                      <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                          <asp:ListItem Text="Top wear" Value="Top wear" />
                                          <asp:ListItem Text="Festival wear" Value="Festival wear" />
                                          <asp:ListItem Text="Bottom Wear" Value="Bottom Wear" />
                                          <asp:ListItem Text="Foot Wear" Value="Foot wear" />
                                          <asp:ListItem Text="Watches" Value="Watches" />
                                      </asp:DropDownList>
                                  </div>

                              </div>
                              <div class="col-md-3">
                                  <label>Price</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Price"></asp:TextBox>

                                  </div>
                              </div>
                              <div class="col-md-3">
                                  <label>Stock_unit</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Unit"></asp:TextBox>

                                  </div>
                              </div>
                              <div class="col-md-3">
                                  <label>Avalible</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Unit"></asp:TextBox>

                                  </div>
                              </div>

                          </div>



                          <div class="row">

                              <div class="col-md-12">
                                  <label>Description</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Description" TextMode="MultiLine" Style="height: 100px"></asp:TextBox>

                                  </div>
                              </div>

                          </div>

                          <div class="row">
                              <div class="col">
                                  <center>
                           <span class="badge badge-pill badge-info">Expert Advice</span>
                        </center>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-md-3">
                                  <label>Fastival</label>
                                  <div class="form-group">
                                      <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                          <asp:ListItem Text="Diamond Face" Value="Diamond Face" />
                                          <asp:ListItem Text="Heart Face" Value="Heart Face" />
                                          <asp:ListItem Text="Oblong face" Value="Oblong face" />
                                          <asp:ListItem Text="Oval Face" Value="Oval Face" />
                                          <asp:ListItem Text="Round face" Value="Round face" />
                                          <asp:ListItem Text="Square face" Value="Square face" />
                                      </asp:DropDownList>
                                  </div>

                              </div>
                          </div>

                          <div class="row">
                              <div class="col-4">
                                  <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                              </div>
                              <div class="col-4">
                                  <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click1" />
                              </div>
                              <div class="col-4">
                                  <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                              </div>
                          </div>
                      </div>
                  </div>
                  <a href="first.aspx"><< Back to Home</a><br>
                  <br>
              </div>
              <div class="col-md-7">
                  <div class="card">
                      <div class="card-body">
                          <div class="row">
                              <div class="col">
                                  <center>
                           <h4>Product List</h4>
                        </center>
                              </div>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTFConnectionString4 %>" SelectCommand="SELECT * FROM [Product_details] "></asp:SqlDataSource>
                          </div>
                          <div class="row">
                              <div class="col">
                                  <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5">
                                      <Columns>
                                          <asp:BoundField DataField="Product_id" HeaderText="Product_id" ReadOnly="True" SortExpression="Product_id" />


                                          <asp:TemplateField>
                                              <ItemTemplate>
                                                  <div class="container-fluid">
                                                      <div class="row">
                                                          <div class="col-lg-8">
                                                              <div class="row">
                                                                  <div class="col-12">
                                                                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_name") %>' Font-Size="X-Large" Font-Bold="True"></asp:Label>
                                                                  </div>
                                                              </div>
                                                              <div class="row">
                                                                  <div class="col-12">

                                                                      <%--<label>
                                                           Festival-<asp:Label ID="Label2" runat="server" Text='<%# Eval("Fastival") %>' Font-Bold="True"></asp:Label>
                                                           </label>--%>
                                                                  </div>
                                                              </div>
                                                              <div class="row">
                                                                  <div class="col-12">

                                                                      <label>
                                                                          Price-<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>' Font-Bold="True"></asp:Label>
                                                                      </label>

                                                                  </div>
                                                              </div>
                                                              <div class="row">
                                                                  <div class="col-12">

                                                                      <label>
                                                                          Unit-<asp:Label ID="Label4" runat="server" Text='<%# Eval("Unit") %>' Font-Bold="True"></asp:Label>
                                                                      </label>

                                                                  </div>
                                                              </div>
                                                              <div class="row">
                                                                  <div class="col-12">

                                                                      <label>
                                                                          Description-<asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                                                      </label>

                                                                  </div>
                                                              </div>

                                                          </div>
                                                          <div class="col-lg-4">
                                                              <asp:Image ID="Image1" CssClass="img-fluid" runat="server" ImageUrl='<%# Eval("img") %>' />

                                                          </div>
                                                      </div>
                                                  </div>

                                              </ItemTemplate>
                                          </asp:TemplateField>
                                      </Columns>
                                  </asp:GridView>
                                  <hr>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col">
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
        /div>     
        <footer>
            <div id="footer1" class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <p>
                            <asp:LinkButton class="footerlinks" ID="LinkButton1" runat="server" href="order details.aspx">Order Details</asp:LinkButton>
                            &nbsp;       
                            <asp:LinkButton class="footerlinks" ID="LinkButton6" runat="server" href="usermanagment.aspx">User_Managment</asp:LinkButton>

                            &nbsp;
                          <asp:LinkButton class="footerlinks" ID="LinkButton2" runat="server" href="StockDetails.aspx">Stock_details</asp:LinkButton>

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
            div

        </footer>
</asp:Content>
