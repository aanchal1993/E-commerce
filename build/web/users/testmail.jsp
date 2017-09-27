<%-- 
    Document   : testmail
    Created on : Mar 29, 2016, 1:11:25 PM
    Author     : sunny
--%>

<%@page import="mybeans.MailFunctions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
  String to=request.getParameter("to");
  String subject=request.getParameter("subject");
  String message=request.getParameter("message");
  String sender="Real Info";  
  MailFunctions.msgSend(sender, to, subject, message);
    
    %>
    </body>
</html>
