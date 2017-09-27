<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.products"%>
<%@page import="projbeans.products"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<html>

    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="products.css" rel="stylesheet" type="text/css">

        <title>All Products</title>

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
                    %>
                </td>
            </tr>
            <!-- Top Menu starts -->
            <%@include file="topmenu.jsp" %>
            <!-- Top Menu ends -->

            <tr>
                <td height="300px">
                    <table border="0" width="100%" cellpadding="0" cellspacing="0" >	
                        <tr>		
                            <td height="300px" width="140px" valign="top" align="center" class="sideMenuContainer">

                                <!-- Side Menu starts  height="300px" -->
                                <%@include file="sidemenu.jsp" %>
                                <!-- Side Menu Ends-->

                            </td>

                            <td  align="center">

                                <table border="0" cellspacing="2" cellpadding="2" align="center"  class="formdata">

                                    <tr>
                                        <td><u>Products List</u></td>
                        </tr>
                        <tr>

                            <td align="center">
                                <%
                                    String subcatcode = request.getParameter("subcatcode");
                                    products t = new products();
                                    ArrayList ary = t.displayProducts(subcatcode);
                                    if (ary.size() == 0)
                                        out.println("No data found");
                                    else {
                                %>

                                <table border=0" >
                                    <tr>
                                        <%
                                            String p_id, m_id, bcode, p_name, p_price, p_description, p_status, p_image, p_image1, p_quantity;
                                            Iterator k = ary.iterator();
                                            while (k.hasNext()) {
                                                products w = (products) k.next();
                                                p_id = w.getP_id();
                                                p_image = w.getP_image();
                                                p_name = w.getP_name();
                                                p_price = w.getP_price();
                                                p_description = w.getP_description();
                                                p_quantity = w.getP_quantity();
                                                // System.out.println(p_image);
                                        %>

                                        <td class="line_btm"><img src=../uploadedimages/<%=p_image%> title="Product Image" width="200"></td>
                                        <td class="line_btm">
                                            <table>
                                                <tr><td><b><%=p_name%></b>(Id: <%=p_id%>)</td></tr>
                                                <tr><td>Rs.<%=p_price%></td></tr>
                                                <tr><td><a href="viewproduct.jsp?p_id=<%=p_id%> ">Details</a></td></tr>
                                            </table>
                                        </td>
                                    </tr>




                                    <%
                                            }

                                        }
                                    %>

                                </table>


                            </td>

                        </tr>
                        <tr><td>&nbsp;</td></tr>

                    </table>

                </td>
            </tr>

        </table>

    </td>
</tr>


<!-- Footer starts -->
<%@include file="footer.jsp" %>
<!-- Footer ends -->


</table>
</body>
</html>
<body>


</body>