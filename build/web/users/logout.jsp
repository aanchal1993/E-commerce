<%-- 
    Document   : logout
    Created on : 16 May, 2016, 11:53:40 AM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="header_user.jsp" %>
        <!-- Header Ends -->

        <%            
        q.removeAttribute("username");
        q.invalidate();
        response.sendRedirect("main.jsp");
        %>
    </body>
</html>
