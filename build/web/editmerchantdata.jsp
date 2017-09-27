<%-- 
    Document   : editmerchantdata
    Created on : 12 May, 2016, 1:07:48 PM
    Author     : DELL LAPTOP
--%>

<%@page import="projbeans.merchant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="admin.css" rel="stylesheet" type="text/css">
       
        <title>Update Merchant</title>
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
            <table width="500" cellspacing="2" cellpadding="2" align="center" class="main_content_table">

                <tr>
                    <td align="center">
                        <%                            String m_id = request.getParameter("m_id");
                            merchant x = new merchant();
                            x.setM_id(m_id);
                            boolean b = x.search();
                            if (b == false)
                                out.println("No record found");
                            else {

                                String m_name, m_username, m_password, m_email, m_number, m_address, m_pincode;
                                m_name = x.getM_name();
                                m_username = x.getM_username();
                                m_password = x.getM_password();
                                m_email = x.getM_email();
                                m_number = x.getM_number();
                                m_address = x.getM_address();
                                m_pincode = x.getM_pincode();
                                ;


                        %>  
<form name="f1" id="f1" action="modifymerchantsave.jsp" method="post">
                            <table>
                            <tr>
                                <td><u>Update Merchant Details</u></td>
                            </tr>

                            <tr>

                                <td>
                                    Id<br>
                                    <input type="text" name="m_id" size='40' class="required" value="<%=m_id%>" readonly>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Name:<br>
                                    <input type="text" name="m_name"  size='40' class="required" value="<%=m_name%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Username:<br>
                                    <input type="text" name="m_username" size='40' class="required" value="<%=m_username%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Password:<br>
                                    <input type="password" name="m_password" size='40' class="required" value="<%=m_password%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email Id:<br>
                                    <input type="text" name="m_email" size='40' class="required" value="<%=m_email%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Contact No:<br>
                                    <input type="text" id="m_number" size='40' name="m_number" class="required digits" value="<%=m_number%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Address:<br>
                                    <input type="text" name="m_address" size='40' class="required" value="<%=m_address%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Pincode:<br>
                                    <input type="text" name="m_pincode"  size='40' class="required digits" value="<%=m_pincode%>">
                                </td>
                            </tr>

                            <tr> 
                                <td align="center">
                                    <br>
                                    <input type="submit" value="Update" class="submit_btn">
                                     <input type="reset" value="Reset" class="submit_btn"> 
                                </td>
                            </tr>
                        </table>
                    </form>
                        
                                

                        <%
                            }
                        %>

                    </td>
                </tr>
            </table>

</div>


</body>
</html>