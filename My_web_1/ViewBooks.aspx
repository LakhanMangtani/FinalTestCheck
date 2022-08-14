<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="My_web_1.ViewBooks" %>
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
            <div class="col">
                <center>
                 <h2 style="color:burlywood; font-family:'Times New Roman'">Welcome to Pathshala Books</h2>
                    </center>
                <div class="card">
            <div class="card-body">


                <%-- for text--%>
                


                <%-- for text--%>

                <%-- for hr rule --%>
              
                <%-- for hr rule --%>

                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MY_WEBConnectionString %>" SelectCommand="SELECT * FROM [Books_table]"></asp:SqlDataSource>
                    <div class="col">
                   
                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1" >
                        <Columns>
                            <asp:BoundField DataField="Book_ID" HeaderText="ID" ReadOnly="True" SortExpression="Book_ID" />
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

                                                       Cos -
                                                       <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Book_cost") %>'></asp:Label>
                                                       &nbsp;| Actual Cost -
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
