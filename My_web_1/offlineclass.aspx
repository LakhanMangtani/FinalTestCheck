<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="offlineclass.aspx.cs" Inherits="My_web_1.offlineclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <section class="breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Offline Classes</h2>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="homepage.aspx">Home</a></li>
                            <li class="breadcrumb-item">Services</li>
                             <li class="breadcrumb-item active">Offline Classes</li>

                        </ol>
                    </div>
                </div>
            </div>
        </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-justify">
                    <h3>About Offline Classes</h3>
                    <p>Welcome to Pathshala Offline classes.Offline learning is a term used to describe various learning environments that are conducted and supported by the use of computers and the internet. There are a number of definitions and terminologies that are used to describe online learning.</p>
       
               
                </div>
                
            </div>
        </div>
    </section>
     <section>
           <div class="container">
               <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="slider_images/online.png"  class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="slider_images/educations.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="slider_images/offline.png"  class="d-block w-100" alt="...">
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

    
    
  <section>
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                    <hr />
                  <h2>Skills Set:</h2>
                 
                                       
       <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" style="width:95%; border-radius:25px;height:35px">Teacher's staff - 100%
        
                  
              </div>
<br />
                
                                       
       <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" style="width:85%;border-radius:25px;height:35px">Study material - 85%
         </div>
                  
             <br />

               
                                       
       <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" style="width:75%;border-radius:25px;height:35px">Online session - 75%
         </div>
            <br />  

                  <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" style="width:70%;border-radius:25px;height:35px">Others - 70%
         </div>
            <br />  
              
          </div>
      </div>
             </div>
  </section>


</asp:Content>
