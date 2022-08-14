<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Book_issuing.aspx.cs" Inherits="My_web_1.Book_issuing" %>
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
                      

                         <%-- for text--%>
                         <div class="row">
                            <div class="col">
                              <center>
                           
                            <h4>Book Issuing</h4>
                                  
                             </center>
                                 </div>
                        </div>
                         <%-- for text--%>

                         <%-- for image--%>
                        <div class="row">
                            <div class="col">
                              <center>

                           <img width="80px" src="book_inventoryimages/book.png" />
                       
                             </center>
                                 </div>
                        </div>
                         <%-- for image--%>

                          <%-- for hr rule --%>
                            <div class="row">
                              <div class="col">
                                   <hr />
                                 </div>
                        </div>
                         <%-- for hr rule --%>

                       <%-- for textbox,label & button--%>

                         <div class="row">
                              <div class="col-md-5">
                                   <label>Member ID</label>
                                 <div class="form-group">
                                   
                                     <asp:TextBox ID="txtMemberid" runat="server" CssClass="form-control" placeholder=" Enter Member ID"></asp:TextBox>
                                      
                                         
                                 </div>
                                 </div>
                              <div class="col-md-7">
                                 <label>Book ID</label>
                                 <div class="form-group">
                                       <div class="input-group">
                                     <asp:TextBox ID="txtBookid" runat="server" CssClass="form-control" placeholder=" Enter Book ID" ></asp:TextBox>
                                      <asp:Button ID="btnGo" runat="server" Text="Go" CssClass="btn btn-secondary " OnClick="btnGo_Click"/>
                                           </div>
                                 </div>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col-md-6">
                                   <label>Member Name</label>
                                 <div class="form-group">
                                   
                                     <asp:TextBox ID="txtMembername" runat="server" CssClass="form-control" placeholder=" Enter Member Name" ReadOnly="True"></asp:TextBox>
                                      
                                         
                                 </div>
                                 </div>
                              <div class="col-md-6">
                                 <label>Book Name</label>
                                 <div class="form-group">
                                     
                                     <asp:TextBox ID="txtBookname" runat="server" CssClass="form-control" placeholder=" Enter Book Name" ReadOnly="True"></asp:TextBox>
                                     
                                          
                                 </div>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col-md-6">
                                   <label>Start Date</label>
                                 <div class="form-group">
                                   
                                     <asp:TextBox ID="txtStartdate" runat="server" CssClass="form-control" placeholder=" Enter Start Date" TextMode="Date"></asp:TextBox>
                                      
                                         
                                 </div>
                                 </div>
                              <div class="col-md-6">
                                 <label>End Date</label>
                                 <div class="form-group">
                                     
                                     <asp:TextBox ID="txtEnddate" runat="server" CssClass="form-control" placeholder=" Enter End Date" TextMode="Date" ></asp:TextBox>
                                     
                                          
                                 </div>
                                 </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <asp:Button ID="btnIssue" runat="server" Text="Issue" CssClass="btn btn-info btn-block btn-lg" OnClick="btnIssue_Click"  />
                            </div>
                             <div class="col-md-6">
                                <asp:Button ID="btnReturn" runat="server" Text="Return" CssClass="btn btn-success btn-block btn-lg" OnClick="btnReturn_Click"  />
                            </div>
                            
                        </div>
                         
                    </div>
                     
                </div>
              <%--  anchor tag for home page--%>
                <a href="AfterAdminlogin.aspx">-->>Back</a><br />
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                      

                         <%-- for text--%>
                         <div class="row">
                            <div class="col">
                              <center>
                           
                            <h4>Issued Book List</h4>
                                 
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
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MY_WEBConnectionString %>" SelectCommand="SELECT * FROM [Book_iisued_table]"></asp:SqlDataSource>
                         
                              <div class="col">

                                 <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                     <Columns>
                                         <asp:BoundField DataField="User_Id" HeaderText="User ID" SortExpression="User_Id" />
                                         <asp:BoundField DataField="User_name" HeaderText="User Name" SortExpression="User_name" />
                                         <asp:BoundField DataField="Book_Id" HeaderText="Book ID" SortExpression="Book_Id" />
                                         <asp:BoundField DataField="Book_name" HeaderText="Book Name" SortExpression="Book_name" />
                                         <asp:BoundField DataField="Start_date" HeaderText="Issued Date" SortExpression="Start_date" />
                                         <asp:BoundField DataField="End_date" HeaderText="Due Date" SortExpression="End_date" />
                                     </Columns>
                                    
                                    
                                    
                                  </asp:GridView>
                                 </div>
                        </div>
                    </div>
                     
                </div>
            </div>
        </div>
         </div>
</asp:Content>
