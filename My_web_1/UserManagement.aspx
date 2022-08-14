<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="My_web_1.UserManagement" %>
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
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                      

                         <%-- for text--%>
                         <div class="row">
                            <div class="col">
                              <center>
                           
                            <h4> Admin User Management</h4>
                             </center>
                                 </div>
                        </div>
                         <%-- for text--%>
                         <%-- for hr rule --%>
                        <div class="row">
                            <div class="col">
                              <center>
                           
                        <img width="60px" src="images/students.png"/>
                             </center>
                                 </div>
                        </div>
                         <%-- for hr rule --%>

                          <%-- for hr rule --%>
                            <div class="row">
                              <div class="col">
                                   <hr />
                                 </div>
                        </div>
                         <%-- for hr rule --%>

                       <%-- for textbox,label & button--%>

                         <div class="row">
                              <div class="col-md-3">
                                   <label>Member ID</label>
                                 <div class="form-group">
                                    <div class="input-group">
                                     <asp:TextBox ID="txtMemberid" runat="server" CssClass="form-control mr-1" placeholder=" ID"></asp:TextBox>
                                         <asp:LinkButton ID="lbGo" runat="server" CssClass="btn btn-primary " OnClick="lbGo_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                                     
                                        </div>
                                 </div>
                                 </div>
                              <div class="col-md-4">
                                 <label>Full Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtUmFullname" runat="server" CssClass="form-control" placeholder=" Full Name" ReadOnly="True" ></asp:TextBox>
                                 </div>
                                 </div>
                              <div class="col-md-5">
                                 <label>Account Status</label>
                                     <div class="input-group">
                                     <asp:TextBox ID="txtAccountStatus" runat="server" CssClass="form-control mr-1" placeholder="Status" ReadOnly="true"></asp:TextBox>
                                         <asp:LinkButton ID="lbactive" runat="server"  CssClass="btn btn-success mr-1" ToolTip="Active User" OnClick="lbactive_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                                          <asp:LinkButton ID="lbPending" runat="server"  CssClass="btn btn-warning mr-1" ToolTip="Pending User" OnClick="lbPending_Click"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                          <asp:LinkButton ID="lbNotactive" runat="server"  CssClass="btn btn-danger mr-1" ToolTip=" Not Active User" OnClick="lbNotactive_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                     
                                     </div>
                                 </div>
                                 
                        </div>

                         <div class="row">
                              <div class="col-md-4">
                                   <label>DOB</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtUmDob" runat="server" CssClass="form-control" placeholder=" DOB" TextMode="date" ReadOnly="true"></asp:TextBox>
                                 </div>
                                 </div>

                              <div class="col-md-3">
                                   <label>Contact Number</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtUmContact" runat="server" CssClass="form-control" placeholder="Contact Number" ReadOnly="true"></asp:TextBox>
                                 </div>
                                 </div>
                              <div class="col-md-5">
                                 <label>Email ID </label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtUmEmailid" runat="server" CssClass="form-control" placeholder="Email ID" TextMode="Email" ReadOnly="true"></asp:TextBox>
                                 </div>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col-md-4">
                                   <label>State</label>
                                 <div class="form-group"  >
                                     <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control"  Enabled="false">
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
                                     <asp:TextBox ID="txtUmCity" runat="server" CssClass="form-control" placeholder="City"  ReadOnly="true"></asp:TextBox>
                                 </div>
                                 </div>
                             <div class="col-md-4">
                                 <label>Pincode</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtUmPincode" runat="server" CssClass="form-control" placeholder="Pincode"  ReadOnly="true"></asp:TextBox>
                                 </div>
                                 </div>
                        </div>

                         <div class="row">
                              <div class="col">
                                  <label>Full Address</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtUmFulladdress" runat="server" CssClass="form-control" placeholder="Full Address" ReadOnly="true" ></asp:TextBox>
                                 </div>
                                  </div>
                        </div>

                         
                          <div class="row">
                              <div class="col">
                                
                                    <div class="form-group">
                                       
                                       <asp:Button ID="btnDelete" runat="server" Text="Delete Permanently" CssClass="btn btn-danger btn-block btn-lg" OnClick="btnDelete_Click"  />
                                           
                                 </div>
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
                           
                            <h4>User List</h4>
                                 
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
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MY_WEBConnectionString %>" SelectCommand="SELECT * FROM [students_table]"></asp:SqlDataSource>
                              <div class="col">
                                  <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StuId" DataSourceID="SqlDataSource1">
                                      <Columns>
                                          <asp:BoundField DataField="StuId" HeaderText="ID" ReadOnly="True" SortExpression="StuId" />
                                          <asp:BoundField DataField="FullName" HeaderText="Name" SortExpression="FullName" />
                                          <asp:BoundField DataField="Account_status" HeaderText="Account" SortExpression="Account_status" />
                                          <asp:BoundField DataField="Contact_No" HeaderText="ContactNo." SortExpression="Contact_No" />
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
