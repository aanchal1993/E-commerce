<%@page import="projbeans.products"%>
<%@page import="java.io.PrintWriter"%>
<html>

    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>
            Search Product
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
                                        <td><u>Product</u></td>
                        </tr>
                        <tr>

                            <td align="center"  >


                                <table >
                                    <tr class="line_btm">
                                        <%
                                            String p_id, p_image, p_name, p_price, p_description;
                                            String search = request.getParameter("search");
                                            products t = new products();
                                            ArrayList ary = t.search_btn(search);
                                            Iterator k = ary.iterator();
                                            while (k.hasNext()) {
                                                products w = (products) k.next();
                                                p_id = w.getP_id();
                                                p_image = w.getP_image();
                                                p_name = w.getP_name();
                                                p_price = w.getP_price();
                                                p_description = w.getP_description();

                                        %>

                                        <td class="line_btm"><img src=../uploadedimages/<%=p_image%> title="Product Image" width="200"></td>
                                        <td class="line_btm">
                                            <table>
                                                <tr><td><%=p_name%> (Id: <%=p_id%>)</td></tr>
                                                <tr><td>Rs.<%=p_price%></td></tr>
                                                <tr><td><a href="viewproduct.jsp?p_id=<%=p_id%>">Details</a></td></tr>
                                            </table>
                                        </td>
                                    </tr>




                                    <%
                                        }


                                    %>

                                </table>

                            </td>

                        </tr>

                        <tr><td>&nbsp;</td></tr>

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