<%-- 
    Document   : validatelogin
    Created on : 15 May, 2016, 4:38:17 PM
    Author     : DELL LAPTOP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
    </head>
    <body>
       <%  try {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                //String r1 = request.getParameter("r1");

                HttpSession k = request.getSession(true);

                String str = "jdbc:oracle:thin:@localhost:1521:";
                Class.forName("oracle.jdbc.OracleDriver");

                Connection con = DriverManager.getConnection(str, "shopping", "123456");

               String sql = "select * from users where username=? and password=?";
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1, username);
                    ps.setString(2, password);
                    
                    String userid;
                    ResultSet rs = ps.executeQuery();
                    if (rs.next()) {
                        userid=rs.getString("userid");
                        con.close();
                        k.setAttribute("username", username);
                        k.setAttribute("userid", userid);
                        response.sendRedirect("main.jsp");

                    } else {
                        con.close();
                        response.sendRedirect("loginerror.html");
                    }
                
            } catch (Exception e) {

            }
        %>
    </body>
</html>
