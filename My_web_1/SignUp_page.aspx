<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp_page.aspx.cs" Inherits="My_web_1.SignUp_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <br />
<div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                       <%-- for image--%>
                        <div class="row">
                            <div class="col">
                              <center>
                           
                        <img width="60px" src="images/students.png" />
                             </center>
                                 </div>
                        </div>
                         <%-- for image--%>

                         <%-- for text--%>
                         <div class="row">
                            <div class="col">
                              <center>
                           
                            <h4> Student SignUp</h4>
                             </center>
                                 </div>
                        </div>
                         <%-- for text--%>

                          <%-- for hr rule --%>
                            <div class="row">
                              <div class="col">
                                   <hr />
                                 </div>
                        </div>
                         <%-- for hr rule --%>

                       <%-- for textbox,label & button--%>

                         <div class="row">
                              <div class="col-md-6">
                                   <label>Full Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder=" Enter full Name"></asp:TextBox>
                                 </div>
                                 </div>
                              <div class="col-md-6">
                                 <label>DOB </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtDob" runat="server" CssClass="form-control" placeholder=" Enter Date Of Birth" TextMode="Date"></asp:TextBox>
                                 </div>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col-md-6">
                                   <label>Contact Number</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control" placeholder=" Enter Contact Number"></asp:TextBox>
                                 </div>
                                 </div>
                              <div class="col-md-6">
                                 <label>Email ID </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control" placeholder=" Enter Email ID" TextMode="Email"></asp:TextBox>
                                 </div>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col-md-4">
                                   <label>State</label>
                                 <div class="form-group" >
                                     <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                                         <asp:ListItem>Select State</asp:ListItem>
                                         <asp:ListItem>AndhraPradesh</asp:ListItem>
                                         <asp:ListItem>Chandigarh</asp:ListItem>
                                         <asp:ListItem>Maharashtra</asp:ListItem>
                                         <asp:ListItem>Punjab</asp:ListItem>
                                         <asp:ListItem>Rajasthan</asp:ListItem>
                                         <asp:ListItem>Tamil Nadu</asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                                 </div>
                              <div class="col-md-4">
                                 <label>City </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder=" Enter City" ></asp:TextBox>
                                 </div>
                                 </div>
                             <div class="col-md-4">
                                 <label>Pincdode</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control" placeholder=" Enter Pincode" ></asp:TextBox>
                                 </div>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col">
                                  <label>Full Address</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtFullAddress" runat="server" CssClass="form-control" placeholder=" Enter Full Address" ></asp:TextBox>
                                 </div>
                                  </div>
                        </div>

                         <div class="row">
                              <div class="col">
                                  <center>
                                 <span class="badge-pill badge-info">Login Credentials..</span>
                                      </center>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col-md-6">
                                   <label>Student ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtStudentId" runat="server" CssClass="form-control" placeholder=" Enter Student ID"></asp:TextBox>
                                 </div>
                                 </div>
                              <div class="col-md-6">
                                 <label>Password </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtStupassword" runat="server" CssClass="form-control" placeholder=" Enter Password" ></asp:TextBox>
                                 </div>
                                 </div>
                        </div>

                          <div class="row">
                              <div class="col">
                                
                                    <div class="form-group">
                                       
                                       <asp:Button ID="btnSignup" runat="server" Text="SignUp" CssClass="btn btn-success btn-block btn-lg" OnClick="btnSignup_Click"/>
                                           
                                 </div>
                                 </div>
                        </div>
                          <%-- for textbox,label & button--%>
                    </div>
                     
                </div>
              <%--  anchor tag for home page--%>
                <a href="HomePage.aspx">-->>Back to Home</a><br />
            </div>
        </div>
    </div>
</asp:Content>
