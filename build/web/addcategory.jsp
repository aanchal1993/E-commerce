<%-- 
    Document   : addcategory
    Created on : 10 May, 2016, 2:02:34 PM
    Author     : DELL LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category</title>
        <link href="admin.css" rel="stylesheet" type="text/css">

    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->

        <div align="center" class="bg">
            <table width="300" border="0" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
                <tr>

                    <td>
                        <form action="catsave.jsp" method="post">
                            <table>
                                <tr>
                                    <td><u>Add Category</u></td>
                                </tr>

                                <tr>
                                    <td>

                                        <p>
                                            Category Name<br>
                                            <input type="text" name="catname" placeholder="enter category's name">
                                        </p>
                                        <p align="center">
                                            <input type="submit" value="Save" class="submit_btn"> 
                                            <input type="reset" value="Reset" class="submit_btn"> 
                                        </p>
                                    </td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td  align="right">
                                        <img src="imgs/addCategory.jpg" width="60" title='add merchant'>
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
