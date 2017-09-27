<%-- 
    Document   : product_updatepassword
    Created on : 12 May, 2016, 10:52:29 PM
    Author     : DELL LAPTOP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">
        <title>Update Password</title>
    </head>
    <body>
        <%  try {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String password1 = request.getParameter("password1");

                HttpSession k = request.getSession(true);

                String str = "jdbc:oracle:thin:@localhost:1521:";
                Class.forName("oracle.jdbc.OracleDriver");

                Connection con = DriverManager.getConnection(str, "shopping", "123456");
                    
                String sql = "update merchant set m_password=? where m_username=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, password1);
                ps.setString(2, username);

                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    con.close();
                    k.setAttribute("username", username);
                    response.sendRedirect("merchant.jsp");

                } else {
                    con.close();
                    response.sendRedirect("loginerror.html");
                }
            } catch (Exception e) {

            }
        %>
    </body>
</html>
