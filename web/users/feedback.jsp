<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>Feedback Form</title>
        <script>
            <%@include file="javascript.js" %>
        </script>
    </head>
    <body>
        <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">
            <tr>
                <td height="120px">
                    <%                        PrintWriter p1 = response.getWriter();
                        HttpSession q1 = request.getSession(true);
                        String user = (String) q1.getAttribute("username");
                        String userid = (String) q1.getAttribute("userid");
                        System.out.println("userid" + userid);

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

            <tr><td>

                    <table  border="0" align="center" width="50%">
                        <tr><td>
                                <table  border="0" align="center">
                                    <tr><td>
                                            <form action="savefeedback.jsp" method="post" class="formdata">
                                                <p>
                                                <u> FeedBack Form</u>
                                                </p>
                                                
                                                <p>
                                                    Name<br>
                                                    <input type="text" name ="name" id="name" size="50" placeholder="enter your name" required="required">
                                                </p>
                                                <p>
                                                    User Id<br>
                                                    <input type="text" name ="id" id="name" value="<%=userid%>" size="50" readonly>
                                                </p>
                                                <p>
                                                    Suggestion<br>
                                                    <textarea name ="suggestion" rows="4" cols="46" placeholder="enter your valuable suggestion"></textarea>
                                                </p>
                                                <p>
                                                    Email Id<br>
                                                    <input type="text" name ="email" id="email" size="50" placeholder="your@email.com" required="required" class="email">
                                                </p>
                                                <p>
                                                    Contact Number<br>
                                                    <input type="text" name ="number" id="unumber" size="50" placeholder="enter your contact number" maxlength="10" class="digits" required="required">
                                                </p>
                                                <p>
                                                    Rate your experience with us<br>
                                                    <input type="radio" value="1"  name ="rating" checked><span>Excellent</span>
                                                    <input type="radio" value="2" name ="rating"><span>Very Good</span>
                                                    <input type="radio" value="3"  name ="rating"><span>Good</span>
                                                    <input type="radio" value="4" name ="rating"><span>Fair</span>
                                                    <input type="radio" value="5" name ="rating"><span>Poor</span>
                                                    <input type="radio" value="6" name ="rating"><span>Very Poor</span>
                                                </p>


                                                <br>
                                                <p align="center">
                                                    <input type="submit" value="Submit" id="x1" class="submit"> 
                                                    <input type="reset" name = "Reset" value = "Reset" class="submit"></p>

                                            </form>
                                        </td></tr>
                                </table>
                            </td></tr>
                    </table>
                </td></tr>
         <tr>
                <!-- Footer starts -->
                <%@include file="footer.jsp" %>
                <!-- Footer ends -->
            </tr>



        </table>