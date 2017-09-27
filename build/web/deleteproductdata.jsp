<%-- 
    Document   : deleteproductdata
    Created on : 13 May, 2016, 2:57:38 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String p_id;
            p_id = request.getParameter("p_id");
            //out.println()
            products x = new products();
            x.setP_id(p_id);
            x.delete();
            response.sendRedirect("showproduct.jsp");
        %>  
    </body>
</html>
