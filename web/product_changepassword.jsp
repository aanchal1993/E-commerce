<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Change Password</title>

        <link href="products.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <script>


            $(document).ready(
                    function() {

                        $("#f1").validate(
                                {
                                    rules:
                                            {
                                                password1:
                                                        {
                                                            equalTo: "#password"
                                                        }
                                            },
                                    messages:
                                            {
                                                password:
                                                        {
                                                            required: "Please fill password",
                                                            minlength: "At least 6 characters",
                                                            maxlength: "Maximum 10 characters"
                                                        },
                                                password1:
                                                        {
                                                            equalTo: "Passwords does not match"
                                                        }
                                            }
                                }
                        );

                    });

        </script>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="product_header.jsp" %>
        <!-- Header Ends -->
         <div align="center" class="bg">
        <table cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>

                <td>
                    <form name="f1" id="f1" action="product_updatepassword.jsp" method="post">
                        <table> 
                            <tr>
                                <td><u>Change Password</u></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        Username:<br>
                                        <input type="text" value ="<%=username%>" name ="username" readonly class="required">

                                    </p>

                                    <p>
                                        New Password:<br>
                                        <input type="password" name="password" id="password" class="required">
                                    </p>

                                    <p>
                                        Confirm Password:<br>
                                        <input type="password" name="password1" id="password1" class="required" >
                                    </p>

                                    <p>
                                            <input type="submit" value="Save" class="submit_btn">
                                            <input type="reset" value="Reset" class="submit_btn">
                                        </p>
                                    </td>
                                    <td align="right">
                                    <img src="imgs/changepwrd.jpg" width="100">
                                </td>
                            </tr>
                        </table>
                    </form>
                </td></tr>
        </table>
         </div>
        <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->
    </body>
</html>



