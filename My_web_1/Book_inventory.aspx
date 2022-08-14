<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Book_inventory.aspx.cs" Inherits="My_web_1.Book_inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });


         function readURL(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();
                 reader.onload = function (e) {
                     $('#imgview').attr('src', e.target.result);
                 };
                 reader.readAsDataURL(input.files[0]);
             }
         }

 </script>

 


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">


                        <%-- for text--%>
                        <div class="row">
                            <div class="col">
                                <center>
                           
                            <h4>Book Details</h4>
                             </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                           
                        <img id="imgview" width="100px" height="150px" src="book_inventoryimages/book.png" />
                             </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this);" ID="FileUpload1" runat="server" CssClass="form-control"/>
                            </div>
                        </div>



                        <%-- for textbox,label & button--%>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtMemberid" runat="server" CssClass="form-control mr-1" placeholder=" ID"></asp:TextBox>
                                        <asp:LinkButton ID="lbGo" runat="server" CssClass="btn btn-primary " OnClick="lbGo_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtBookname" runat="server" CssClass="form-control" placeholder=" Full Name"></asp:TextBox>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlLanguage" runat="server" CssClass="form-control">
                                        <asp:ListItem>English</asp:ListItem>
                                        <asp:ListItem>Hindi</asp:ListItem>
                                        <asp:ListItem>Marathi</asp:ListItem>
                                        <asp:ListItem>french</asp:ListItem>
                                        <asp:ListItem>German</asp:ListItem>
                                        <asp:ListItem>Urdu</asp:ListItem>
                                    </asp:DropDownList>
                                    </div>

                                 <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlPublishername" runat="server" CssClass="form-control">
                                        <asp:ListItem>Publisher1</asp:ListItem>
                                        <asp:ListItem>Publisher2</asp:ListItem>
                                       
                                    </asp:DropDownList>
                                </div>
                            </div>

                           <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlAuthorname" runat="server" CssClass="form-control">
                                        <asp:ListItem>A1</asp:ListItem>
                                        <asp:ListItem>A2</asp:ListItem>
                                        
                                    </asp:DropDownList>
                                </div>

                                 <label>Publisher Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPubdate" runat="server" CssClass="form-control" placeholder="Date" TextMode="Date"></asp:TextBox>
                                
                                       
                                    
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Genre </label>
                                <div class="form-group">
                                    <asp:ListBox ID="lstbxGenre" runat="server" SelectionMode="Multiple" CssClass="form-control" Rows="5">
                                        <asp:ListItem>Action</asp:ListItem>
                                        <asp:ListItem>Adventure</asp:ListItem>
                                        <asp:ListItem>Comic</asp:ListItem>
                                        <asp:ListItem>Self Help</asp:ListItem>
                                        <asp:ListItem>Motivation</asp:ListItem>
                                        <asp:ListItem>Wellness</asp:ListItem>
                                        <asp:ListItem>Crime</asp:ListItem>
                                        <asp:ListItem>Drama</asp:ListItem>
                                        <asp:ListItem>Fantasy</asp:ListItem>
                                        <asp:ListItem>Horror</asp:ListItem>
                                        <asp:ListItem>Poetry</asp:ListItem>
                                        <asp:ListItem>Personal Development</asp:ListItem>
                                        <asp:ListItem>Science Fiction</asp:ListItem>
                                        <asp:ListItem>Thriller</asp:ListItem>
                                        <asp:ListItem>Art</asp:ListItem>
                                        <asp:ListItem>Autobiography</asp:ListItem>
                                        <asp:ListItem>Health</asp:ListItem>
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtedition" runat="server"  placeholder="Edition" CssClass="form-control" ></asp:TextBox>
                                
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book cost(per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtBookcost" runat="server" CssClass="form-control" placeholder="Book cost(per unit)"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPages" runat="server" CssClass="form-control" placeholder="Pages"></asp:TextBox>
                                </div>
                            </div>
                        </div>




                         <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtActualcost" runat="server"  placeholder="Actual Stock" CssClass="form-control" ></asp:TextBox>
                                
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtCurrentstock" runat="server" CssClass="form-control" ReadOnly="true"  placeholder="Current Stock"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtIssuedbook" runat="server" CssClass="form-control" ReadOnly="true" placeholder="Issued Books"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtBookdescription" runat="server" CssClass="form-control" placeholder="Book description" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-4">

                              

                                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success btn-block btn-lg" OnClick="btnAdd_Click" />

                            
                            </div>

                            <div class="col-4">

                               

                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-info btn-block btn-lg" OnClick="btnUpdate_Click"  />

                               
                            </div>

                            <div class="col-4">

                             

                                    <asp:Button ID="btnDelete" runat="server" Text="Delete " CssClass="btn btn-danger btn-block btn-lg" OnClick="btnDelete_Click" />

                                
                            </div>
                        </div>


                        
                        <%-- for textbox,label & button--%>
                    </div>

                </div>
                <%--  anchor tag for home page--%>
                <a href="AfterAdminlogin.aspx">-->>Back</a><br />
            </div>

             <div class="col-md-6">
        <div class="card">
            <div class="card-body">


                <%-- for text--%>
                <div class="row">
                    <div class="col">
                        <center>
                           
                            <h4>Book Inventory List</h4>
                                 
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MY_WEBConnectionString %>" SelectCommand="SELECT * FROM [Books_table]"></asp:SqlDataSource>
                    <div class="col">
                   
                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1" >
                        <Columns>
                            <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" ReadOnly="True" SortExpression="Book_ID" />
                           <asp:TemplateField>
                               <ItemTemplate>
                                   <div class="container-fluid">
                                       <div class="row">
                                           <div class="col-lg-10">
                                               <div class="row">
                                                   <div class="col-12">
                                                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("Book_Name") %>' Font-Size="X-Large" Font-Bold="True"></asp:Label>
                                                   </div>
                                               </div>
                                               <div class="row">
                                                   <div class="col-12">

                                                       Author -&nbsp;
                                                       <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("Author_name") %>'></asp:Label>
                                                       &nbsp;| Genre -
                                                       <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("Genre") %>'></asp:Label>
                                                       &nbsp;| Language -
                                                       <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("Language") %>'></asp:Label>

                                                   </div>
                                               </div>
                                               <div class="row">
                                                   <div class="col-12">

                                                       Publisher -
                                                       <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("Publisher_name") %>'></asp:Label>
                                                       &nbsp;| Publish Date -
                                                       <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("Publish_date") %>'></asp:Label>
                                                       &nbsp;| Pages -
                                                       <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("No_ofpages") %>'></asp:Label>
                                                       &nbsp;| Edition -
                                                       <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("Edition") %>'></asp:Label>
                                                       &nbsp;</div>
                                               </div>
                                               <div class="row">
                                                   <div class="col-12">

                                                       Cost -
                                                       <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Book_cost") %>'></asp:Label>
                                                       &nbsp;| Actual Stock -
                                                       <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("Actual_stock") %>'></asp:Label>
                                                       &nbsp;| Available -
                                                       <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("Current_stock") %>'></asp:Label>

                                                   </div>
                                               </div>
                                               <div class="row">
                                                   <div class="col-12">

                                                       Book Description -
                                                       <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Text='<%# Eval("Book_description") %>'></asp:Label>

                                                   </div>
                                               </div>

                                           </div>
                                           <div class="col-lg-2">
                                               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>'  CssClass="img-fluid"/>
                                           </div>
                                       </div>
                                   </div>
                               </ItemTemplate>
                           </asp:TemplateField>
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
