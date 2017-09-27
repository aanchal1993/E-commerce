
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
                String p_image = request.getParameter("p_image");
                String p_id = request.getParameter("p_id");
                String str = "jdbc:oracle:thin:@localhost:1521:";
                Class.forName("oracle.jdbc.OracleDriver");

                Connection con = DriverManager.getConnection(str, "shopping", "123456");
        //p_id="",subcatcode="",m_id="",bcode="",p_name="",p_price="",p_description="",p_status="",p_image="",p_image1="",p_quantity="";

                String SQL = "select p_image from products where p_id=?";
                PreparedStatement ps = con.prepareStatement(SQL);
                ps.setString(1, p_id);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    p_image = rs.getString("p_image");
                }
                con.close();
                
response.sendRedirect("a3.jsp");
            %>
    </body>
</html>
