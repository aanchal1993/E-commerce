<%-- 
    Document   : deletebranddata
    Created on : 11 May, 2016, 9:29:22 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.brand"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">
        <title>Delete Brand</title>
    </head>
    <body>
            <%
              String bcode;
              bcode=request.getParameter("bcode");
              
              brand x=new brand();
              x.setBcode(bcode);
              x.delete();
             response.sendRedirect("showbrand.jsp");
              %>        
                 
<!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->

    </body>
</html>
