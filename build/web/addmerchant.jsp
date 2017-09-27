<%-- 
    Document   : addmerchant
    Created on : 12 May, 2016, 11:34:51 AM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Merchant</title>
         <link href="admin.css" rel="stylesheet" type="text/css">
         <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>

        <script>

            $(document).ready(
                    function() {

                        $("#f1").validate(
                                {
                                    rules:
                                            {
                                                m_name:
                                                        {
                                                            minlength: 5,
                                                            maxlength: 20
                                                        },
                                                m_pincode:
                                                        {
                                                            minlength: 5,
                                                            maxlength: 6
                                                        },
                                                m_email:
                                                        {
                                                            required: true,
                                                            email: true
                                                        },
                                                m_number:
                                                        {
                                                            minlength: 10,
                                                            maxlength: 12
                                                        },
                                                m_password:
                                                        {
                                                            minlength: 5,
                                                            maxlength: 20
                                                        },
                                                 m_username:
                                                        {
                                                            minlength: 5,
                                                            maxlength: 20
                                                        }

                                            },
                                    messages:
                                            {
                                                
                                                m_name:
                                                        {
                                                            required: "Please fill Merchant's Name",
                                                            minlength:"At least 5 characters",
                                                            maxlength:"Maximum 20 characters"
                                                        },
                                                 m_username:
                                                        {
                                                            required:"Please fill username",
                                                            minlength:"At least 5 characters",
                                                            maxlength:"Maximum 20 characters"
                                                        },
                                                 m_password:
                                                        {
                                                            required: "Please fill password",
                                                            minlength: "Password too short",
                                                            maxlength:"Maximum 20 characters"
                                                        },
                                                 m_number:
                                                        {
                                                            required: "Please fill valid Contact Number"
                                                        },
                                                m_address:
                                                        {
                                                            required: "Please fill merchant's address"
                                                        },
                                                m_pincode:
                                                        {
                                                            minlength: "Pincode too short"
                                                        }
                                }
                            }
                        );


                    });

        </script> 



    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->

        <div align="center" class="bg">
        <table border="0" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
            <tr>

                <td>
                    <form name="f1" id="f1" action="merchantsave.jsp" method="post">
                        <table>
                            <tr>
                                <td><u>Add Merchant</u></td>
                            </tr>

                            <tr>

                                <td>
                                    
                                    <input type="hidden" name="m_id" class="required">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Name:<br>
                                    <input type="text" name="m_name"  class="required" size='40' placeholder="enter merchant's name">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Username:<br>
                                    <input type="text" name="m_username" class="required" size='40' placeholder="enter merchant's username">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Default Password:<br>
                                    <input type="password" name="m_password" class="required" size='40' placeholder="enter merchant's password">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email Id:<br>
                                    <input type="text" name="m_email" class="required" size='40' placeholder="enter merchant's email id">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Contact No:<br>
                                    <input type="text" id="m_number" name="m_number" class="required digits" size='40' placeholder="enter merchant's name">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Address:<br>
                                    <textarea name="m_address" class="required" rows="6" cols='30' placeholder="enter merchant's address">
                                    </textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Pincode:<br>
                                    <input type="text" name="m_pincode" class="required digits" size='40' placeholder="enter the pincode code">
                                </td>
                            </tr>

                            <tr> 
                                <td align="center">
                                    <br>
                                    <input type="submit" value="Save" class="submit_btn"> 
                                    <input type="reset" value="Reset" class="submit_btn"> 
                                </td>
                            </tr>
                        </table>
                    </form>
        </table>
        </div>
        <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->
    </body>


</html>
