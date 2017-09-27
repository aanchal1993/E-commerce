<%-- 
    Document   : adduser
    Created on : 14 May, 2016, 9:37:48 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn Form</title>
    </head>
    <body>
        <%
            String name,username,password,address,email,unumber,gender;
            name = request.getParameter("name");
            username = request.getParameter("username");
            password = request.getParameter("password");
            address = request.getParameter("address");
            email = request.getParameter("email");
            unumber = request.getParameter("unumber");
            gender = request.getParameter("gender");
            
            
//userid,name,username,password,email,address,gender,unumber
            users x = new users();
            x.setName(name);
            x.setUsername(username);
            x.setPassword(password);
            x.setAddress(address);
            x.setEmail(email);
            x.setGender(gender);
            x.setUnumber(unumber);
            
            System.out.println(name+','+username+','+password+','+email+','+address+','+gender+','+unumber);
            
            x.save();
            response.sendRedirect("login.jsp");

        %>
    </body>
</html>
