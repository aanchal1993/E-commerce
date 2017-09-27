<%@page import="projbeans.products"%>
<%@page import="java.io.PrintWriter"%>
<html>

    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>Product Description</title>
        <style>
            .abc{
                background-image:url("images/addCart.jpg");
                height:40px;
            }
        </style>
        <script>
            <%@include file="javascript.js" %>
        </script>
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <script>
            function sendQty()
            {
                var a = document.form1.quantity.value;
                location.href = "cart.jsp?qty=" + a;
            }

        </script>
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
                            <td height="300px" width="140px" valign="top" align="center">

                                <!-- Side Menu starts  height="300px" -->
                                <%@include file="sidemenu.jsp" %>
                                <!-- Side Menu Ends-->

                            </td>
                        <br>
                        <td  valign="top" align="center" class="formdata">

                            <!-- slider starts -->


                            <%String m_id, bcode, p_name, p_price, p_description, p_status, p_image, p_image1, p_quantity;
                                String p_id = request.getParameter("p_id");
                                products f = new products();
                                f.setP_id(p_id);
                                boolean b = f.search();
                                if (b == false)
                                    out.println("No record found");
                                else {
                                    p_image = f.getP_image();
                                    //p_image1=f.getP_image1();
                                    p_name = f.getP_name();
                                    p_price = f.getP_price();
                                    p_description = f.getP_description();
                            %> 


                            <form name="form1" action="cart.jsp">
                                <table border="0" class="center_data">
                                    <tr>
                                        <td><img src=../uploadedimages/<%=p_image%> title="Product Image" width="200"></td>
                                        <td valign="top">
                                            <p><b><%=p_name%> </b>(<%=p_id%>)</p>
                                            <p><b>Description</b> &nbsp;&nbsp;&nbsp;&nbsp;<%=p_name%><br><%=p_description%></p>
                                            <p><b>Price</b> &nbsp;&nbsp;&nbsp;&nbsp;Rs. &nbsp;<%=p_price%> </p>
                                            <p><b> Enter Quantity</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="text" name="r_quantity" required="required">
                                            </p>
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="submit" value=" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" class="abc">
                                         </p>
                                        </td>
                                       </tr>
                                    <input type="hidden" name="p_id" value="<%=p_id%>"/>
                                    <input type="hidden" name="p_name" value="<%=p_name%>"/>
                                    <input type="hidden" name="p_price" value="<%=p_price%>"/>

                                </table>
                            </form>
                            <%

                                    HttpSession k = request.getSession(true);
                                    k.setAttribute("pqr", p_id);

                                }


                            %>
                    </table>

                    <!-- slider ends -->
                </td>

            </tr>
            <tr><td>&nbsp;</td></tr>


            <!-- Footer starts -->
            <%@include file="footer.jsp" %>
            <!-- Footer ends -->


        </table>


    </body>
</html>