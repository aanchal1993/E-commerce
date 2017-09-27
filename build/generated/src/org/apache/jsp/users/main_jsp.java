package org.apache.jsp.users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import java.io.PrintWriter;
import projbeans.subcategory;
import java.util.Iterator;
import java.util.ArrayList;
import projbeans.category;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(7);
    _jspx_dependants.add("/users/javascript.js");
    _jspx_dependants.add("/users/header_visitor.jsp");
    _jspx_dependants.add("/users/header_user.jsp");
    _jspx_dependants.add("/users/topmenu.jsp");
    _jspx_dependants.add("/users/sidemenu.jsp");
    _jspx_dependants.add("/users/slider.jsp");
    _jspx_dependants.add("/users/footer.jsp");
  }

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

      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <link href=\"user.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <title>Main Page</title>\n");
      out.write("        <script>\n");
      out.write("            ");
      out.write("\n");
      out.write("function showMenu(x)\n");
      out.write("{\n");
      out.write("    var t = document.getElementById(x);\n");
      out.write("    t.style.visibility = \"visible\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("function hideMenu(x)\n");
      out.write("{\n");
      out.write("    var t = document.getElementById(x);\n");
      out.write("    t.style.visibility = \"hidden\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("function showSideSubmenu(catcode)\n");
      out.write("{\n");
      out.write("    //alert(x);\n");
      out.write("    var t = document.getElementById(catcode);\n");
      out.write("    t.style.display = \"inline-block\";\n");
      out.write("\n");
      out.write("    $(document).ready(\n");
      out.write("            function() {\n");
      out.write("               \n");
      out.write("\n");
      out.write("                $(\"#catcode\").click(\n");
      out.write("                        function() {\n");
      out.write("                            $(\"#t1\").show();\n");
      out.write("                        }\n");
      out.write("                );\n");
      out.write("\n");
      out.write("                \n");
      out.write("            });\n");
      out.write("}\n");
      out.write("\n");
      out.write("          ");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <script src=\"jquery-1.12.3.min.js\"></script>\n");
      out.write("        <script src=\"jquery.validate.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <table border=\"0\" width=\"100%\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"mainTbl\">\n");
      out.write("            <tr>\n");
      out.write("                <td height=\"120px\">\n");
      out.write("                    ");
                        
                        PrintWriter p1 = response.getWriter();
                        HttpSession q1 = request.getSession(true);
                        String user = (String) q1.getAttribute("username");

                        if (user==null) {
                    
      out.write("\n");
      out.write("                    <!-- Top Menu starts-->\n");
      out.write("                    ");
      out.write("<table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td height=\"90px\" width=\"180px\" class=\"logo\"> \n");
      out.write("                                <a href=\"main.jsp\"><img title=\"Shopping.com\" src=\"images/e-shop.jpg\" title=\"Shopping.com\"></a><br>\n");
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <table border=\"0\" width=\"1000px\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td class=\"siteCaption\" align=\"center\">\"<i>Selling hottest products on the net!\"</i></td>\n");
      out.write("                                        <td align=\"right\"> <a href=\"sign_up.jsp\"><img src=\"images/signUp.png\" width=\"100\" title=\"Sign Up\"></a></td>\n");
      out.write("                                        <td align=\"center\"> <a href=\"login.jsp\">Log In</a></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td align=\"center\"><div class=\"search_box\">\n");
      out.write("                                                <form >\n");
      out.write("                                                    <input type=\"text\" size=\"60\" placeholder=\"Search for Products\">\n");
      out.write("                                                    <input type=\"submit\" value=\"SEARCH\" class=\"submit_btn\">\n");
      out.write("                                                </form>\n");
      out.write("                                            </div>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </table>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>");
      out.write("\n");
      out.write("                    <!-- Top Menu ends --> \n");
      out.write("                    ");

                    } else {
                    
      out.write("\n");
      out.write("                    <!-- Top Menu starts -->\n");
      out.write("                    ");
      out.write("\n");
      out.write("<table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("        <td height=\"90px\" width=\"180px\" class=\"logo\"> \n");
      out.write("            <a href=\"main.jsp\"><img title=\"Shopping.com\" src=\"images/e-shop.jpg\" header=\"Shopping.com\"></a><br>\n");
      out.write("\n");
      out.write("        </td>\n");
      out.write("        <td>\n");
      out.write("            <table border=\"0\" width=\"1000px\">\n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"siteCaption\" align=\"center\" >\"<i>Selling hottest products on the net!\"</i></td>\n");
      out.write("\n");
      out.write("                    <!-- Get Session Variable -->\n");
      out.write("                    ");

                        PrintWriter p = response.getWriter();
                        HttpSession q = request.getSession(true);
                        String username = (String) q.getAttribute("username");
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Session Variable Ends-->\n");
      out.write("                    <td align=\"right\">&nbsp;&nbsp;&nbsp;&nbsp;Welcome ");
      out.print(username);
      out.write(" !</td>\n");
      out.write("                    <td align=\"right\"> <a href=\"showcart.jsp\"><img src=\"images/cart.png\" title=\"My Cart\"></a></td>\n");
      out.write("                    <td align=\"right\"> <a href=\"user_orders.jsp\">My Orders</a></td>\n");
      out.write("                    <td align=\"right\"> <a href=\"logout.jsp\">Log Out</a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"4\"><div class=\"search_box\">\n");
      out.write("                            <form >\n");
      out.write("                                <input type=\"text\" size=\"60\" placeholder=\"Search for Products\">\n");
      out.write("                                <input type=\"submit\" value=\"SEARCH\" class=\"submit_btn\">\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("</table>");
      out.write("\n");
      out.write("                    <!-- Top Menu ends --> \n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <!-- Top Menu starts -->\n");
      out.write("            ");
      out.write("<tr>\n");
      out.write("    <td height=\"35px\">\n");
      out.write("                    <table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"menu\"><a href=\"main.jsp\" class=\"menuLinks\" onmouseover=\"showMenu('menu1')\" onmouseout=\"hideMenu('menu1')\"> Home</a></td>\n");
      out.write("                              <td height=\"35px\" class=\"menu\"><a href=\"about_us.jsp\" class=\"menuLinks\">About Us</a></td>\n");
      out.write("                         \n");
      out.write("                            <td class=\"menu\" height=\"35px\"><a href=\"top_products.jsp\" class=\"menuLinks\" onmouseover=\"showMenu('menu2')\" onmouseout=\"hideMenu('menu2')\"> Top Products</a>\n");
      out.write("\n");
      out.write("                                <table width=\"135px\" class=\"dropdown\" cellpadding=\"0\" cellspacing=\"0\" id=\"menu2\" onmouseover=\"showMenu('menu2')\" onmouseout=\"hideMenu('menu2')\">\n");
      out.write("                                    \n");
      out.write("                                </table>\t\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td class=\"menu\" height=\"35px\"><a href=\"feedback.jsp\" class=\"menuLinks\"> Feedback</a></td>\n");
      out.write("                            <td class=\"menu menuNoBorder\" height=\"35px\"><a href=\"contact_us.jsp\"  class=\"menuLinks\" >Contact Us</a></td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>");
      out.write("\n");
      out.write("            <!-- Top Menu ends -->\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td height=\"300px\" valgin=\"top\">\n");
      out.write("                    <table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" >\t\n");
      out.write("                        <tr>\t\t\n");
      out.write("                            <td height=\"300px\" width=\"140px\" valign=\"top\" align=\"center\" class=\"sideMenuContainer\">\n");
      out.write("\n");
      out.write("                                <!-- Side Menu starts  height=\"300px\" -->\n");
      out.write("                                ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            .subcat{\n");
      out.write("                display:none;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            </style>\n");
      out.write("            <script>\n");
      out.write("          function  showSideSubmenu(x)\n");
      out.write("          {\n");
      out.write("             hideSubMenu();\n");
      out.write("              $(\"#\"+x).show();\n");
      out.write("          }\n");
      out.write("          \n");
      out.write("          function hideSubMenu()\n");
      out.write("          {\n");
      out.write("              $(\".subcat\").hide();\n");
      out.write("          }\n");
      out.write("            </script>\n");
      out.write("               \n");
      out.write("<table border=\"0\" width=\"250px\" cellpadding=\"0\" cellspacing=\"0\" class=\"side\" >\t\n");
      out.write("\n");
      out.write("    ");

        category c = new category();
        ArrayList a = c.sideMenu();
        if (a.size() == 0)
            out.println("No data found");
        else {
            String catcode, catname;
            Iterator k = a.iterator();
            while (k.hasNext()) {
                category w = (category) k.next();
                catcode = w.getCatcode();
                catname = w.getCatname();
    
      out.write("\n");
      out.write("    <tr>\n");
      out.write("    <tr><td class=\"sideMenu\"><a href=\"javascript:showSideSubmenu('sub-");
      out.print(catcode);
      out.write("')\">");
      out.print(catname);
      out.write("</a>\n");
      out.write("\n");
      out.write("            <table width=\"120px\" cellpadding=\"0\" cellspacing=\"0\" id=\"sub-");
      out.print(catcode);
      out.write("\" class=\"subcat\">\n");
      out.write("\n");
      out.write("                ");

                    subcategory sc = new subcategory();
                    ArrayList a1 = sc.sideMenu(catcode);
                    if (a.size() == 0)
                        out.println("No data found");
                    else {
                        String subcatcode, subcatname;
                        Iterator k1 = a1.iterator();
                        while (k1.hasNext()) {
                            subcategory w1 = (subcategory) k1.next();
                            subcatcode = w1.getSubcatcode();
                            subcatname = w1.getSubcatname();
                
      out.write("\n");
      out.write("                <tr><td><a href=\"subcategorydata.jsp?subcatcode=");
      out.print(subcatcode);
      out.write('"');
      out.write('>');
      out.print(subcatname);
      out.write(" </a>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("        </td></tr>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("</table>\n");

                    }
                
      out.write("\n");
      out.write("        </td></tr>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("\n");
      out.write("</table>");
      out.write("\n");
      out.write("                                <!-- Side Menu Ends-->\n");
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            \n");
      out.write("                            <td  valign=\"top\" align=\"center\">\n");
      out.write("                                <div style=\"width:900px;margin-top:20px;\">\n");
      out.write("                            <!-- slider starts -->\n");
      out.write("                            ");
      out.write("<script src=\"js/jquery.bxslider.min.js\"></script>\n");
      out.write("<!-- bxSlider CSS file -->\n");
      out.write("<link href=\"jquery.bxslider.css\" rel=\"stylesheet\" />\n");
      out.write("<script>\n");
      out.write("    $(document).ready(function(){\n");
      out.write(" $('.bxslider').bxSlider({\n");
      out.write("  auto: true,\n");
      out.write("  autoControls: true\n");
      out.write("});\n");
      out.write("});\n");
      out.write("    </script>\n");
      out.write("<ul class=\"bxslider\">\n");
      out.write("  <li><img src=\"images/1.jpg\"/></li>\n");
      out.write("  <li><img src=\"images/2.jpg\" /></li>\n");
      out.write("  <li><img src=\"images/3.jpg\"/></li>\n");
      out.write(" \n");
      out.write("</ul>");
      out.write("\n");
      out.write("                            <!-- slider ends -->\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                            \n");
      out.write("                        </tr>\n");
      out.write("                        <tr><td class=\"content\">&nbsp;</td></tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("            <!-- Footer starts -->\n");
      out.write("            ");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td align=\"center\" class=\"footer\">\n");
      out.write("\n");
      out.write("                    Shopping.com Copyright 2016 ©  All Rights Reserved\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            <!-- Footer ends -->\n");
      out.write("            </tr>\n");
      out.write("           \n");
      out.write("\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
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
