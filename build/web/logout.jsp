<%-- 
    Document   : logout
    Created on : 10 May, 2016, 2:02:07 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">
        <title>LogOut</title>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->

        <%            
        q.removeAttribute("username");
        q.invalidate();
        response.sendRedirect("index.html");
        %>
    </body>
</html>
