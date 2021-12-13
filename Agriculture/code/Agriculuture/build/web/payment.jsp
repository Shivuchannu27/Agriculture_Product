<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Register.Db"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <!-- Title -->
  <title>Agriculture | Home</title>
  <!-- Favicon -->
  <link rel="icon" href="img/core-img/favicon.ico">
  <!-- Core Stylesheet -->
  <link rel="stylesheet" href="style.css">
  <style>
      .wave{
	position: fixed;
	bottom: 0;
	left: 0;
	height: 100%;
	z-index: -1;
}

.login-content{
	display: flex;
	justify-content: flex-start;
	align-items: left;
	text-align: center;

}


form{
	width: 360px;
}

.login-content img{
    height: 100px;
}

.login-content .input-div{
	position: relative;
    display: grid;
    grid-template-columns: 7% 93%;
    margin: 25px 0;
    padding: 5px 0;
    border-bottom: 2px solid #d9d9d9;
}



.input-div > div > input{
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	border: none;
	outline: none;
	font-size: 1.2rem;
	color: #555;
	font-family: 'poppins', sans-serif;
}


a{
	display: block;
	text-align: right;
	text-decoration: none;
	color: #999;
	font-size: 0.9rem;
	transition: .3s;
}

a:hover{
	color: #38d39f;
}

