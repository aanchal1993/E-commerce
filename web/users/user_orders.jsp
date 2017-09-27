<%@page import="projbeans.users"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="projbeans.cartDetailBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<html>
    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>Main Page</title>
        <script>
            <%@include file="javascript.js" %>
        </script>
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>

    </head>

    <body>

        <table border="2" width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">
            <tr>
                <td height="120px">
                    <%                        PrintWriter p1 = response.getWriter();
                        HttpSession q1 = request.getSession(true);
                        String user = (String) q1.getAttribute("username");

                        if (user == null) {
                    %>
                    <!-- Top Menu starts-->
                    <%@include file = "header_visitor.jsp"%>
                    <!-- Top Menu ends --> 
                    <%
                    } else {
                    %>
                    <!-- Top Menu starts -->
                    <%@include file="header_user.jsp" %>
                    <!-- Top Menu ends --> 
                    <%
                        }
                    %>
                </td>
            </tr>
            <!-- Top Menu starts -->
            <%@include file="topmenu.jsp" %>
            <!-- Top Menu ends -->

            <tr>
                <td height="300px" valgin="top">
                    <table border="0" width="100%" cellpadding="0" cellspacing="0" >	<tr>		
                            <td height="300px" width="140px" valign="top" align="center" class="sideMenuContainer">

                                <!-- Side Menu starts  height="300px" -->
                                <%@include file="sidemenu.jsp" %>
                                <!-- Side Menu Ends-->

                            </td>

                            <td  valign="top" align="center">

                                <!---------------------------------------------------- slider starts ----------------------------------------------------->
                                <br><br>

                                <table width="800" border="0" cellspacing="2" cellpadding="2" align="center" class="formdata">

                                    <tr>
                                        <td><u>My Orders List</u></td>
                        </tr>


                        <tr>

                            <td align="center">
                                <%  PrintWriter pp = response.getWriter();
                                    HttpSession qq = request.getSession(true);
                                    String userid = (String) qq.getAttribute("userid");
                                    users t = new users();
                                    t.setUserid(userid);
                                    //System.out.println("MID:  " + m_id);
                                    ArrayList a1 = t.myUserOrders();
                                    if (a1.size() == 0)
                                        out.println("No data found");
                                    else {
                                %>
                                <table border="0" width="800px">
                                    <tr>
                                        <th align="left">UserId</th>
                                        <th align="left">OrderId</th>
                                        <th align="left">OrderDetailsId</th>
                                        <th align="left">ProductId</th>
                                        <th align="left">ProductName</th>
                                        <th align="left">OrderDetailsStatus</th>
                                        <th align="left">PurchaseDate</th>
                                        <th align="left">Track</th>


                                    </tr>

                                    <%
                                        String p_id, orderid, p_name, order_detail_id, order_detail_status,date_of_purchase;
                                        Iterator k1 = a1.iterator();
                                        while (k1.hasNext()) {
                                            users t1 = (users) k1.next();
                                            userid = t1.getUserid();
                                            orderid = t1.getOrderid();
                                            order_detail_id = t1.getOrder_detail_id();
                                            p_id = t1.getP_id();
                                            p_name = t1.getP_name();
                                            order_detail_status = t1.getOrder_detail_status();
                                           date_of_purchase=t1.getDate_of_purchase();
                                           
                                    %>
                                    <tr>
                                        <td><%=userid%></td>
                                        <td><%=orderid%></td>
                                        <td><%=order_detail_id%></td>
                                        <td><%=p_id%></td>
                                        <td><%=p_name%></td>
                                        <td><%=order_detail_status%></td>
                                        <td><%=date_of_purchase%></td>
                                        <td><a href="track.jsp?order_detail_id=<%=order_detail_id%>&p_name=<%=p_name%>&order_detail_status=<%=order_detail_status%>"><input type="button" value="track"></a></td>


                                    </tr>
                                    <%

                                        }


                                    %>


                                </table>


                                <%                                    }

                                %>
                            </td></tr></table>
                    <!---------------------------------------------------- slider ends ------------------------------------------------------->
                </td>

            </tr>
            <tr><td>&nbsp;</td></tr>
        </table>
    </td>
</tr>


<tr>
    <!-- Footer starts -->
    <%@include file="footer.jsp" %>
    <!-- Footer ends -->
</tr>



</table>


</body>
</html>



