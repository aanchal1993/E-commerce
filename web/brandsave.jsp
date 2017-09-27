<%-- 
    Document   : brandsave
    Created on : 11 May, 2016, 8:35:48 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.brand"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">
        <title>Add Brand</title>
    </head>
    <body>
                <%
            String bname;
            bname = request.getParameter("bname");

            brand x = new brand();
            x.setBname(bname);
            x.save();
            response.sendRedirect("showbrand.jsp");

        %>        

    </body>
</html>
