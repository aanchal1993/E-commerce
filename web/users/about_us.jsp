<%@page import="java.io.PrintWriter"%>
<html>

    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>Main Page</title>
        <script>
            <%@include file="javascript.js" %>
        </script>
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>

    </head>

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
                            
                            <td  valign="top" align="left" >
                            <!--------------------------------------------------- slider starts ------------------------------------------------------->
                            
                            <table ><tr>
                                    <td></td>
                                
                                    <td ><p> 
                                <br>This part of web application deals with the Customer and provide him the facility to buy and pay 
                                for products online. The system should also provide flexibility to configure its components without much extra effort 
                                and the system should have clearly defined interfaces. The system must reflect the structure of the application it is 
                                going to server with well-defined structure processes. In addition, the system must be able to cope with well-defined 
                                structure processes.The success of the system depends largely on how accurately 
                                a problem is defined, thoroughly investigated and properly carried out through the 
                                choice of solution. So one must know what the problem is before it can be solved. 
                                The basis for candidate system is recognition of a need for improving an information system or a 
                                procedure. This need leads to a preliminary survey or initial investigation to determine whether an alternative 
                                system can solve the problem or not. The system should satisfy the standards and requirements of good software.</p>
                            <br>
                            </td>
                                </tr>
                                <tr><td colspan="2" align="center"><img title="Shopping.com" src="images/e-shop.jpg" header="Shopping.com"></td></tr>
                                
                                <tr><td colspan="2" align="center">Shopping Website</td></tr></table>
                            <!------------------------------------------------------- slider ends ---------------------------------------------------->
                            </td>
                            
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