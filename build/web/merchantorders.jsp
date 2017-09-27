<%-- 
    Document   : merchantorders
    Created on : 18 May, 2016, 4:22:14 PM
    Author     : DELL LAPTOP
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.merchant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">


        <title>Order Page</title>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="product_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
            <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">

                <tr>
                    <td><u>My Orders List</u></td>
                </tr>


                <tr>

                    <td align="center">
                        <%            PrintWriter pp = response.getWriter();
                            HttpSession qq = request.getSession(true);
                            String m_id = (String) qq.getAttribute("m_id");
                            merchant t = new merchant();
                            t.setM_id(m_id);
                            System.out.println("MIDDDDDDDD:  " + m_id);
                            ArrayList a = t.myOrders();
                            if (a.size() == 0)
                                out.println("No data found");
                            else {
                        %>

                        <table border="0" width="600px">
                            <tr>
                                <th valign="top" align="left">ProductId&nbsp;&nbsp;&nbsp;</th>
                                <th valign="top" align="left">OrderId&nbsp;&nbsp;&nbsp;</th>
                                <th valign="top" align="left">OrderDetailsId&nbsp;&nbsp;&nbsp;</th>
                                <th valign="top" align="left">MerchantId&nbsp;&nbsp;&nbsp;</th>
                                <th valign="top" align="left">ProductName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th valign="top" align="left">OrderStatus</th>

                            </tr>
                            <%
                                String p_id, orderid, p_name, order_detail_id, order_detail_status;
                                Iterator k = a.iterator();
                                while (k.hasNext()) {
                                    merchant w = (merchant) k.next();
                                    p_id = w.getP_id();
                                    orderid = w.getOrderid();
                                    order_detail_id = w.getOrder_detail_id();
                                    m_id = w.getM_id();
                                    p_name = w.getP_name();
                                    order_detail_status = w.getOrder_detail_status();

                            %>
                            <tr>
                                <td><%=p_id%></td>
                                <td><%=orderid%></td>
                                <td><%=order_detail_id%></td>
                                <td><%=m_id%></td>
                                <td><a href="showproductdata.jsp?p_id=<%=p_id%>"><%=p_name%></a></td>
                                <td><%=order_detail_status%></td>
                                <td><a href="merchantorders_submit.jsp?order_detail_id=<%=order_detail_id%>"><input type="submit" value ="approve"></a></td>
                                <td><a href="merchantorders_reject.jsp?order_detail_id=<%=order_detail_id%>"><input type="submit" value ="reject"></a></td>

                            </tr>
                            <%

                                    }

                                }
                            %>
                    

            </table>
        </td>
    </tr>

</table>        </div>
<!-- Footer Starts -->
<%@include file="footer.jsp" %>
<!-- Footer Ends -->
</body>