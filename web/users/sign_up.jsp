<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="user.css" rel="stylesheet" type="text/css">
        <title>Sign Up</title>
        <script>
            <%@include file="javascript.js" %>
        </script>
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        

    </head>
    <body>
        <table width="100%" align="center" cellpadding="0" cellspacing="0" class="mainTbl">

            <!-- Header starts -->
            <%@include file="header_visitor.jsp" %>
            <!-- Header Ends -->
            <tr>
                <td>

                    <table  border="0" align="center" width="50%">
                        <tr><td>
                                <table  border="0" align="center">
                                    <tr><td>
                                            <form action="adduser.jsp" method="post" class="formdata">
                                                <p>
                                                <u> Sign-Up Form</u>
                                                </p>
                                                <br>
                                                <p>
                                                    Name:<br>
                                                    <input type="text" name ="name" id="name" size="50" placeholder="enter first name" required="required">
                                                </p>
                                                <p>
                                                    Username:<br>
                                                    <input type="text" name ="username" id="username" size="50" placeholder="enter first username" required="required">
                                                </p>
                                                <p>
                                                    Password:<br>
                                                    <input type="password" name ="password" id="password" size="50" placeholder="enter password" required="required">
                                                </p>
                                                <p>
                                                    Address:<br>
                                                    <textarea name ="address" rows="4" cols="46" placeholder="enter your mailing address"></textarea>
                                                </p>
                                                <p>
                                                    Email Id:<br>
                                                    <input type="text" name ="email" id="email" size="50" placeholder="your@email.com" required="required">
                                                </p>
                                                <p>
                                                    Contact Number:<br>
                                                    <input type="text" name ="unumber" id="unumber" size="50" placeholder="enter your contact number" required="required">
                                                </p>
                                                <p>
                                                    Gender:<br>
                                                    <input type="radio" value="male"  name ="gender" checked><span>Male</span>
                                                    <input type="radio" value="female" name ="gender"><span>Female</span>

                                                </p>
                                                <br>
                                                <p align="center">
                                                    <input type="submit" value="Submit" class="submit" id="x1"> 
                                                    <input type="Reset" name = "Reset" value = "Reset" class="submit"></p>

                                            </form>
                                        </td></tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <div  align="center" style="color:#fff;font-size:12px;font-weight:bold;padding-top:5px;padding-bottom:5px;background-color:#1983B3;">

                    Shopping.com Copyright 2016 ©  All Rights Reserved
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>