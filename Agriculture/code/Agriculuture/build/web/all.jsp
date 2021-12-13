<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <!-- Title -->
  <title>Agriculture | Shop</title>
  <!-- Favicon -->
  <link rel="icon" href="img/core-img/favicon.ico">
  <!-- Core Stylesheet -->
  <link rel="stylesheet" href="style.css">
</head>

<body>
    <%!
    String name="";
    %>
    <%
        name=(String)session.getAttribute("c");
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
                          <li><a href="shop.jsp">Shop</a></li>
                          <li><a href="Viewprod.jsp">Products From Admin</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                     <li><a href="about.html">About</a></li>
                 <li><a href="contact.html">Contact</a></li>
                </ul>
                <!-- Search Icon -->
                <h5>Welcome to <%=name%></h5>
              </div>
              <!-- Navbar End -->
            </div>
          </nav>

        </div>
      </div>
    </div>
  </header>
  <!-- ##### Header Area End ##### -->

  <!-- ##### Breadcrumb Area Start ##### -->
  <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url('img/bg-img/18.jpg');">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-12">
          <div class="breadcrumb-text">
            <h2>Shop</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="famie-breadcrumb">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Shop</li>
        </ol>
      </nav>
    </div>
  </div>
  <!-- ##### Breadcrumb Area End ##### -->

  <!-- ##### Shop Area Start ##### -->
  <section class="shop-area section-padding-0-100">
    <div class="container">


      <div class="row">
        <!-- Shop Sidebar Area -->
        <div class="col-12 col-md-4 col-lg-3">



          <!-- Single Widget Area -->
          <div class="single-widget-area">
            <!-- Title -->
            <h5 class="widget-title">Catagories</h5>
            <!-- Cata List -->
            <ul class="cata-list shop-page">
              <li><a href="all.jsp">All Catagories</a></li>
              <li><a href="veg.jsp">Vegetables</a></li>
              <li><a href="Fruits.jsp">Fruits </a></li>
              <li><a href="seeds.jsp">Seeds</a></li>
            </ul>
          </div>
        </div>

        <!-- Shop Products Area -->
        <div class="col-12 col-md-8 col-lg-9">
          <div class="row">

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                  <img src="img/Fruits/1.jpeg" alt="">
  
                  <!-- Product Meta Data -->
                 
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Watermelon</a>
                  <h6 class="price">$17.99</h6>
                  <a href="payment.jsp"><input type="submit" class="btn" value="Buy"></a>
                  
                </div>
              </div>
            </div>

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                    <img src="img/Fruits/2.jpeg" style="height: 90px;widows: 900px;" alt="">
                  <!-- Product Meta Data -->
                  <div class="product-meta-data">
                    
                  </div>
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Grapes</a>
                  <h6 class="price">$17.99</h6>
                  <a href="payment.jsp"><input type="submit" class="btn" value="Buy"></a>
                </div>
              </div>
            </div>

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                  <img src="img/Fruits/3.jpeg" alt="">
                  <!-- Product Meta Data -->
                  
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Orange</a>
                  <h6 class="price">$17.99</h6>
                  <input type="submit" class="btn" value="Buy">
                </div>
              </div>
            </div>

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                  <img src="img/veg/4.jpeg" alt="">
                  <!-- Product Tags -->
                  
                  <!-- Product Meta Data -->
                  <div class="product-meta-data">
                   </div>
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Chilli</a>
                  <h6 class="price">$17.99</h6>
                  <input type="submit" class="btn" value="Buy">
                </div>
              </div>
            </div>

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                  <img src="img/veg/5.jpeg" alt="">
                  <!-- Product Meta Data -->
                  
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Cauliflower</a>
                  <h6 class="price">$17.99</h6>
                  <input type="submit" class="btn" value="Buy">
                </div>
              </div>
            </div>

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                  <img src="img/veg/6.jpeg" alt="">
                  <!-- Product Meta Data -->
                  <div class="product-meta-data">
                      </div>
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Capsicum</a>
                  <h6 class="price">$17.99</h6>
                  <input type="submit" class="btn" value="Buy">
                </div>
              </div>
            </div>

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                  <img src="img/Seeds/7.jpeg" alt="">
                  <!-- Product Meta Data -->
                 
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Almonds</a>
                  <h6 class="price">$17.99</h6>
                  <input type="submit" class="btn" value="Buy">
                </div>
              </div>
            </div>

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                  <img src="img/Seeds/8.jpeg" alt="">
                  <!-- Product Tags -->
                 
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Groundnut</a>
                  <h6 class="price">$17.99</h6>
                  <input type="submit" class="btn" value="Buy">
                </div>
              </div>
            </div>

            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-lg-4">
              <div class="single-product-area mb-50">
                <!-- Product Thumbnail -->
                <div class="product-thumbnail">
                  <img src="img/Seeds/9.jpeg" alt="">
                  <!-- Product Meta Data -->
                  
                </div>
                <!-- Product Description -->
                <div class="product-desc text-center pt-4">
                  <a href="#" class="product-title">Strawberry</a>
                  <h6 class="price">$17.99</h6>
                  <input type="submit" class="btn" value="Buy">
                </div>
              </div>
            </div>

          </div>

          <!-- Pagination -->
          <nav>
            <ul class="pagination mb-0 mt-50">
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
            </ul>
          </nav>
        </div>
      </div>

    </div>
  </section>
  <!-- ##### Shop Area End ##### -->

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
                  <a href="#" class="post-title">WA’s largest farming business on the market</a>
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