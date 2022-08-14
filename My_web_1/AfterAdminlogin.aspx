<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AfterAdminlogin.aspx.cs" Inherits="My_web_1.AfterAdminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                  <h2 style="color:burlywood; font-family:'Times New Roman'">Welcome to Pathshala House</h2>
               

            </div>

        </div>
    </div>

     
   
  


    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="card" >
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                <img src="images/author.png" width="80px"/>
                                    </center>
                       
                            </div>
                        </div>
                         <div class="row">
                            <div class="col" style="font-family:'Times New Roman'">
                                <center>
                             <h3>Author-Manage</h3>
                                    </center>
                       
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                               
                             <hr />
                                   
                       
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <asp:LinkButton ID="lbAuthor" runat="server" CssClass="btn btn-info btn-block btn-lg" OnClick="lbAuthor_Click" >Click here</asp:LinkButton>
                       
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            </div>
         
             <div class="col-md-3">
                     <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                <img src="images/students.png" width="80px"/>
                                    </center>
                       
                            </div>
                        </div>
                         <div class="row">
                            <div class="col" style="font-family:'Times New Roman'">
                                <center>
                             <h3>User-Management</h3>
                                    </center>
                       
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                               
                             <hr />
                                   
                       
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <asp:LinkButton ID="lbUserManagement" runat="server" CssClass="btn btn-info btn-block btn-lg" OnClick="lbUserManagement_Click" >Click here</asp:LinkButton>
                       
                            </div>
                        </div>
                    </div>
                </div>
                 <br />
            </div>
         
             <div class="col-md-3">
                 <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                <img src="images/book.png"  width="80px"/>
                                    </center>
                       
                            </div>
                        </div>
                         <div class="row">
                            <div class="col" style="font-family:'Times New Roman'">
                                <center>
                             <h3>Book-Inventory</h3>
                                    </center>
                       
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                               
                             <hr />
                                   
                       
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <asp:LinkButton ID="lbBookInventory" runat="server" CssClass="btn btn-info btn-block btn-lg" OnClick="lbBookInventory_Click" >Click here</asp:LinkButton>
                       
                            </div>
                        </div>
                    </div>
                </div>
                 <br />
            </div>
          <div class="col-md-3">
                 <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                <img src="images/bookissue.png" width="80px"/>
                                    </center>
                       
                            </div>
                        </div>
                         <div class="row">
                            <div class="col" style="font-family:'Times New Roman'">
                                <center>
                             <h3>Book-Issuing</h3>
                                    </center>
                       
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                               
                             <hr />
                                   
                       
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <asp:LinkButton ID="lbBookIssuing" runat="server" CssClass="btn btn-info btn-block btn-lg" OnClick="lbBookIssuing_Click" >Click here</asp:LinkButton>
                       
                            </div>
                        </div>
                    </div>
                </div>
                 <br />
            </div>
        </div>
    </div>
  
</asp:Content>
