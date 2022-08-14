<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_page.aspx.cs" Inherits="My_web_1.Admin_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <%--  anchor tag for home page--%>
                        <div class="row">
                            <div class="col">
                              <center>
                           
                        <img width="80px" src="images/admin.png" />
                             </center>
                                 </div>
                        </div>
                         <%-- for image--%>

                         <%-- for text--%>
                         <div class="row">
                            <div class="col">
                              <center>
                           
                            <h3> Admin Login</h3>
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
                                  <label>Admin ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtAdmlogin" runat="server" CssClass="form-control" placeholder=" Enter Admin ID"></asp:TextBox>
                                 </div>
                                   <label>Password </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtAdmPassword" runat="server" CssClass="form-control" placeholder=" Enter Password" TextMode="Password"></asp:TextBox>
                                 </div>

                                   <div class="form-group">
                                       <asp:Button ID="btnLogin" runat="server" Text="Login"  CssClass="btn btn-success btn-block btn-lg" OnClick="btnLogin_Click" />
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
