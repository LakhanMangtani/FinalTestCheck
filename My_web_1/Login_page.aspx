<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="My_web_1.Login_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br />

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                       <%-- for image--%>
                        <div class="row">
                            <div class="col">
                              <center>
                           
                        <img width="80px" src="images/students.png" />
                             </center>
                                 </div>
                        </div>
                         <%-- for image--%>

                         <%-- for text--%>
                         <div class="row">
                            <div class="col">
                              <center>
                           
                            <h3> Student Login</h3>
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
                              <div class="col">
                                  <label>Student ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtstulogin" runat="server" CssClass="form-control" placeholder=" Enter Student ID"></asp:TextBox>
                                 </div>
                                   <label>Password </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtStuPassword" runat="server" CssClass="form-control" placeholder=" Enter Password" TextMode="Password"></asp:TextBox>
                                 </div>

                                   <div class="form-group">
                                       <asp:Button ID="btnLogin" runat="server" Text="Login"  CssClass="btn btn-success btn-block btn-lg" OnClick="btnLogin_Click" />
                                 </div>
                                    <div class="form-group">
                                       
                                       <asp:Button ID="btnSignup" runat="server" Text="SignUp" CssClass="btn btn-info btn-block btn-lg" OnClick="btnSignup_Click" />
                                           
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
