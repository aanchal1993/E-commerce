<%-- 
    Document   : merchantsave
    Created on : 12 May, 2016, 12:46:08 PM
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
            String m_id, m_name, m_username, m_password, m_email, m_number, m_address, m_pincode;
            m_id = request.getParameter("m_id");
            m_name = request.getParameter("m_name");
            m_username = request.getParameter("m_username");
            m_password = request.getParameter("m_password");
            m_email = request.getParameter("m_email");
            m_number = request.getParameter("m_number");
            m_address = request.getParameter("m_address");
            m_pincode = request.getParameter("m_pincode");
            
            
            merchant x = new merchant();
            x.setM_id(m_id);
            x.setM_name(m_name);
            x.setM_username(m_username);
            x.setM_password(m_password);
            x.setM_email(m_email);
            x.setM_number(m_number);
            x.setM_address(m_address);
            x.setM_pincode(m_pincode);
            
            x.save();
            response.sendRedirect("showmerchant.jsp");

        %>   
    </body>
</html>
