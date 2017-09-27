<%@page import="projbeans.order_details"%>
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
                                <form>
                                    <%String tracking_no = "";
                                        String order_detail_id = request.getParameter("order_detail_id");
                
                
                                        String p_name = request.getParameter("p_name");
                                        String order_detail_status = request.getParameter("order_detail_status");

                                        //out.println("STATUS: " + order_detail_status.trim().length());
                
                                        out.println("<h3>STATUS: " + order_detail_status+"</h3>");
                                        if (order_detail_status.equals("approved")) {
                   
                
                                            order_details od = new order_details();
                                            od.setOrder_detail_id(order_detail_id);
                                            int al = od.track();
                                            tracking_no = od.getTracking_no();
                                    %>
                                    <p>
                                        The Tracking Number for Your Order Detail Id: <%=order_detail_id%>,<br> Product: <%=p_name%>  <br> is:-  <br> <h1> <%=tracking_no%></h1>

                                    <P>
                                        <a href="http://www.dhl.com/en.html">Click Here to track your package !!</a>
                                    </P>

                                </form>
                                <%
                                    }
                                        else if(order_detail_status.equals("rejected"))
                                            out.println("<br>Stock Empty <br> STATUS: Rejected by Merchant");
                                        else
                                             out.println("STATUS yet to be approved by merchant");
                                %>     
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
