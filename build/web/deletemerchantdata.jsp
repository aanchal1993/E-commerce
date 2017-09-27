<%-- 
    Document   : deletemerchantdata
    Created on : 12 May, 2016, 1:31:03 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.merchant"%>
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
              String m_id;
              m_id=request.getParameter("m_id");
              
              merchant x=new merchant();
              x.setM_id(m_id);
              x.delete();
             response.sendRedirect("showmerchant.jsp");
              %>   
    </body>
</html>
