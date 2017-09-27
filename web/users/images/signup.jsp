<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>Sign Up</title>
        <script>
            <%@include file="javascript.js" %>
        </script>
    </head>
    <body>
        <table border="2" width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">

            <!-- Header starts -->
            <%@include file="header.jsp" %>
            <!-- Header Ends -->
            <table align="center">
                <tr><td>
                        <form action="adduser.jsp" method="post">
                            <p>
                                Name:<br>
                                <input type="text" name ="name" id="name">
                            </p>
                            <p>
                                Username:<br>
                                <input type="text" name ="username" id="username">
                            </p>
                            <p>
                                Password:<br>
                                <input type="password" name ="password" id="password">
                            </p>
                            <p>
                                Address:<br>
                                <textarea></textarea>
                                <input type="text" name ="address" id="address">
                            </p>
                            <p>
                                Email Id:<br>
                                <input type="text" name ="email" id="email">
                            </p>
                            <p>
                                Contact Number:<br>
                                <input type="text" name ="number" id="number">
                            </p>
                            <p>
                                Gender:
                                <input type="radio" value="male"  name ="r1" checked>Male
                                <input type="radio" value="female" name ="r1">Female

                            </p>
                            <p><input type="submit" value="Login" id="x1"></p>    

                        </form>
                    </td></tr>
            </table>
        </table>
    </body>
</html>
