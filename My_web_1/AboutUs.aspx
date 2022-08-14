<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="My_web_1.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <section class="breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>About Us</h2>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="homepage.aspx">Home</a></li>
                            <li class="breadcrumb-item">About Us</li>

                        </ol>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h2>About Pathshala</h2>
                        <hr />
                    </div>
                    <div class="col-md-3 text-center">
                        <img src="images/school.png"  class="img-fluid"/>
                    </div>
                      <div class="col-md-9">
                          <p>The first thing that strikes me about education is knowledge gain.
                               Education gives us a knowledge of the world around us and changes it into something better. It develops in us a perspective of looking at life. 
                              
                          </p>
                         
                          <p>
                              People debate over the subject of whether education is the only thing that gives knowledge.
                               Some say education is the process of gaining information about the surrounding world while knowledge is something very different. They are right. But then again, information cannot be converted into knowledge without education. 
                             
                          </p>
                          <p>
                             
                              It is not just about lessons in textbooks. It is about the lessons of life.
                               One thing I wish I can do is, to provide education for all: no child left behind and change the world for good!!
                          </p>
                    </div>


                </div>
            </div>
        </section>

         <section style="background-color:#2980b9; color:white;" class="newsletter pt-1 pb-1 pt-md-2 pb-md-2">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 text-center">
                        <h3>We are commited with our services</h3>
                         <h3>Subscribe to our Newsletter to stay updated.</h3>
                        <div class="input-group p-3">
                            <input style="height:50px; border-color:transparent; border-radius:20px 0 0 20px;" type="email" class="form-control" placeholder="Enter your email"/>
                            <span class="input-group-btn">
                                <button style="min-height:50px; border-radius:0 20px 20px 0; color:#fff; background:#243c4f" class="btn btn-theme" type="submit" >Subscribe</button>
                            </span>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>

         <section class="pt-3 pb-4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h3>Our Awesome Team</h3>
                         <hr />
                    </div>
                   
                </div>

                <div class="row">
                    <div class="col-md-4 text-center">
                        <img src="team_images/CEO.png"  class="img-fluid" width="150px"/>
                        <h5>DIRECTOR</h5>
                        <p>LAKHAN MANGTANI</p>
                    </div>
                     <div class="col-md-4 text-center">
                         <img src="team_images/senior-analyst.png" class="img-fluid"  width="150px"/>
                        <h5>PRINCIPAL</h5>
                        <p>LAKHAN MANGTANI</p>
                    </div>
                     <div class="col-md-4 text-center">
                         <img src="team_images/hr.png"  class="img-fluid" width="150px"/>
                        <h5>HOD</h5>
                        <p>LAKHAN MANGTANI</p>
                    </div>
                </div>

                 <div class="row">
                    <div class="col-md-4 text-center">
                        <img src="team_images/java-developer.png"  class="img-fluid" width="150px"/>
                        <h5>MANAGEMENT</h5>
                        <p>LAKHAN MANGTANI</p>
                    </div>
                     <div class="col-md-4 text-center">
                         <img src="team_images/sales-head.png" class="img-fluid" width="150px" />
                        <h5>PLACEMENT</h5>
                        <p>LAKHAN MANGTANI</p>
                    </div>
                     <div class="col-md-4 text-center">
                         <img src="team_images/intern.png" class="img-fluid" width="150px"/>
                        <h5>ACADEMICS</h5>
                        <p>LAKHAN MANGTANI </p>
                    </div>
                </div>

            </div>
        </section>

        
</asp:Content>
