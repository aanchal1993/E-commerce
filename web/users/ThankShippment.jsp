<%@page import="projbeans.products"%>
<%@page import="java.io.PrintWriter"%>
<html>

    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>
            Thanks
        </title>

        <script>
            <%@include file="javascript.js" %>
        </script>
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>

    </head>

    <body>

        <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">
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

                        ArrayList cartdata = (ArrayList) session.getAttribute("cart");
                        cartdata.clear();
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


                            <!--------------------------------------------------- slider starts ------------------------------------------------------->
                            <td align="center" >

                                <table border="0" cellspacing="2" cellpadding="2" align="center"  class="formdata">

                                    <tr>
                                        <td><u>Order Successfully Placed !!</u></td>
                        </tr>

                        <br>
                        <br>
                        <tr>
                            <td>
                                <b><a href="user_orders.jsp">Click Here to view your previous orders</a></b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <form action="email.jsp">
                                    <p>Click here to get the order details!!
                                        <input type="submit" value="Email Me">
                                    </p>
                                </form>
                            </td>
                        </tr>


                    </table>

                </td>
                <!------------------------------------------------------- slider ends ---------------------------------------------------->

            </tr>
            <tr><td class="content">&nbsp;</td></tr>
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
