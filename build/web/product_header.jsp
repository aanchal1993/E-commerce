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
    String username = (String) q.getAttribute("username");
    p.println("username: " + username);
%>
<!-- Session Variable Ends-->

<table width="60%" cellspacing="5" cellpadding="5" align="center" class="topMenu">
    <tr>
        <td width="20%" align="center" onmouseover="showMenu('menu1')" onmouseout="hideMenu('menu1')">General

            <table class="dropdown" width="28%" cellpadding="0" cellspacing="0" id="menu1" onmouseover="showMenu('menu1')" onmouseout="hideMenu('menu1')">
                <tr><td onmouseover="showMenu('menu1')" onmouseout="hideMenu('menu1')" > <a href ="product_changepassword.jsp">Change Password</a></td></tr>
                <tr><td onmouseover="showMenu('menu1')" onmouseout="hideMenu('menu1')" > <a href ="logout.jsp" >Log Out</a></td></tr>

            </table>
        </td>

        <td width="20%" align="center" onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')">Manage Products
            <table class="dropdown" width="28%" cellpadding="0" cellspacing="0" id="menu2" onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')">
                <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" ><a href ="addproduct.jsp">Add</a></td></tr>
                <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="updateproduct.jsp" >Update</a></td></tr>
                <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="showproduct.jsp">Show All</a></td></tr>
                <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="deleteproduct.jsp" >Delete</a></td></tr>
                <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="searchproduct.jsp" >Search</a></td></tr>
                <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="searchproduct_merchant.jsp" >My Products</a></td></tr>
                <tr><td onmouseover="showMenu('menu2')" onmouseout="hideMenu('menu2')" > <a href ="merchantorders.jsp" >My Orders</a></td></tr>
            </table>
        </td>

    </tr>

</table>

