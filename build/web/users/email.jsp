<%@page import="projbeans.MailFunctions"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    HttpSession q = request.getSession(true);
    String userid = (String) q.getAttribute("userid");
    System.out.println("USERIDDDD"+userid);

    String str = "jdbc:oracle:thin:@localhost:1521:";
    Class.forName("oracle.jdbc.OracleDriver");
    String email="";

    Connection con = DriverManager.getConnection(str, "shopping", "123456");

    String SQL = "select email from users where userid=?";
    PreparedStatement ps = con.prepareStatement(SQL);
    ps.setString(1, userid);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
        email = rs.getString("email");
    }
    
    String orderid="",address="";
    String SQL1 = "select orderid,address from orders where userid=? order by orderid desc";
    PreparedStatement ps1 = con.prepareStatement(SQL1);
    ps1.setString(1, userid);
    ResultSet rs1 = ps1.executeQuery();
    if (rs1.next()) {
        orderid = rs1.getString("orderid");
        address=rs1.getString("address");
    }
    
    String subject=request.getParameter("subject");
    String message="Hello !! Your Order has been successfully placed. Your Order Id is: "+orderid;
    String sender="Aanchal";  
    System.out.println("EMAILLLLLLL"+email);
    MailFunctions.msgSend(sender,email, subject, message);
    
    

%>

<body>

        <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">
            <tr>
                <td height="120px">
                    <%                        PrintWriter p1 = response.getWriter();
                        HttpSession q1 = request.getSession(true);
                        String user = (String) q1.getAttribute("username");

                        if (user == null) {
                    %>
                    <!-- Top Menu starts-->
                    <%@include file = "header_visitor.jsp"%>
                    <!-- Top Menu ends --> 
                    <%
                    } else {
                    %>
                    <!-- Top Menu starts -->
                    <%@include file="header_user.jsp" %>
                    <!-- Top Menu ends --> 
                    <%
                        }
                    %>
                </td>
            </tr>
            <!-- Top Menu starts -->
            <%@include file="topmenu.jsp" %>
            <!-- Top Menu ends -->
            <tr>
                <td height="300px" valgin="top">
                    <table border="0" width="100%" cellpadding="0" cellspacing="0" >	<tr>		
                            <td height="300px" width="140px" valign="top" align="center" class="sideMenuContainer">

                                <!-- Side Menu starts  height="300px" -->
                                <%@include file="sidemenu.jsp" %>
                                <!-- Side Menu Ends-->

                            </td>


                            <!--------------------------------------------------- slider starts ------------------------------------------------------->
                            <td align="center" >

                                <table border="0" cellspacing="2" cellpadding="2" align="center"  class="formdata">

                                    <tr>
                                        <td><u>Email Successfully Sent !!</u></td>
                                </tr>
                                
                                <br>
                                <br>
                                <tr>
                                    <td>
                                    <b><a href="user_orders.jsp">Click Here to view your previous orders</a></b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <form action="email.jsp">
                                            <p>Click here to get the order details!!
                                            <input type="submit" value="Email Me">
                                            </p>
                                    </form>
                                    </td>
                                </tr>
                                    

                    </table>

                </td>
                <!------------------------------------------------------- slider ends ---------------------------------------------------->

            </tr>
            <tr><td class="content">&nbsp;</td></tr>
        </table>
    </td>
</tr>


<tr>
    <!-- Footer starts -->
    <%@include file="footer.jsp" %>
    <!-- Footer ends -->
</tr>



</table>


</body>
</html>