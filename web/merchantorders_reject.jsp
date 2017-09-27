<%-- 
    Document   : merchantorders_reject
    Created on : 19 May, 2016, 12:05:11 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.order_details"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reject Order</title>
    </head>
    <body>
         <% String order_detail_id=request.getParameter("order_detail_id");
        
            order_details w= new order_details();
            w.setOrder_detail_id(order_detail_id);
            w.reject();
            //out.println("status modified");
            response.sendRedirect("merchantorders.jsp");
            %>
    </body>
</html>
