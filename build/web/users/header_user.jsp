<%@page import="java.io.PrintWriter"%>
<table border="0" width="100%" cellpadding="0" cellspacing="0">

    <tr>
        <td height="90px" width="180px" class="logo"> 
            <a href="main.jsp"><img title="Shopping.com" src="images/e-shop.jpg" header="Shopping.com"></a><br>

        </td>
        <td>
            <table border="0" width="1000px">
                <tr>
                    <td class="siteCaption" align="center" >"<i>Selling hottest products on the net!"</i></td>

                    <!-- Get Session Variable -->
                    <%
                        PrintWriter p = response.getWriter();
                        HttpSession q = request.getSession(true);
                        String username = (String) q.getAttribute("username");
                    %>

                    <!-- Session Variable Ends-->
                    <td align="right">&nbsp;&nbsp;&nbsp;&nbsp;Welcome <%=username%> !</td>
                    <td align="right"> <a href="showcart.jsp"><img src="images/cart.png" title="My Cart"></a></td>
                    <td align="right"> <a href="user_orders.jsp">My Orders</a></td>
                    <td align="right"> <a href="logout.jsp">Log Out</a></td>
                </tr>
                <tr>
                    <td colspan="4"><div class="search_box">
                            <form action="search.jsp">
                                <input type="text" size="60" id="search" name="search" placeholder="Search for Products">
                                <input type="submit" value="SEARCH" class="submit_btn">
                            </form>
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>