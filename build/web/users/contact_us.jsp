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

                            <td  valign="top" align="center">
                                <!--------------------------------------------------- slider starts ------------------------------------------------------->
                                <table class="content_table">
                                    <tr>
                                        <td class="line">
                                            <div> <img src="images/gmail.png" title="E-mail" align="absmiddle"> Do mail us in case of any query. </div>
                                            <a href="mailto:aanchal.sharma.punj@gmail.com?subject=Query">Email Us</a>
                                           
                                        </td>
                                        
                                        <td class="line">
                                            
                                            <div><img src="images/twitter.png" title="twitter" align="absmiddle"> Follow us to interact, chat and share our ideas on Twitter.</div>
                                            <a href="http://twitter.com/flipkart?lang=en">Follow us</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="line">
                                            <div><img src="images/facebook.png" title="facebook" align="absmiddle"> Like our page and send us message directly.</div>
                                            <a href="https://www.facebook.com/pages/aanchal.sharma.395"> Like Our Page</a>
                                        </td>
                                        <td class="line">
                                            
                                            <div><img src="images/linkedin.png" title="linkedin" align="absmiddle"> Like our page and send us message directly.</div>
                                            <a href="https://www.linkedin.com/in/aanchal-sharma-1361babb?trk=nav_responsive_tab_profile_pic"> Be in Touch</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  colspan="2" class="line">
                                            <div><img src="images/skype.jpg" title="skype" align="absmiddle">Call us or chat with us on Skype whenever you like. Do not hesitate ! </div>
                                            <a href="skype:aanchal_sharma93?call"> Call Us</a>
                                        </td>
                                    </tr>
                                </table>




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