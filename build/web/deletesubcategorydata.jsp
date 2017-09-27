<%-- 
    Document   : deletesubcategorydata
    Created on : 11 May, 2016, 11:01:12 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.subcategory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              String subcatcode;
              subcatcode=request.getParameter("subcatcode");
              
              subcategory x=new subcategory();
              x.setSubcatcode(subcatcode);
              x.delete();
             response.sendRedirect("showsubcategory.jsp");
              %>        
                 
    </body>
</html>
