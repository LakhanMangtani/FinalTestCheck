<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AfterLogin.aspx.cs" Inherits="My_web_1.AfterLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });


 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
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
                           
                            <h4> Your Profile</h4>
                                  <span >Account Status - </span>
                                     <asp:Label ID="Label1" runat="server" Text="Your Status" CssClass="badge-pill badge-info"></asp:Label>
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
                                     <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control" placeholder=" Enter full Name"></asp:TextBox>
                                 </div>
                                 </div>
                              <div class="col-md-6">
                                 <label>DOB </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" placeholder=" Enter Date Of Birth" TextMode="Date"></asp:TextBox>
                                 </div>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col-md-6">
                                   <label>Contact Number</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" placeholder=" Enter Contact Number"></asp:TextBox>
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
                                     <asp:TextBox ID="txtAddresss" runat="server" CssClass="form-control" placeholder=" Enter Full Address" ></asp:TextBox>
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
                              <div class="col-md-4">
                                   <label>Student ID</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtstuid" runat="server" CssClass="form-control" placeholder=" Enter Student ID" ReadOnly="True"></asp:TextBox>
                                 </div>
                                 </div>
                              <div class="col-md-4">
                                 <label> Old Password </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtOldpassword" runat="server" CssClass="form-control" placeholder=" Enter Password"  ReadOnly="True"></asp:TextBox>
                                 </div>
                                 </div>
                              <div class="col-md-4">
                                 <label> New Password </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtNewpassword" runat="server" CssClass="form-control" placeholder=" Enter Password" ></asp:TextBox>
                                 </div>
                                 </div>
                        </div>

                          <div class="row">
                              <div class="col-8 mx-auto">
                                
                                    <div class="form-group">
                                       
                                       <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnUpdate_Click" />
                                           
                                 </div>
                                  
                                 </div>
                        </div>
                          <%-- for textbox,label & button--%>
                    </div>
                     
                </div>
              <%--  anchor tag for home page--%>
                <a href="Home.aspx">-->>Back to Home</a><br />
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                       <%-- for image--%>
                        <div class="row">
                            <div class="col">
                              <center>
                           
                        <img width="60px" src="images/bookissue.png" />
                             </center>
                                 </div>
                        </div>
                         <%-- for image--%>

                         <%-- for text--%>
                         <div class="row">
                            <div class="col">
                              <center>
                           
                            <h4> Your Issued Books</h4>
                                  <span >Account Status - </span>
                                     <asp:Label ID="Label2" runat="server" Text="Your Academic Info" CssClass="badge-pill badge-info"></asp:Label>
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

                       <div class="row">
                              <div class="col">
                                  <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" ></asp:GridView>
                                 </div>
                        </div>
                    </div>
                     
                </div>
            </div>
        </div>
    </div>
</asp:Content>