.btn{
	display: block;
	width: 50%;
	height: 50px;
	border-radius: 5px;
	outline: none;
	border: none;
	background-image: linear-gradient(to right, #32be8f, #38d39f, #32be8f);
	background-size: 200%;
	font-size: 1.2rem;
	color: #fff;
	font-family: 'Poppins', sans-serif;
	text-transform: uppercase;
	margin: 1rem 0;
        margin-left: 100px;
	cursor: pointer;
	transition: .5s;
}
.btn:hover{
	background-position: right;
}
first{
    margin-left: 200px;
    
    
}
  </style>
       
</head>

<body>
    <%!
    String username="";
    %>
    <%
        username=(String)session.getAttribute("c");
        %>
         <%!  public Connection con = null;
         
             ResultSet rs,rs1;
            Statement st;
    %>
    <%
     try
     {
      String name=request.getParameter("val");
      String a = (String)session.getAttribute("c");
      con = Db.getConnection();
      st = con.createStatement();
      rs = st.executeQuery("select * from oprod where pname='"+name+"'");
      Statement st1 = con.createStatement();
     %>
  <!-- Preloader -->
  <div class="preloader d-flex align-items-center justify-content-center">
    <div class="spinner"></div>
  </div>

  <!-- ##### Header Area Start ##### -->
  <header class="header-area">
    <!-- Top Header Area -->
    <div class="top-header-area">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="top-header-content d-flex align-items-center justify-content-between">
              <!-- Top Header Content -->
              <div class="top-header-meta">
                <p>Welcome to <span>Agriculture</span>, we hope you will enjoy our products and have good experience</p>
              </div>
              <!-- Top Header Content -->
              <div class="top-header-meta text-right">
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="infodeercreative@gmail.com"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Email: infodeercreative@gmail.com</span></a>
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="+1 234 122 122"><i class="fa fa-phone" aria-hidden="true"></i> <span>Call Us: +84 223 9000</span></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Navbar Area -->
    <div class="famie-main-menu">
      <div class="classy-nav-container breakpoint-off">
        <div class="container">
          <!-- Menu -->
          <nav class="classy-navbar justify-content-between" id="famieNav">
            <!-- Nav Brand -->
            <a href="index.html" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>
            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
              <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>
            <!-- Menu -->
            <div class="classy-menu">
              <!-- Close Button -->
              <div class="classycloseIcon">
                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
              </div>
              <!-- Navbar Start -->
              <div class="classynav">
                <ul>
                  <li class="active"><a href="index.html">Home</a></li>
               
                  <li><a href="#">Gallery</a>
                    <ul class="dropdown">
                        <li><a href="farming-practice.jsp">Farmer Training</a></li>
                        <li><a href="#">Shop</a>
                        <ul class="dropdown">
                          <li><a href="our-product.html">Our Products</a></li>
                         
                          <li><a href="Viewprod.jsp">Products From Admin</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                 <li><a href="contact.jsp">Contact</a></li>
                 <li><a href="logout.jsp">Logout</a></li>
                </ul>
                <!-- Search Icon -->
                <h5>Welcome to <%=username%></h5>
              </div>
              <!-- Navbar End -->
            </div>
          </nav>

        </div>
      </div>
    </div>
  </header>
  <!-- ##### Header Area End ##### -->

  <!--##Register Section##-->
<center><div id="content">
        
	<div class="container">
            <div class="login-content">
                <form action="p.jsp" method="POST">
                    <h2 class="title">Payment Mode</h2>
               <%                    while (rs.next()) {
                                                        %>
                        <div>
                            <label for="recipient-name" class="col-form-label">Username:</label>
                            <input type="text" name="username"  required="" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label for="message-text" class="col-form-label">Email:</label>
                            <input type="email" name="email" required="" class="form-control" >
                        </div>
                       <div class="form-group">
                            <label for="message-text" class="col-form-label">Mobile:</label>
                            <input type="text" name="mobile" required="" class="form-control" >
 	                </div>
                        
                        <div class="form-group">
                            <label for="message-text" class="col-form-label">Address</label>
                            <textarea input type="text" name="addr" required="" class="form-control" ></textarea>
 	                </div>
                     
                        <div data-ng-app="" data-ng-init="quantity=1;">
                                <h2>Cost Calculator</h2>
                                <div class="form-group">
                            <label for="message-text" class="col-form-label">Product Name</label>
                            <input type="text" name="pname" required="" value="<%=rs.getString(1)%>" class="form-control" >
 	                </div>
                                <div class="form-group">
                            <label for="message-text" class="col-form-label">Date</label>
                            <input type="date" name="date" required="" class="form-control" >
 	                </div>
                                
                                <label for="message-text" class="col-form-label">Price: </label>
                                <input type="number" ng-model="<%=rs.getString(3)%>" name="price" required="" class="form-control">
                                
                                
                                <label for="message-text" class="col-form-label">Quantity:</label>
                                <input type="number" ng-model="quantity" name="quantity" required="" class="form-control"><br>
                                 
                                
                                    
                                <label for="message-text" class="col-form-label">Total in Rupees</label>
                                <input type="text" name="total" value="{{quantity * <%=rs.getString(3)%>}}" name="total" required="" class="form-control">

                        </div>
                            
                  <input type="submit" class="btn" value="Submit Payment">
       <%
                                }
                            %>
                    </form>
                <img src="img/c.jpg" style="width:50%;height: 90%;margin-left: 39px;margin-top: 200px;">
            </div>
          </div>
    
       
    
      </div>             
      </center> 
<%
            } catch (Exception e) {
                out.println(e);
            }%>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
  <!-- ##### News Area Start ##### -->
  <section class="news-area bg-gray section-padding-100-0">
    <div class="container">
      <div class="row">

       
  <!-- ##### Footer Area Start ##### -->
  <footer class="footer-area">
    <!-- Main Footer Area -->
    <div class="main-footer bg-img bg-overlay section-padding-80-0" style="background-image: url(img/bg-img/3.jpg);">
      <div class="container">
        <div class="row">

          <!-- Single Footer Widget Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="footer-widget mb-80">
              <a href="#" class="foo-logo d-block mb-30"><img src="img/core-img/logo2.png" alt=""></a>
              <p>An Indian farmer should be respected by everyone.It is he who produces grains and vegetables for the citizen of the country </p>
              <div class="contact-info">
                <p><i class="fa fa-map-pin" aria-hidden="true"></i><span>Banglore</span></p>
                <p><i class="fa fa-envelope" aria-hidden="true"></i><span></span></p>
                <p><i class="fa fa-phone" aria-hidden="true"></i><span>+84 223 9000</span></p>
              </div>
            </div>
          </div>

          <!-- Single Footer Widget Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="footer-widget mb-80">
              <h5 class="widget-title"></h5>
              <!-- Footer Widget Nav -->
              <nav class="footer-widget-nav">
                <ul>
                  
                </ul>
              </nav>
            </div>
          </div>

          <!-- Single Footer Widget Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="footer-widget mb-80">
              <h5 class="widget-title">RECENT NEWS</h5>

              <!-- Single Recent News Start -->
              <div class="single-recent-blog d-flex align-items-center">
                <div class="post-thumbnail">
                  <img src="img/bg-img/4.jpg" alt="">
                </div>
                <div class="post-content">
                  <a href="#" class="post-title">WA?s largest farming business on the market</a>
                  <div class="post-date">18 Aug 2019</div>
                </div>
              </div>

              <!-- Single Recent News Start -->
              <div class="single-recent-blog d-flex align-items-center">
                <div class="post-thumbnail">
                  <img src="img/bg-img/5.jpg" alt="">
                </div>
                <div class="post-content">
                  <a href="#" class="post-title">Beef retail prices hit a record</a>
                  <div class="post-date">18 Aug 2019</div>
                </div>
              </div>

            </div>
          </div>

          <!-- Single Footer Widget Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="footer-widget mb-80">
              <h5 class="widget-title">STAY CONNECTED</h5>
              <!-- Footer Social Info -->
              <div class="footer-social-info">
                <a href="#">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                  <span>Facebook</span>
                </a>
                <a href="#">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                  <span>Twitter</span>
                </a>
                <a href="#">
                  <i class="fa fa-pinterest" aria-hidden="true"></i>
                  <span>Pinterest</span>
                </a>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

    <!-- Copywrite Area  -->
    <div class="copywrite-area">
      <div class="container">
        <div class="copywrite-text">
          <div class="row align-items-center">
            <div class="col-md-6">
              <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script><i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Student's</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
            </div>
            <div class="col-md-6">
              <div class="footer-nav">
                <nav>
                  <ul>
                    <li><a href="#">About</a></li>
                    <li><a href="#">News</a></li>
                    <li><a href="#">Contact</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- ##### Footer Area End ##### -->

  <!-- ##### All Javascript Files ##### -->
  <!-- jquery 2.2.4  -->
  <script src="js/jquery.min.js"></script>
  <!-- Popper js -->
  <script src="js/popper.min.js"></script>
  <!-- Bootstrap js -->
  <script src="js/bootstrap.min.js"></script>
  <!-- Owl Carousel js -->
  <script src="js/owl.carousel.min.js"></script>
  <!-- Classynav -->
  <script src="js/classynav.js"></script>
  <!-- Wow js -->
  <script src="js/wow.min.js"></script>
  <!-- Sticky js -->
  <script src="js/jquery.sticky.js"></script>
  <!-- Magnific Popup js -->
  <script src="js/jquery.magnific-popup.min.js"></script>
  <!-- Scrollup js -->
  <script src="js/jquery.scrollup.min.js"></script>
  <!-- Jarallax js -->
  <script src="js/jarallax.min.js"></script>
  <!-- Jarallax Video js -->
  <script src="js/jarallax-video.min.js"></script>
  <!-- Active js -->
  <script src="js/active.js"></script>
</body>
</html>