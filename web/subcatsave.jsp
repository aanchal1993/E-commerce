<%-- 
    Document   : subcatsave
    Created on : 11 May, 2016, 1:09:27 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.subcategory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="admin.css" rel="stylesheet" type="text/css">
       
        <title>Sub-Category</title>
    </head>
    <body>
        <%

            String catcode, subcatcode, subcatname;
            catcode = request.getParameter("catcode");
            subcatcode = request.getParameter("subcatcode");
            subcatname = request.getParameter("subcatname");

            subcategory x = new subcategory();
            x.setCatcode(catcode);

            x.setSubcatcode(subcatcode);
            x.setSubcatname(subcatname);
            x.save();
            response.sendRedirect("showsubcategory.jsp");

        %> 



    </body>
</html>
