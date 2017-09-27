<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>LogIn Form</title>
        <script>
            <%@include file="javascript.js" %>
        </script>
    </head>
    <body>
        <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">

            <!-- Header starts -->
            <%@include file="header_visitor.jsp" %>
            <!-- Header Ends -->
            <tr>
                <td>

                    <table  border="0" align="center" width="50%">
                        <tr><td>
                                <table  border="0" align="center">
                                    <tr><td>
                                            <form action="validatelogin.jsp" method="post" class="formdata"> 
                                                <p>
                                                <u> Login Form:</u>
                                                </p>
                                                <br>
                                                <p>
                                                    Username:<br>
                                                    <input type="text" name ="username" id="username" size="50" placeholder="enter first username" required="required">
                                                </p>
                                                <p>
                                                    Password:<br>
                                                    <input type="password" name ="password" id="password" size="50" placeholder="enter password" required="required">
                                                </p>

                                                <br>
                                                <p align="center">
                                                    <input type="submit" value="Login" id="x1" class="submit"> 
                                                    <input type="reset" name = "Reset" value = "Reset" class="submit"></p>

                                            </form>
                                        </td></tr>
                                </table>
                            </td></tr>
                    </table>
                </td>
            </tr>
           
            <tr>
                <td>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    
                    <div  align="center" style="color:#fff;font-size:12px;font-weight:bold;padding-top:5px;padding-bottom:5px;background-color:#1983B3;">

                    Shopping.com Copyright 2016 ©  All Rights Reserved
                    </div>
                </td>
            </tr>

        </table>


    </body>
</html>