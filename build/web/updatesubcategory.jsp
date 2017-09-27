<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbeans.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="admin.css" rel="stylesheet" type="text/css">

    </head>
    <body>

        <!-- Header Starts -->
        <%@include file="admin_header.jsp" %>
        <!-- Header Ends -->
        <div align="center" class="bg">
            <table  cellspacing="2" cellpadding="2" align="center" class="main_content_table">

                <tr>

                    <td>
                        <form action="editsubcategorydata.jsp" method="post">
                            <table>
                                <tr>
                                    <td><u>Update SubCategory</u></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Sub-Category Code:<br>
                                            <input type="text" name="catcode" size="30" placeholder="enter sub-category code">
                                        </p>
                                        <p align='center'>
                                        <input type="submit" value="Update" class="submit_btn">
                                        <input type="reset" value="reset" class="submit_btn">
                                    </p>
                                </td>
                                <td align="right">
                                    <img src="imgs/update.jpg" width="60">
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
