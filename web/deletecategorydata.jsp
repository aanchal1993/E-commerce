<%@page import="projbeans.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <!-- Header Starts -->
        <%
              String catcode;
              catcode=request.getParameter("catcode");
              //out.println(catcode);
              category x=new category();
              x.setCatcode(catcode);
              x.delete();
             response.sendRedirect("showcategory.jsp");
              %>        
                 


    </body>
</html>
