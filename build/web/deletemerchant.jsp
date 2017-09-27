<%-- 
    Document   : deletemerchant
    Created on : 12 May, 2016, 1:34:42 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css">

        <title>Delete Merchant</title>
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
            <table width="300" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
                <tr>

                    <td>
                        <form action="deletemerchantdata.jsp" method="post">
                            <table>
                                <tr>
                                    <td><u>Delete Merchant</u></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Merchant Id<br>
                                            <input type="text" name="m_id" placeholder="enter merchant's id" >
                                        </p>
                                        <p>
                                            <input type="submit" value="Update" class="submit_btn">
                                            <input type="reset" value="Reset" class="submit_btn"> 
                                        </p>
                                    </td>
                                    <td align="right" >
                                        <img src="imgs/deleteMerchant.jpg" width="60" title="Delete Merchant">
                                    </td>
                                </tr>
                            </table>
                        </form>


                    </td>
                </tr>
            </table>
        </div>
        <!-- Footer Starts -->
        <%@include file="footer.jsp" %>
        <!-- Footer Ends -->
    </body>
</html>

