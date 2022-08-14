<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Author_page.aspx.cs" Inherits="My_web_1.Author_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
     <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                      

                         <%-- for text--%>
                         <div class="row">
                            <div class="col">
                              <center>
                           
                            <h4>Author Details</h4>
                                  
                             </center>
                                 </div>
                        </div>
                         <%-- for text--%>

                         <%-- for image--%>
                        <div class="row">
                            <div class="col">
                              <center>

                           <img width="60px" src="images/author.png" />
                       
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
                                   <label>Author ID</label>
                                 <div class="form-group">
                                     <div class="input-group">
                                     <asp:TextBox ID="txtAuthorlogin" runat="server" CssClass="form-control" placeholder=" Enter ID"></asp:TextBox>
                                      <asp:Button ID="btnGo" runat="server" Text="Go" CssClass="btn btn-secondary "/>
                                         </div>
                                 </div>
                                 </div>
                              <div class="col-md-7">
                                 <label>Author Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtAuthorName" runat="server" CssClass="form-control" placeholder=" Enter Author Name" ></asp:TextBox>
                                     
                                 </div>
                                 </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                <asp:Button ID="btnAuthorAdd" runat="server" Text="Add" CssClass="btn btn-success btn-block btn-lg"  />
                                    </div>
                            </div>
                             <div class="col-md-4">
                                  <div class="form-group">
                                <asp:Button ID="btnAuthorUpdate" runat="server" Text="Update" CssClass="btn btn-info btn-block btn-lg" />
                            </div>
                                  </div>
                             <div class="col-md-4">
                                  <div class="form-group">
                                <asp:Button ID="btnAuthorDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-block btn-lg" />
                            </div>
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
                           
                            <h4>Author List</h4>
                                 
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

<%--                       <div class="row">
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MY_WEBConnectionString %>" SelectCommand="SELECT * FROM [Author_table]"></asp:SqlDataSource>
                         
                              <div class="col">
                                  <div class="form-group">

                                 <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Author_ID" DataSourceID="SqlDataSource1">
                                     <Columns>
                                       <%--  <asp:BoundField DataField="Author_ID" HeaderText="Author_ID" ReadOnly="True" SortExpression="Author_ID" />
                                         <asp:BoundField DataField="Author_Name" HeaderText="Author_Name" SortExpression="Author_Name" />--%>
                                     </Columns>
                                    
                                    
                                  </asp:GridView>
                                 </div>
                                  </div>
                        </div>--%>
                    </div>
                     
                </div>
            </div>
        </div>
    </div>
</asp:Content>
