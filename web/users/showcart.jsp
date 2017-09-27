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

        <table width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">
            <tr>
                <td height="120px">
                    <%                        PrintWriter p1 = response.getWriter();
                        HttpSession q1 = request.getSession(true);
                        String user = (String) q1.getAttribute("username");

                        if (user == null) {
                    response.sendRedirect("sign_up.jsp");
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
                                
                                    <table align="center" border="0" class="content_table">
                                    <tr><td>&nbsp;</td></tr>
                                    <tr>
                                        <td>Product Name</td> 
                                        <td>Price</td> 
                                        <td>Quantity</td> 
                                        <td>Total</td> 


                                    </tr>
                                    
                                    <br>
                                    <br>

<%
                                        ArrayList cartdata = (ArrayList) session.getAttribute("cart");
                                        if (cartdata == null)
                                            out.println("<br><br><br><br><br><br><br> <br><b><u>My Cart  is Empty !!</u></b>");
                                        else {
                                            Iterator x = cartdata.iterator();
                                            int sum = 0;
                                            for (int i = 0; i < cartdata.size(); i++) {
                                                cartDetailBean cartlist = (cartDetailBean) x.next();
                                                sum += Integer.parseInt(cartlist.getTotalamt());
                                    %>

                                    <tr>
                                        <td><%=cartlist.getP_name()%></td> 
                                        <td><%=cartlist.getP_price()%></td> 
                                        <td><%=cartlist.getR_quantity()%></td> 
                                        <td><%=cartlist.getTotalamt()%></td> 

                                        <td><a href="deletecart.jsp?index=<%=i%>"><img src="images/cross.jpg" title="delete"></a></td> 

                                    </tr>

                                    <%
                                        }


                                    %>
                                    <tr><td>Total Amount :  <%=sum%> </td></tr>
                                    <tr><td><a href="subcategorydata.jsp?subcatcode=41">Continue Shopping</a></td>
                                        <td><a href="shippment.jsp">Check Out</a></td> </tr>
                                </table>

                                <%
                                    }

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



