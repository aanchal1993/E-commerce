<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Category</title>

        <link href="admin.css" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
<div align="center" class="bg">
    <table width="350" border="0" cellspacing="2" cellpadding="2" align="center" class="main_content_table">
        <tr>

                <td>
                    <form action="deletecategorydata.jsp" method="post">
                        <table>
                            <tr>
                                <td><u>Delete Category</u></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>Category Code<br>
                                    <input type="text" name="catcode" placeholder="enter category code" class="required">
                                    </p>
                                    <p align='center'>
                                    <input type="submit" value="Delete" class='submit_btn'>
                                    <input type="reset" value="reset" class='submit_btn'>
                                    </p>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td align="right">
                                        <img src="imgs/deleteCategory.jpg" width="60">
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