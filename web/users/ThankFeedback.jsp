<%@page import="projbeans.products"%>
<%@page import="java.io.PrintWriter"%>
<html>

    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>
            Search Product
        </title>

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


                            <!--------------------------------------------------- slider starts ------------------------------------------------------->
                            <td align="center" >

                                <table border="0" cellspacing="2" cellpadding="2" align="center"  class="formdata">
                                    
                                    <tr>
                                        <td valign="top"><u>Your FeedBack is Precious to us!!</u></td>
                                </tr>
                        <tr>
                            <td>We will help to solve the related problems via your given email address </td>
                        </tr>
                         <br>
                        <br>
                         <br>
                        <br>
                        <tr>
                        <td><u><a href="contact_us.jsp">For other details, feel free to contact</a></u></td>
                                </tr>
            </tr>

        </table>


    </td>
    <!-------------------------------------- slider ends ---------------------------------------------------->

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