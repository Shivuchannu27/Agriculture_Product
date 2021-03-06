package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"description\" content=\"\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("  <!-- Title -->\n");
      out.write("  <title>Agriculture | Home</title>\n");
      out.write("  <!-- Favicon -->\n");
      out.write("  <link rel=\"icon\" href=\"img/core-img/favicon.ico\">\n");
      out.write("  <!-- Core Stylesheet -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("  <style>\n");
      out.write("      .wave{\n");
      out.write("\tposition: fixed;\n");
      out.write("\tbottom: 0;\n");
      out.write("\tleft: 0;\n");
      out.write("\theight: 100%;\n");
      out.write("\tz-index: -1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login-content{\n");
      out.write("\tdisplay: flex;\n");
      out.write("\tjustify-content: flex-start;\n");
      out.write("\talign-items: left;\n");
      out.write("\ttext-align: center;\n");
      out.write("        margin-left: 500px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("form{\n");
      out.write("\twidth: 360px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login-content img{\n");
      out.write("    height: 100px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login-content .input-div{\n");
      out.write("\tposition: relative;\n");
      out.write("    display: grid;\n");
      out.write("    grid-template-columns: 7% 93%;\n");
      out.write("    margin: 25px 0;\n");
      out.write("    padding: 5px 0;\n");
      out.write("    border-bottom: 2px solid #d9d9d9;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(".input-div > div > input{\n");
      out.write("\tposition: absolute;\n");
      out.write("\tleft: 0;\n");
      out.write("\ttop: 0;\n");
      out.write("\twidth: 100%;\n");
      out.write("\theight: 100%;\n");
      out.write("\tborder: none;\n");
      out.write("\toutline: none;\n");
      out.write("\t\n");
      out.write("\tfont-size: 1.2rem;\n");
      out.write("\tcolor: #555;\n");
      out.write("\tfont-family: 'poppins', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("a{\n");
      out.write("\tdisplay: block;\n");
      out.write("\ttext-align: right;\n");
      out.write("\ttext-decoration: none;\n");
      out.write("\tcolor: #999;\n");
      out.write("\tfont-size: 0.9rem;\n");
      out.write("\ttransition: .3s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:hover{\n");
      out.write("\tcolor: #38d39f;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn{\n");
      out.write("\tdisplay: block;\n");
      out.write("\twidth: 40%;\n");
      out.write("\theight: 50px;\n");
      out.write("\tborder-radius: 5px;\n");
      out.write("\toutline: none;\n");
      out.write("\tborder: none;\n");
      out.write("\tbackground-image: linear-gradient(to right, #32be8f, #38d39f, #32be8f);\n");
      out.write("\tbackground-size: 200%;\n");
      out.write("\tfont-size: 1.2rem;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-family: 'Poppins', sans-serif;\n");
      out.write("\ttext-transform: uppercase;\n");
      out.write("\tmargin: 1rem 0;\n");
      out.write("        margin-left: 100px;\n");
      out.write("\tcursor: pointer;\n");
      out.write("\ttransition: .5s;\n");
      out.write("}\n");
      out.write(".btn:hover{\n");
      out.write("\tbackground-position: right;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("  </style>\n");
      out.write("       \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <!-- Preloader -->\n");
      out.write("  <div class=\"preloader d-flex align-items-center justify-content-center\">\n");
      out.write("    <div class=\"spinner\"></div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- ##### Header Area Start ##### -->\n");
      out.write("  <header class=\"header-area\">\n");
      out.write("    <!-- Top Header Area -->\n");
      out.write("    <div class=\"top-header-area\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-12\">\n");
      out.write("            <div class=\"top-header-content d-flex align-items-center justify-content-between\">\n");
      out.write("              <!-- Top Header Content -->\n");
      out.write("              <div class=\"top-header-meta\">\n");
      out.write("                <p>Welcome to <span>Agriculture</span>, we hope you will enjoy our products and have good experience</p>\n");
      out.write("              </div>\n");
      out.write("              <!-- Top Header Content -->\n");
      out.write("              <div class=\"top-header-meta text-right\">\n");
      out.write("                <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"infodeercreative@gmail.com\"><i class=\"fa fa-envelope-o\" aria-hidden=\"true\"></i> <span>Email: infodeercreative@gmail.com</span></a>\n");
      out.write("                <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"+1 234 122 122\"><i class=\"fa fa-phone\" aria-hidden=\"true\"></i> <span>Call Us: +84 223 9000</span></a>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Navbar Area -->\n");
      out.write("    <div class=\"famie-main-menu\">\n");
      out.write("      <div class=\"classy-nav-container breakpoint-off\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("          <!-- Menu -->\n");
      out.write("          <nav class=\"classy-navbar justify-content-between\" id=\"famieNav\">\n");
      out.write("            <!-- Nav Brand -->\n");
      out.write("            <a href=\"index.html\" class=\"nav-brand\"><img src=\"img/core-img/logo.png\" alt=\"\"></a>\n");
      out.write("            <!-- Navbar Toggler -->\n");
      out.write("            <div class=\"classy-navbar-toggler\">\n");
      out.write("              <span class=\"navbarToggler\"><span></span><span></span><span></span></span>\n");
      out.write("            </div>\n");
      out.write("            <!-- Menu -->\n");
      out.write("            <div class=\"classy-menu\">\n");
      out.write("              <!-- Close Button -->\n");
      out.write("              <div class=\"classycloseIcon\">\n");
      out.write("                <div class=\"cross-wrap\"><span class=\"top\"></span><span class=\"bottom\"></span></div>\n");
      out.write("              </div>\n");
      out.write("              <!-- Navbar Start -->\n");
      out.write("              <div class=\"classynav\">\n");
      out.write("                <ul>\n");
      out.write("                  <li class=\"active\"><a href=\"index.html\">Home</a></li>\n");
      out.write("                  <li><a href=\"admin.jsp\">Admin</a></li>\n");
      out.write("                  <li><a href=\"about.html\">About</a></li>\n");
      out.write("                  <li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("                </ul>\n");
      out.write("                <!-- Search Icon -->\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("              <!-- Navbar End -->\n");
      out.write("            </div>\n");
      out.write("          </nav>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("  <!-- ##### Header Area End ##### -->\n");
      out.write("  <!--##Register Section##-->\n");
      out.write(" <img class=\"wave\" src=\"img/wave.png\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("            <div class=\"login-content\">\n");
      out.write("\t\t<form action=\"regact.jsp\">\n");
      out.write("                    <img src=\"img/avatar.svg\">\n");
      out.write("\t\t\t<h2 class=\"title\">Welcome</h2>\n");
      out.write("                        <div>\n");
      out.write("                            <label for=\"recipient-name\" class=\"col-form-label\">Username:</label>\n");
      out.write("                            <input type=\"text\" name=\"username\" required=\"\" class=\"form-control\" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"message-text\" class=\"col-form-label\">Password:</label>\n");
      out.write("                            <input type=\"Password\" name=\"password\" required=\"\" class=\"form-control\" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"message-text\" class=\"col-form-label\">Email:</label>\n");
      out.write("                            <input type=\"email\" name=\"email\" required=\"\" class=\"form-control\" >\n");
      out.write("\t                </div>\n");
      out.write("                       <div class=\"form-group\">\n");
      out.write("                            <label for=\"message-text\" class=\"col-form-label\">Mobile:</label>\n");
      out.write("                            <input type=\"text\" name=\"mobile\" required=\"\" class=\"form-control\" >\n");
      out.write(" \t                </div>\n");
      out.write("                        <a href=\"#\">Forgot Password?</a>\n");
      out.write("                        <a href=\"Login.jsp\">Are u User?Login</a>\n");
      out.write("                        <input type=\"submit\" class=\"btn\" value=\"Register\">\n");
      out.write("                 </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("   \n");
      out.write("  <!--##Register Section##-->\n");
      out.write("  <!-- ##### News Area Start ##### -->\n");
      out.write("  <section class=\"news-area bg-gray section-padding-100-0\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("\n");
      out.write("       \n");
      out.write("  <!-- ##### Footer Area Start ##### -->\n");
      out.write("  <footer class=\"footer-area\">\n");
      out.write("    <!-- Main Footer Area -->\n");
      out.write("    <div class=\"main-footer bg-img bg-overlay section-padding-80-0\" style=\"background-image: url(img/bg-img/3.jpg);\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("\n");
      out.write("          <!-- Single Footer Widget Area -->\n");
      out.write("          <div class=\"col-12 col-sm-6 col-lg-3\">\n");
      out.write("            <div class=\"footer-widget mb-80\">\n");
      out.write("              <a href=\"#\" class=\"foo-logo d-block mb-30\"><img src=\"img/core-img/logo2.png\" alt=\"\"></a>\n");
      out.write("              <p>An Indian farmer should be respected by everyone.It is he who produces grains and vegetables for the citizen of the country </p>\n");
      out.write("              <div class=\"contact-info\">\n");
      out.write("                <p><i class=\"fa fa-map-pin\" aria-hidden=\"true\"></i><span>Banglore</span></p>\n");
      out.write("                <p><i class=\"fa fa-envelope\" aria-hidden=\"true\"></i><span></span></p>\n");
      out.write("                <p><i class=\"fa fa-phone\" aria-hidden=\"true\"></i><span>+84 223 9000</span></p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <!-- Single Footer Widget Area -->\n");
      out.write("          <div class=\"col-12 col-sm-6 col-lg-3\">\n");
      out.write("            <div class=\"footer-widget mb-80\">\n");
      out.write("              <h5 class=\"widget-title\"></h5>\n");
      out.write("              <!-- Footer Widget Nav -->\n");
      out.write("              <nav class=\"footer-widget-nav\">\n");
      out.write("                <ul>\n");
      out.write("                  \n");
      out.write("                </ul>\n");
      out.write("              </nav>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <!-- Single Footer Widget Area -->\n");
      out.write("          <div class=\"col-12 col-sm-6 col-lg-3\">\n");
      out.write("            <div class=\"footer-widget mb-80\">\n");
      out.write("              <h5 class=\"widget-title\">RECENT NEWS</h5>\n");
      out.write("\n");
      out.write("              <!-- Single Recent News Start -->\n");
      out.write("              <div class=\"single-recent-blog d-flex align-items-center\">\n");
      out.write("                <div class=\"post-thumbnail\">\n");
      out.write("                  <img src=\"img/bg-img/4.jpg\" alt=\"\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"post-content\">\n");
      out.write("                  <a href=\"#\" class=\"post-title\">WA?s largest farming business on the market</a>\n");
      out.write("                  <div class=\"post-date\">18 Aug 2019</div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <!-- Single Recent News Start -->\n");
      out.write("              <div class=\"single-recent-blog d-flex align-items-center\">\n");
      out.write("                <div class=\"post-thumbnail\">\n");
      out.write("                  <img src=\"img/bg-img/5.jpg\" alt=\"\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"post-content\">\n");
      out.write("                  <a href=\"#\" class=\"post-title\">Beef retail prices hit a record</a>\n");
      out.write("                  <div class=\"post-date\">18 Aug 2019</div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <!-- Single Footer Widget Area -->\n");
      out.write("          <div class=\"col-12 col-sm-6 col-lg-3\">\n");
      out.write("            <div class=\"footer-widget mb-80\">\n");
      out.write("              <h5 class=\"widget-title\">STAY CONNECTED</h5>\n");
      out.write("              <!-- Footer Social Info -->\n");
      out.write("              <div class=\"footer-social-info\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>\n");
      out.write("                  <span>Facebook</span>\n");
      out.write("                </a>\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>\n");
      out.write("                  <span>Twitter</span>\n");
      out.write("                </a>\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <i class=\"fa fa-pinterest\" aria-hidden=\"true\"></i>\n");
      out.write("                  <span>Pinterest</span>\n");
      out.write("                </a>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Copywrite Area  -->\n");
      out.write("    <div class=\"copywrite-area\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"copywrite-text\">\n");
      out.write("          <div class=\"row align-items-center\">\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("              <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script><i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Student's</a>\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("              <div class=\"footer-nav\">\n");
      out.write("                <nav>\n");
      out.write("                  <ul>\n");
      out.write("                    <li><a href=\"#\">About</a></li>\n");
      out.write("                    <li><a href=\"#\">News</a></li>\n");
      out.write("                    <li><a href=\"#\">Contact</a></li>\n");
      out.write("                  </ul>\n");
      out.write("                </nav>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </footer>\n");
      out.write("  <!-- ##### Footer Area End ##### -->\n");
      out.write("\n");
      out.write("  <!-- ##### All Javascript Files ##### -->\n");
      out.write("  <!-- jquery 2.2.4  -->\n");
      out.write("  <script src=\"js/jquery.min.js\"></script>\n");
      out.write("  <!-- Popper js -->\n");
      out.write("  <script src=\"js/popper.min.js\"></script>\n");
      out.write("  <!-- Bootstrap js -->\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("  <!-- Owl Carousel js -->\n");
      out.write("  <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("  <!-- Classynav -->\n");
      out.write("  <script src=\"js/classynav.js\"></script>\n");
      out.write("  <!-- Wow js -->\n");
      out.write("  <script src=\"js/wow.min.js\"></script>\n");
      out.write("  <!-- Sticky js -->\n");
      out.write("  <script src=\"js/jquery.sticky.js\"></script>\n");
      out.write("  <!-- Magnific Popup js -->\n");
      out.write("  <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("  <!-- Scrollup js -->\n");
      out.write("  <script src=\"js/jquery.scrollup.min.js\"></script>\n");
      out.write("  <!-- Jarallax js -->\n");
      out.write("  <script src=\"js/jarallax.min.js\"></script>\n");
      out.write("  <!-- Jarallax Video js -->\n");
      out.write("  <script src=\"js/jarallax-video.min.js\"></script>\n");
      out.write("  <!-- Active js -->\n");
      out.write("  <script src=\"js/active.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
