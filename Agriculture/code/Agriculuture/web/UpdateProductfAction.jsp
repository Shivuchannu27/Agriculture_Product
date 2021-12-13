<%@page import="Register.Db"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <!-- Title -->
  <title>Agriculture | UserDashboard</title>
  <!-- Favicon -->
  <link rel="icon" href="img/core-img/favicon.ico">
  <!-- Core Stylesheet -->
  <link rel="stylesheet" href="style.css">
  <style>
table, th, td{border-collapse:collapse; }
table, th{table-layout:auto;width: 100px}
table{width:100%; margin-bottom:15px;}
td{border-width:0 1px;}
#1s {
  border: 4px solid #456274;
  margin-top: 100px;
  margin-bottom: 100px;
  margin-right: 150px;
  margin-left: 80px;
  background-color: white;
}
div.ex1 {
  width:1100px;
  height:600px;
  margin: auto;
  border: 1px solid #73AD21;
}

div.ex2 {
  max-width:500px;
  margin: auto;
  border: 1px solid #F27474;
}
</style>
<style>
    .submit {
  background-color: #4CAF50;
  border: none;
  border-radius:10px;
  color: white;
  text-align: center;
  font-family: initial;
  text-decoration: none;
  font-size: 16px;
  margin: 4px 2px;
  width: 190px;
  height: 30px;
  }
  
.text {
  background-color: #4CAF50;
  border: none;
  border-radius:10px;
  color: white;
  text-align: center;
  font-family: initial;
  text-decoration: none;
  font-size: 16px;
  margin: 4px 2px;
  width: 190px;
  height: 30px;
  }
</style>
       
</head>

<body>
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
                 <li><a href="app.jsp">Add Products</a></li>
                  <li><a href="udelete.jsp">Update/Delete</a></li>
                  <li><a href="user.jsp">User Details</a></li>
                  <li><a href="ViewMessage.jsp">View message</a></li>
                  <li><a href="logout.jsp">Logout</a></li>
                </ul>
                <!-- Search Icon -->
               
              </div>
              <!-- Navbar End -->
            </div>
          </nav>

        </div>
      </div>
    </div>
  </header>
<!-- ##### News Area Start ##### -->
    <section class="contact" style="background-color: #F96131;height: 570px">
	<div class="container">
            <div class="contact-heading text-center">
                <h2 style="font-family: initial;font-size: 30px;color: cyan">Update Crop</h2>
	    </div>
            <form action="AddProductAction.jsp" method="POST">
                <center> <div class="col-md-6 col-md-offset-1 contact-form" style="background-color: #DDD;border-radius:20px;width: 450px">
		    <%  while (rs.next()) {
                    %>
                    <p style="font-family:  cursive;font-size: 20px;color:purple">     <b>Crop Owner Name</b>                   <input class="text" type="text"   value="<%=rs.getString(2)%>" name="cname" readonly></p><br>
                    <p style="font-family:  cursive;font-size: 20px;color:purple">     <b>Crop Name</b>          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;              <input class="text" type="text" value="<%=rs.getString(1)%>"   name="pname" readonly ></p><br>
                    <p style="font-family:  cursive;font-size: 20px;color:purple">     <b>Crop Price</b>          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                            <input class="text" type="text"  value="<%=rs.getString(3)%>"  name="cprice" required></p><br>
                    <p style="font-family:  cursive;font-size: 20px;color:purple">     <b>Address</b>            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                    <input class="text" type="text" value="<%=rs.getString(4)%>"  name="addr" readonly></p><br>
                    <p style="font-family:  cursive;font-size: 20px;color:purple">     <b>Mobile</b>             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                      <input class="text" type="text"  value="<%=rs.getString(5)%>"  name="mobile" readonly></p>                       
                                  	                                       <%
                                }
                            %>
                    <input type="submit" class="btn" value="Update Crop">
                </center>
            </form>
	</div>
    </section><!-- end of contact section -->
<%
            } catch (Exception e) {
                out.println(e);
            }%>
 
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
                  <a href="#" class="post-title">Wat's largest farming business on the market</a>
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