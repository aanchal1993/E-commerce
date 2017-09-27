<%@page import="java.io.PrintWriter"%>
         <script>

            function showMenu(x)
            {
               //alert("show"); 
                var t = document.getElementById(x);
                t.style.visibility = "visible";
            }

            function hideMenu(x)
            {
                
               // alert("hide");
                var t = document.getElementById(x);
                t.style.visibility = "hidden";
            }

        </script>
        
<!-- Get Session Variable -->
        <% 
            PrintWriter p = response.getWriter();
            HttpSession q = request.getSession(true);
            String username = (String)q.getAttribute("username");
            if(username.equals("null")){
                response.sendRedirect("index.html");
                        
            }else
            p.println("username: " + username);
        %>
<!-- Session Variable Ends-->
        
        <table width="100%" border="0" cellspacing="5" cellpadding="5" class="topMenu">
            <tr>
                <td width="20%" align="center" onmouseover="showMenu('menu1')" onmouseout="hideMenu('menu1')">General

                    <table class="dropdown" width="20%" cellpadding="0" cellspacing="0" id="menu1" onmouseover="showMenu('menu1')" onmouseout="hideMenu('menu1')">
                        <tr><td onmouseover="showMenu('menu1')" onmouseout="hideMenu('menu1')" > <a href ="changepassword.jsp">Change Password</a></td></tr>
                        <tr><td onmouseover="showMenu('menu1')" onmouseout="hideMenu('menu1')" > <a href ="logout.jsp" >Log Out</a></td></tr>

                    </table>
                </td>
                
                <td width="20%" align="center" onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')">Manage Categories
                    <table class="dropdown" width="20%" cellpadding="0" cellspacing="0" id="menu2" onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')">
                        <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" ><a href ="addcategory.jsp">Add</a></td></tr>
                        <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="updatecategory.jsp" >Update</a></td></tr>
                        <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="showcategory.jsp">Show All</a></td></tr>
                        <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="deletecategory.jsp" >Delete</a></td></tr>
                        <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="searchcategory.jsp" >Search</a></td></tr>
                    </table>
                </td>
                
                <td width="20%" align="center" onmouseover="showMenu('menu3')" onmouseout="hideMenu('menu3')">Manage Sub-Categories
                <table class="dropdown" width="20%" cellpadding="0" cellspacing="0" id="menu3" onmouseover="showMenu('menu3')" onmouseout="hideMenu('menu3')">
                        <tr><td onmouseover="showMenu('menu3')" onmouseout="hideMenu('menu3')" ><a href ="addsubcategory.jsp">Add</a></td></tr>
                        <tr><td onmouseover="showMenu('menu3')" onmouseout="hideMenu('menu3')" > <a href ="updatesubcategory.jsp" >Update</a></td></tr>
                        <tr><td onmouseover="showMenu('menu3')" onmouseout="hideMenu('menu3')" > <a href ="showsubcategory.jsp">Show All</a></td></tr>
                        <tr><td onmouseover="showMenu('menu3')" onmouseout="hideMenu('menu3')" > <a href ="deletesubcategory.jsp" >Delete</a></td></tr>
                        <tr><td onmouseover="showMenu('menu3')" onmouseout="hideMenu('menu3')" > <a href ="searchsubcategory.jsp" >Search</a></td></tr>
                    </table>
                </td>
                
                <td width="20%" align="center" onmouseover="showMenu('menu4')" onmouseout="hideMenu('menu4')">Manage Brands
                    <table class="dropdown" width="20%" cellpadding="0" cellspacing="0" id="menu4" onmouseover="showMenu('menu4')" onmouseout="hideMenu('menu4')">
                        <tr><td onmouseover="showMenu('menu4')" onmouseout="hideMenu('menu4')" ><a href ="addbrand.jsp">Add</a></td></tr>
                        <tr><td onmouseover="showMenu('menu4')" onmouseout="hideMenu('menu4')" > <a href ="updatebrand.jsp" >Update</a></td></tr>
                        <tr><td onmouseover="showMenu('menu4')" onmouseout="hideMenu('menu4')" > <a href ="showbrand.jsp">Show All</a></td></tr>
                        <tr><td onmouseover="showMenu('menu4')" onmouseout="hideMenu('menu4')" > <a href ="deletebrand.jsp" >Delete</a></td></tr>
                        <tr><td onmouseover="showMenu('menu4')" onmouseout="hideMenu('menu4')" > <a href ="searchbrand.jsp" >Search</a></td></tr>
                    </table>
                </td>
                
                <td width="20%" align="center" onmouseover="showMenu('menu5')" onmouseout="hideMenu('menu5')">Manage Merchant
                    <table class="dropdown" width="20%" cellpadding="0" cellspacing="0" id="menu5" onmouseover="showMenu('menu5')" onmouseout="hideMenu('menu5')">
                        <tr><td onmouseover="showMenu('menu5')" onmouseout="hideMenu('menu5')" ><a href ="addmerchant.jsp">Add</a></td></tr>
                        <tr><td onmouseover="showMenu('menu5')" onmouseout="hideMenu('menu5')" > <a href ="updatemerchant.jsp" >Update</a></td></tr>
                        <tr><td onmouseover="showMenu('menu5')" onmouseout="hideMenu('menu5')" > <a href ="showmerchant.jsp">Show All</a></td></tr>
                        <tr><td onmouseover="showMenu('menu5')" onmouseout="hideMenu('menu5')" > <a href ="deletemerchant.jsp" >Delete</a></td></tr>
                        <tr><td onmouseover="showMenu('menu5')" onmouseout="hideMenu('menu5')" > <a href ="searchmerchant.jsp" >Search</a></td></tr>
                    </table>
                </td>
            </tr>
        </table>

