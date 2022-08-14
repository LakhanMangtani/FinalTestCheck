<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="My_web_1.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <section>
           <div class="container-fluid">
               <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="slider_images/eduslide.jpg"  class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="slider_images/educations.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="slider_images/learn.jpg"  class="d-block w-100" alt="...">
  </div>
      <div class="carousel-item">
      <img src="slider_images/school.jpg" class="d-block w-100" alt="...">
  </div>
      </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
           </div>
       </section>

         
        <section class="pt-3 pb-4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h3>Lots of Schools in Town.Why you should choose us?</h3>
                         <hr />
                    </div>
                   
                </div>

                <div class="row">
                    <div class="col-md-4 text-center">
                        <img src="images/requirement.jpg" class="img-fluid"  width="150px"/>
                        <h5>Requirements</h5>
                        <p>Every idea is unique that's why we craft it as per your requirements </p>
                    </div>
                     <div class="col-md-4 text-center">
                          <img src="images/requirement.jpg" class="img-fluid"  width="150px"/>
                        <h5>Requirements</h5>
                        <p>Every idea is unique that's why we craft it as per your requirements </p>
                    </div>
                     <div class="col-md-4 text-center">
                          <img src="images/requirement.jpg" class="img-fluid" width="150px"/>
                        <h5>Requirements</h5>
                        <p>Every idea is unique that's why we craft it as per your requirements </p>
                    </div>
                </div>

                 <div class="row">
                    <div class="col-md-4 text-center">
                        <img src="images/requirement.jpg" class="img-fluid"  width="150px"/>
                        <h5>Requirements</h5>
                        <p>Every idea is unique that's why we craft it as per your requirements </p>
                    </div>
                     <div class="col-md-4 text-center">
                          <img src="images/requirement.jpg" class="img-fluid"  width="150px"/>
                        <h5>Requirements</h5>
                        <p>Every idea is unique that's why we craft it as per your requirements </p>
                    </div>
                     <div class="col-md-4 text-center">
                          <img src="images/requirement.jpg" class="img-fluid" width="150px"/>
                        <h5>Requirements</h5>
                        <p>Every idea is unique that's why we craft it as per your requirements </p>
                    </div>
                </div>

            </div>
        </section>

        <section style="background-color:#2980b9; color:white;" class="pt-1 pb-1 pt-md-3 pb-md-3">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-9 text-center">
                        <h3>Do you have any requirements? We can do it for you!</h3>
                    </div>
                     <div class="col-md-3 text-center">
                         <button class="btn btn-primary btn-lg" >Get Started</button>
                    </div>
                </div>
            </div>
        </section>


         <section class="p-2 pt-md-4 pb-md-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <h2>About Pathshala</h2>
                        <h6>Pathshala provides all functionalities to growing performance and skills of students in academics,arts,sports,cultural activities,etc.
                            It also promotes ideas of students to innovate something and brings some new features to societies and help others. 
                            So join this beautiful Environmemt.</h6>
                        <button class="btn btn-lg btn-primary" >Read more</button>
                    </div>
                     <div class="col-md-6 p-2">
                         <img src="images/innovation.jpg"  class="img-fluid"/>
                    </div>
                </div>
            </div>
        </section>

         <section style="background-color:#2980b9; color:white;" class="newsletter pt-1 pb-1 pt-md-3 pb-md-3">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 text-center">
                        <h3>Subscribe to our Newsletter</h3>
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


        <section style="background-color:#f0f0f0;" class="pt-3 pb-4" >
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h3>Some of our Trusted clients.</h3>
                          <hr />
                    </div>
                  
                </div>

                <div class="row">
                    <div class="col-md-2 text-center">
                        <img src="images/students.png" class="img-fluid" />
                    </div>
                    <div class="col-md-2 text-center">
                        <img src="images/students.png" class="img-fluid"/>
                    </div>
                    <div class="col-md-2 text-center">
                        <img src="images/students.png" class="img-fluid"/>
                    </div>
                    
                    <div class="col-md-2 text-center">
                        <img src="images/students.png" class="img-fluid"/>
                    </div>
                    <div class="col-md-2 text-center">
                        <img src="images/students.png"  class="img-fluid"/>
                    </div>
                    <div class="col-md-2 text-center">
                        <img src="images/students.png" class="img-fluid"/>
                    </div>
                    
                </div>
            </div>
        </section>

</asp:Content>
