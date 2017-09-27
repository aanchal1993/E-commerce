   <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
      try {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String chk = request.getParameter("chk");
                System.out.println("CHKKKKKKKKKK "+chk);
                 HttpSession k = request.getSession(true);
                String str = "jdbc:oracle:thin:@localhost:1521:";
                Class.forName("oracle.jdbc.OracleDriver");
                Connection con = DriverManager.getConnection(str, "shopping", "123456");
                if(chk.equals("admin")){
                String sql = "select * from admin where username=? and password=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2, password);
                    ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    con.close();
                    k.setAttribute("username", username);
                    out.println("1");
                } else {
                    out.println("0");
                }
                }
                if(chk.equals("merchant")){
                String m_username = request.getParameter("username");
                String m_password = request.getParameter("password");
                String m_id="";
                String sql1 = "select * from merchant where m_username=? and m_password=?";
                PreparedStatement ps1 = con.prepareStatement(sql1);
                ps1.setString(1, m_username);
                ps1.setString(2, m_password);
                ResultSet rs1 = ps1.executeQuery();
                if (rs1.next()) {
                    m_id=rs1.getString("m_id");
                    con.close();
                    k.setAttribute("username", m_username);
                    k.setAttribute("m_id", m_id);
                    out.println("2");
                } else {
                    out.println("0");
                }
                }
           } catch (Exception e) {

            }
        %>
