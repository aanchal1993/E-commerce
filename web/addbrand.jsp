<%-- 
    Document   : addbrand
    Created on : 11 May, 2016, 8:32:05 PM
    Author     : DELL LAPTOP
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Brands</title>
        <link href="admin.css" rel="stylesheet" type="text/css">
        <style>
            .bg1{
                background: url(imgs/purple.jpg); 
            }
        </style>

    </head>
    <body>

        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
            <table  cellspacing="2" cellpadding="2"  align="center"  class="main_content_table">
                <tr>

                    <td>
                        <form action="brandsave.jsp" method="post">
                            <table>
                                <tr>
                                    <td><u>Add Brands</u></td>
                                </tr>

                                <tr>

                                    <td>
                                        <p>
                                            Brand Name:<br>
                                            <input type="text" name="bname">
                                        </p>
                                        <p>
                                            <input type="submit" value="Add" class="submit_btn">
                                            <input type="reset" value="Reset" class="submit_btn"> 
                                        </p>
                                    </td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td  align="right">
                                        <img src="imgs/addBrand.png" width="60" title='add merchant'>
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
