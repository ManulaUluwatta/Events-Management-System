<%-- 
    Document   : adminDashBoad
    Created on : Jan 30, 2020, 3:46:28 AM
    Author     : Manula Uluwatta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>
    
    .bg-dark-light {
    background: #323232 !important;
}
.bg-theme, .bg-dark, .bg-dark-light, .bg-secondary {
    color: #ffffff;
}
.widgets.footer-widgets .widget-title {
    color: #ffffff;
    font-family: "Raleway", sans-serif;
    font-weight: 700;
    margin-bottom: 30px;
    letter-spacing: 0.5px;
    position: relative;
    padding-bottom: 15px;
}

.widgets.footer-widgets .widget-title::after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    height: 2px;
    width: 100px;
    background: #13bfb1;
}
.widgets.footer-widgets .widget-quick-links ul {
    margin-top: -4px;
}
.widgets.footer-widgets .single-widget ul {
    padding-left: 0;
    margin-bottom: 0;
}

.widgets.footer-widgets .widget-quick-links ul li {
    display: block;
}
.widgets.footer-widgets .widget-quick-links ul li a {
    display: block;
    font-size: 13px;
    color: #ffffff;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    padding: 9px 0;
}

.widgets.footer-widgets .single-widget ul li {
    list-style: none;
    font-family: "Raleway", sans-serif;
}
.widgets.footer-widgets .widget-contact ul li {
    color: #000;
    font-size: 13px;
    color: #ffffff;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.widgets.footer-widgets .widget-contact ul li span {
    font-size: 14px;
    color: #ffffff;
    border: 2px solid #cccccc;
    border-radius: 3px;
    height: 32px;
    width: 32px;
    display: inline-block;
    line-height: 28px;
    text-align: center;
    margin-right: 20px;
}
.widgets.footer-widgets .widget-contact ul li.phone, .widgets.footer-widgets .widget-contact ul li.fax {
    font-size: 15px;
}

.widgets.footer-widgets .widget-contact ul li + li {
    margin-top: 20px;
}

/*register*/
.justify-content-centerl{
  padding-left: 40%;
}

/*footer styles*/

.footer{
    background: #131418;
    color:white;
    
    .links{
      ul {list-style-type: none;}
      li a{
        color: white;
        transition: color .2s;
        &:hover{
          text-decoration:none;
          color:#4180CB;
          }
      }
    }  
    .about-company{
      i{font-size: 25px;}
      a{
        color:white;
        transition: color .2s;
        &:hover{color:#4180CB}
      }
    } 
    .location{
      i{font-size: 18px;}
    }
    .copyright p{border-top:1px solid rgba(255,255,255,.1);} 
  }
    
</style>
<body>
    
    

<nav class="navbar navbar-inverse"><!---navbar start-->
  <div class="container-fluid">
    <ul class="nav navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="addConferencUI.jsp">Conference <span class="sr-only">(current)</span></a>
          </li>
         
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="registerChair.html"><span class="glyphicon glyphicon-hand-right"></span>Speaker Register</a></li>
       <%if(session.getAttribute("type")!= null){%>
      <li><a href="index_1.html"><span class="glyphicon glyphicon-log-in"></span>Log Out</a></li>
      <%}else{%>
      <li><a href="index_1.html"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      <%}%>
    </ul>
  </div>
</nav><!---navbar end-->
  
<div class="container"><!---carousel start---->
    <h2 align="center">Welcome to Conference Management Website</h2>  <hr>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
  
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
            <img src="images/image1.jpg" alt="Los Angeles" style="width:100%;">
        </div>
  
        <div class="item">
            <img src="images/image2.jpg" alt="Chicago" style="width:100%;">
        </div>
      
        <div class="item">
            <img src="images/image3.jpg" alt="New york" style="width:100%;">
        </div>
      </div>
  
      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div><!---carousel end---->


 

<br><br><br><br>


 
 <!-- Footer -->
 <div class="mt-5 pt-5 pb-5 footer">
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-xs-12 about-company">
        <h2>Heading</h2>
        <p class="pr-5 text-white-50">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac ante mollis quam tristique convallis </p>
        <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i class="fa fa-linkedin-square"></i></a></p>
      </div>
      <div class="col-lg-3 col-xs-12 links">
        <h4 class="mt-lg-0 mt-sm-3">Links</h4>
          <ul class="m-0 p-0">
            <li> <a href="index.jsp">Home</a></li>
            <li> <a href="register.jsp">Register</a></li>
            <li> <a href="login.jsp">Login</a></li>
            <li> <a href="sports.jsp">Sports</a></li>
            <li> <a href="sport_apply.jsp">Apply for Sport</a></li>
            
          </ul>
      </div>
      <div class="col-lg-4 col-xs-12 location">
        <h4 class="mt-lg-0 mt-sm-4">Location</h4>
        <p>No. 20, Passara Road, Badulla</p>
        <p class="mb-0"><i class="fa fa-phone mr-3"></i>055 3546752</p>
        <p><i class="fa fa-envelope-o mr-3"></i>conferencemanagement@gmail.com</p>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col copyright">
        <p class=""><small class="text-white-50">© 2020. Conference Management | All Rights Reserved.</small></p>
      </div>
    </div>
  </div>
  </div>
<!-- Footer -->

</body>
</html>
